//
//  BYTHeader.h
//  GenericFramework
//
//  Created by chengxin on 16/1/11.
//  Copyright © 2016年 Grant. All rights reserved.
//

#ifndef BYTHeader_h
#define BYTHeader_h



#import "BYTCategory.h"
#import "PodHeader.h"



#endif /* BYTHeader_h */








/*
 * Appcode 快照


<template name="mark" value="#pragma mark - " toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="markd" value="#pragma mark - ⊂((・猿・))⊃ Delegate" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="marklifecycle" value="#pragma mark - ⊂((・猿・))⊃ Lifecycle" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="markm" value="#pragma mark - ⊂((・猿・))⊃ LifeCycle&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ Override&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ SetupData&#10;&#10;- (void)setupData {&#10;&#10;}&#10;&#10;#pragma mark - ⊂((・猿・))⊃ SetupUI&#10;&#10;- (void)setupUI {&#10;&#10;}&#10;&#10;#pragma mark - ⊂((・猿・))⊃ Set_Get&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ Action&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ WebService&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ Delegate&#10;&#10;&#10;#pragma mark - ⊂((・猿・))⊃ EnterVC&#10;&#10;" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="markn" value="#pragma mark - ⊂((・猿・))⊃ Notification&#10;&#10;- (void)addObserver {&#10;&#10;}&#10;&#10;- (void)removeObserver {&#10;    [[NSNotificationCenter defaultCenter] removeObserver:self];&#10;}&#10;" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="marks" value="*/
/********** # **********//*
" description="" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="c" value="true" />
        <option name="objc" value="true" />
        <option name="OC_DECLARATION" value="true" />
        <option name="OC_STATEMENT" value="true" />
        <option name="OC_EXPRESSION" value="true" />
        </context>
</template>
<template name="marksetup" value="#pragma mark - ⊂((・猿・))⊃ SetupData&#10;&#10;- (void)setupData {&#10;&#10;}&#10;&#10;#pragma mark - ⊂((・猿・))⊃ SetupUI&#10;&#10;- (void)setupUI {&#10;&#10;}" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="markss" value="#pragma mark - */
/********** # **********//*
&#10;" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION_CPP" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="marksss" value="#pragma mark */
/*** # ***//*
" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION_CPP" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="markt" value="#pragma mark - UITableViewDataSource&#10;&#10;&#10;#pragma mark - UITableViewDelegate" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="marky" value="#pragma mark - ⊂((・猿・))⊃ " toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="passign" value="@property (nonatomic, assign)  " toReformat="false" toShortenFQNames="true">
        <context />
        </template>
<template name="pcopy" value="@property (nonatomic, copy) " toReformat="false" toShortenFQNames="true">
        <context />
        </template>
<template name="pstrong" value="@property (nonatomic, strong)" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="pweak" value="@property(nonatomic, weak)" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="SetupRefresh" value="#pragma mark - SetupRefresh&#10;&#10;- (void)setupRefresh {&#10;    @weakify(self)metamacro_concatrac_weakify_metamacro_concat_metamacro_concatselfselfself_weak_rac_keywordifymetamacro_concat_metamacro_foreach_cxtmetamacro_foreach_cxt1;&#10;    self.tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingBlock::^{&#10;        @strongify(self)metamacro_concat_metamacro_foreachmetamacro_concatmetamacro_foreach_cxt1self_weak_selfselfrac_keywordifymetamacro_concat_metamacro_concatmetamacro_foreach_cxtmetamacro_foreach_iterrac_strongify___strong;&#10;        self.pageIndex = 1;&#10;        self.removeAllData = YES__objc_yesBOOL;&#10;        [self getTableViewDataFromWebServiceWithPage::self.pageIndex];&#10;    }];&#10;    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock::^{&#10;        @strongify(self)__strongmetamacro_concatrac_keywordifymetamacro_concatself_weak_selfmetamacro_foreach_cxtmetamacro_foreachmetamacro_foreach_itermetamacro_concat_selfrac_strongify_metamacro_concat_metamacro_foreach_cxt1;&#10;        self.pageIndex += 1;&#10;        self.removeAllData = NOBOOL__objc_no;&#10;        [self getTableViewDataFromWebServiceWithPage::self.pageIndex];&#10;    }];&#10;}&#10;&#10;- (void)endRefresh {&#10;    [self.tableView.mj_header endRefreshing];&#10;    [self.tableView.mj_footer endRefreshing];&#10;}&#10;" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OC_DECLARATION_C" value="true" />
        <option name="OC_DECLARATION" value="true" />
        </context>
</template>
<template name="smark" value="// MARK: - " toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OTHER" value="true" />
        </context>
</template>
<template name="smarky" value="// MARK: - ⊂((・猿・))⊃ " toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OTHER" value="true" />
        </context>
</template>
<template name="ssetup" value="// MARK: - ⊂((・猿・))⊃ SetupData&#10;&#10;    func setupData() {&#10;&#10;    }&#10;&#10;    // MARK: - ⊂((・猿・))⊃ SetupUI&#10;    &#10;    func setupUI() {&#10;&#10;    }" toReformat="true" toShortenFQNames="true">
        <context>
        <option name="OTHER" value="true" />
        </context>
</template>
<template name="warn" value="#pragma clang diagnostic push&#10;#pragma clang diagnostic ignored&quot;xxx&quot;&#10;    &#10;#pragma clang diagnostic pop" toReformat="true" toShortenFQNames="true">
  <context>
    <option name="OC_STATEMENT_C" value="true" />
    <option name="OC_EXPRESSION_C" value="true" />
    <option name="OC_STATEMENT" value="true" />
    <option name="OC_EXPRESSION" value="true" />
  </context>
</template>


*/
