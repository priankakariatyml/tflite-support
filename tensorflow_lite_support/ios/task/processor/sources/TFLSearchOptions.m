/* Copyright 2022 The TensorFlow Authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 ==============================================================================*/
#import "tensorflow_lite_support/ios/task/processor/sources/TFLSearchOptions.h"

@implementation TFLSearchOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // maxResults will be 0 at the time of initialization. Setting it to 5 since max_results
    // defaults to 5 in search_options.proto.
    _maxResults = 5;
  }
  return self;
}

- (id)copyWithZone:(NSZone *)zone {
  TFLSearchOptions *searchOptions = [[TFLSearchOptions alloc] init];

  searchOptions.indexFile = self.indexFile;
  searchOptions.maxResults = self.maxResults;

  return searchOptions;
}

@end
