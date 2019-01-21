/**
 *
 *  DrClassMap.cc
 *  An Tao
 *  
 *  Copyright 2018, An Tao.  All rights reserved.
 *  https://github.com/an-tao/drogon
 *  Use of this source code is governed by a MIT license
 *  that can be found in the License file.
 *
 *  Drogon
 *
 */

#include <drogon/DrClassMap.h>
#include <iostream>
using namespace drogon;
//std::map <std::string,DrAllocFunc> * DrClassMap::classMap=nullptr;
//std::once_flag DrClassMap::flag;
void DrClassMap::registerClass(const std::string &className, const DrAllocFunc &func)
{
    //std::cout<<"register class:"<<className<<std::endl;

    getMap().insert(std::make_pair(className, func));
}
DrObjectBase *DrClassMap::newObject(const std::string &className)
{
    auto iter = getMap().find(className);
    if (iter != getMap().end())
    {
        return iter->second();
    }
    else
        return nullptr;
}
std::vector<std::string> DrClassMap::getAllClassName()
{
    std::vector<std::string> ret;
    for (auto const &iter : getMap())
    {
        ret.push_back(iter.first);
    }
    return ret;
}
std::unordered_map<std::string, DrAllocFunc> &DrClassMap::getMap()
{
    static std::unordered_map<std::string, DrAllocFunc> map;
    return map;
}
