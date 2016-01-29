#include <iostream>
#include <vector>
#include <fstream>
#include <cstdio>
#include <iomanip>
#include <cstdlib>
#include <cmath>
#include <climits>
#include <utility>

#define  BLOCK_SIZE     16
#define  CACHE_SIZE     1024
using namespace std;

void LRU(int blockSize, int cacheSize, char* argv[], int ass);
bool checkLRU(vector<vector<pair<unsigned long long, unsigned long long> > > &cache,int ass,unsigned long long index, unsigned long long tag, unsigned long long accessTime);
void addLRU(vector<vector<pair<unsigned long long, unsigned long long> > > &cache,int ass,unsigned long long index, unsigned long long tag, unsigned long long accessTime);
void FIFO(int blockSize, int cacheSize, char* argv[], int ass);
bool checkFIFO(vector<vector<unsigned long long> > &cache,int ass,unsigned long long index, unsigned long long tag);
void addFIFO(vector<vector<unsigned long long> > &cache,int ass,unsigned long long index, unsigned long long tag);


int main (int argc, char* argv[]) {
    
    cout << "\t\tLUR Replacement Policy" << endl;
    cout << "\t" << CACHE_SIZE 
         << "\t" << CACHE_SIZE*2
         << "\t" << CACHE_SIZE*4
         << "\t" << CACHE_SIZE*8
         << "\t" << CACHE_SIZE*16
         << endl;
         
    for(unsigned int i = 1; i <= 8; i *= 2)
    {
        cout << i << "\t";
        for(unsigned int j = 1; j <= 16; j *= 2)
        {
            LRU(BLOCK_SIZE, CACHE_SIZE*j, argv, i);
        }
        cout << endl;
    }
    
    cout << endl;
    
    cout << "\t\tFIFO Replacement Policy" << endl;
    cout << "\t" << CACHE_SIZE 
         << "\t" << CACHE_SIZE*2
         << "\t" << CACHE_SIZE*4
         << "\t" << CACHE_SIZE*8
         << "\t" << CACHE_SIZE*16
         << endl;
         
    for(unsigned int i = 1; i <= 8; i *= 2)
    {
        cout << i << "\t";
        for(unsigned int j = 1; j <= 16; j *= 2)
        {
            FIFO(BLOCK_SIZE, CACHE_SIZE*j, argv, i);
        }
        cout << endl;
    }
    
    cout << endl;
    
    return 0;
}

void LRU(int blockSize, int cacheSize, char* argv[], int ass)
{
    ifstream in(argv[1]);
    if(!in.is_open())
    {
        cerr << "Input file was not opened" << endl;
        exit(1);
    }
         
    int numBlocks = cacheSize/blockSize;
    int numIndex = numBlocks/ass;
    
    vector<vector<pair<unsigned long long, unsigned long long> > > cache;
    
    int blockOffset = log2(blockSize);
    int indexSize = log2(numIndex);
    
    unsigned long long accessTime = 0;
    
    pair<unsigned long long, unsigned long long> tPair ( ULLONG_MAX, 0 );
    vector<pair<unsigned long long, unsigned long long> > temp (ass, tPair);
    
    for(unsigned int i = 0; i < numIndex; i++)
    {
        cache.push_back(temp);
    }
    
    unsigned long long read;
    int total = 0;
    int miss = 0;
    int i = 0;
    
    while(in >> std::hex >> read)
    {
        total++;
        i++;
        unsigned long long tag = read >> (indexSize + blockOffset);
        unsigned long long index = read >> blockOffset;
        index = index & (numIndex-1);
        
        accessTime++;
        
        if(!checkLRU(cache,ass,index,tag,accessTime))
        {
            addLRU(cache,ass,index,tag,accessTime);
            miss++;
        }
    }
    
    double miss_rate = (double)miss / (double)(total);
    cout << fixed;
    cout << setprecision(2) << miss_rate * 100.0 << "\t";
}

bool checkLRU(vector<vector<pair<unsigned long long, unsigned long long> > > &cache,int ass,unsigned long long index, unsigned long long tag, unsigned long long accessTime)
{
    for(unsigned int i = 0; i < ass; i++)
    {
        if(cache.at(index).at(i).first == tag)
        {
            cache.at(index).at(i).second = accessTime;
            return true;
        }
    }
    return false;
}

void addLRU(vector<vector<pair<unsigned long long, unsigned long long> > > &cache,int ass,unsigned long long index, unsigned long long tag, unsigned long long accessTime)
{
    if(ass == 1)
    {
        cache.at(index).at(0).first = tag;
        return;
    }
    
    for(unsigned int i = 0; i < ass; i++)
    {
        if(cache.at(index).at(i).first == ULLONG_MAX)
        {
            cache.at(index).at(i).first = tag;
            cache.at(index).at(i).second = accessTime;
            return;
        }
    }
    
    unsigned long long min = ULLONG_MAX;
    int location = 0;
    for(int i = 0; i < ass; i++)
    {
        if(cache.at(index).at(i).second < min)
        {
            min = cache.at(index).at(i).second;
            location = i;
        }
    }
    
    cache.at(index).at(location).first = tag;
    cache.at(index).at(location).second = accessTime;
}

void FIFO(int blockSize, int cacheSize, char* argv[], int ass)
{
    ifstream in(argv[1]);
    if(!in.is_open())
    {
        cerr << "Input file was not opened" << endl;
        exit(1);
    }
         
    int numBlocks = cacheSize/blockSize;
    int numIndex = numBlocks/ass;
    
    vector<vector<unsigned long long> > cache;
    
    int blockOffset = log2(blockSize);
    int indexSize = log2(numIndex);
    
    vector<unsigned long long> temp (ass, ULLONG_MAX);
    
    for(unsigned int i = 0; i < numIndex; i++)
    {
        cache.push_back(temp);
    }
    
    unsigned long long read;
    int total = 0;
    int miss = 0;
    int i = 0;
    
    while(in >> std::hex >> read)
    {
        total++;
        i++;
        
        unsigned long long tag = read >> (indexSize + blockOffset);
        unsigned long long index = read >> blockOffset;
        
        index = index & (numIndex-1);
        
        if(!checkFIFO(cache,ass,index,tag))
        {
            addFIFO(cache,ass,index,tag);
            miss++;
        }
    }
    
    double miss_rate = (double)miss / (double)(total);
    cout << fixed;
    cout << setprecision(2) << miss_rate * 100.0 << "\t";
}

bool checkFIFO(vector<vector<unsigned long long> > &cache,int ass,unsigned long long index, unsigned long long tag)
{
    for(unsigned int i = 0; i < ass; i++)
    {
        if(cache.at(index).at(i) == tag)
        {
            return true;
        }
    }
    return false;
}

void addFIFO(vector<vector<unsigned long long> > &cache,int ass,unsigned long long index, unsigned long long tag)
{
    if(ass == 1)
    {
        cache.at(index).at(0) = tag;
        return;
    }
    
    for(unsigned int i = 0; i < ass; i++)
    {
        if(cache.at(index).at(i) == ULLONG_MAX)
        {
            cache.at(index).at(i) = tag;
            return;
        }
    }
    
    for(int i = 0; i < ass-1; i++)
    {
        cache.at(index).at(i) = cache.at(index).at(i+1);
    }
    
    cache.at(index).at(ass-1) = tag;
}
