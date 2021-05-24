; ModuleID = 'seashell-compiler-output'
source_filename = "seashell-compiler-output"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.triple_s = type { i8**, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"/u1/dtompkins/.seashell/projects/_A7/q4-suggest/triple-s.c\00", align 1
@__PRETTY_FUNCTION__.sss_destroy = private unnamed_addr constant [36 x i8] c"void sss_destroy(struct triple_s *)\00", align 1
@__PRETTY_FUNCTION__.sss_add_follows = private unnamed_addr constant [54 x i8] c"void sss_add_follows(struct triple_s *, const char *)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"sss->len == 0 || strcmp(s, sss->aos[sss->len - 1]) > 0\00", align 1
@__PRETTY_FUNCTION__.check_len = private unnamed_addr constant [34 x i8] c"void check_len(struct triple_s *)\00", align 1
@__PRETTY_FUNCTION__.sss_add = private unnamed_addr constant [46 x i8] c"void sss_add(struct triple_s *, const char *)\00", align 1
@__PRETTY_FUNCTION__.sss_count = private unnamed_addr constant [39 x i8] c"int sss_count(const struct triple_s *)\00", align 1
@__PRETTY_FUNCTION__.sss_search = private unnamed_addr constant [54 x i8] c"int sss_search(const struct triple_s *, const char *)\00", align 1
@__PRETTY_FUNCTION__.sss_get = private unnamed_addr constant [50 x i8] c"const char *sss_get(const struct triple_s *, int)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"0 <= idx && idx < sss->len\00", align 1
@__PRETTY_FUNCTION__.sss_remove = private unnamed_addr constant [49 x i8] c"void sss_remove(struct triple_s *, const char *)\00", align 1

; Function Attrs: noinline nounwind optnone
define %struct.triple_s* @sss_create() #0 {
entry:
  %sss = alloca %struct.triple_s*, align 8
  %call = call noalias i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.triple_s*
  store %struct.triple_s* %0, %struct.triple_s** %sss, align 8
  %1 = load %struct.triple_s*, %struct.triple_s** %sss, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %1, i32 0, i32 1
  store i32 0, i32* %len, align 8
  %2 = load %struct.triple_s*, %struct.triple_s** %sss, align 8
  %maxlen = getelementptr inbounds %struct.triple_s, %struct.triple_s* %2, i32 0, i32 2
  store i32 1, i32* %maxlen, align 4
  %3 = load %struct.triple_s*, %struct.triple_s** %sss, align 8
  %maxlen1 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %3, i32 0, i32 2
  %4 = load i32, i32* %maxlen1, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 8
  %call2 = call noalias i8* @malloc(i64 %mul) #4
  %5 = bitcast i8* %call2 to i8**
  %6 = load %struct.triple_s*, %struct.triple_s** %sss, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %6, i32 0, i32 0
  store i8** %5, i8*** %aos, align 8
  %7 = load %struct.triple_s*, %struct.triple_s** %sss, align 8
  ret %struct.triple_s* %7
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone
define void @sss_destroy(%struct.triple_s* %sss) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  %i = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.sss_destroy, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %4, i32 0, i32 0
  %5 = load i8**, i8*** %aos, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %7) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos1 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %9, i32 0, i32 0
  %10 = load i8**, i8*** %aos1, align 8
  %11 = bitcast i8** %10 to i8*
  call void @free(i8* %11) #4
  %12 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %13 = bitcast %struct.triple_s* %12 to i8*
  call void @free(i8* %13) #4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline nounwind optnone
define void @sss_add_follows(%struct.triple_s* %sss, i8* %s) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 62, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.sss_add_follows, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.sss_add_follows, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  call void @check_len(%struct.triple_s* %2)
  %3 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %6, i32 0, i32 0
  %7 = load i8**, i8*** %aos, align 8
  %8 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len5 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %8, i32 0, i32 1
  %9 = load i32, i32* %len5, align 8
  %sub = sub nsw i32 %9, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %5, i8* %10) #6
  %cmp6 = icmp sgt i32 %call, 0
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %lor.lhs.false, %if.end4
  br label %if.end9

if.else8:                                         ; preds = %lor.lhs.false
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.sss_add_follows, i64 0, i64 0)) #5
  unreachable

if.end9:                                          ; preds = %if.then7
  %11 = load i8*, i8** %s.addr, align 8
  %call10 = call i8* @sdup(i8* %11)
  %12 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos11 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %12, i32 0, i32 0
  %13 = load i8**, i8*** %aos11, align 8
  %14 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len12 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %14, i32 0, i32 1
  %15 = load i32, i32* %len12, align 8
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %13, i64 %idxprom13
  store i8* %call10, i8** %arrayidx14, align 8
  %16 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len15 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %16, i32 0, i32 1
  %17 = load i32, i32* %len15, align 8
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %len15, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal void @check_len(%struct.triple_s* %sss) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.check_len, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 8
  %3 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %maxlen = getelementptr inbounds %struct.triple_s, %struct.triple_s* %3, i32 0, i32 2
  %4 = load i32, i32* %maxlen, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then1, label %if.end6

if.then1:                                         ; preds = %if.end
  %5 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %maxlen2 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %5, i32 0, i32 2
  %6 = load i32, i32* %maxlen2, align 4
  %mul = mul nsw i32 %6, 2
  store i32 %mul, i32* %maxlen2, align 4
  %7 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %7, i32 0, i32 0
  %8 = load i8**, i8*** %aos, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %maxlen3 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %10, i32 0, i32 2
  %11 = load i32, i32* %maxlen3, align 4
  %conv = sext i32 %11 to i64
  %mul4 = mul i64 %conv, 8
  %call = call i8* @realloc(i8* %9, i64 %mul4) #4
  %12 = bitcast i8* %call to i8**
  %13 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos5 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %13, i32 0, i32 0
  store i8** %12, i8*** %aos5, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone
define internal i8* @sdup(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %newstr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  %mul = mul i64 %add, 1
  %call1 = call noalias i8* @malloc(i64 %mul) #4
  store i8* %call1, i8** %newstr, align 8
  %1 = load i8*, i8** %newstr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call2 = call i8* @strcpy(i8* %1, i8* %2) #4
  %3 = load i8*, i8** %newstr, align 8
  ret i8* %3
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone
define void @sss_add(%struct.triple_s* %sss, i8* %s) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  %s.addr = alloca i8*, align 8
  %idx = alloca i32, align 4
  %cmp7 = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.sss_add, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.sss_add, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  call void @check_len(%struct.triple_s* %2)
  %3 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  %5 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %6 = load i8*, i8** %s.addr, align 8
  call void @sss_add_follows(%struct.triple_s* %5, i8* %6)
  br label %return

if.end6:                                          ; preds = %if.end4
  %7 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %8 = load i8*, i8** %s.addr, align 8
  %call = call i32 @add_index(%struct.triple_s* %7, i8* %8)
  store i32 %call, i32* %idx, align 4
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %10, i32 0, i32 0
  %11 = load i8**, i8*** %aos, align 8
  %12 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 %idxprom
  %13 = load i8*, i8** %arrayidx, align 8
  %call8 = call i32 @strcmp(i8* %9, i8* %13) #6
  store i32 %call8, i32* %cmp7, align 4
  %14 = load i32, i32* %cmp7, align 4
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  br label %return

if.end11:                                         ; preds = %if.end6
  %15 = load i32, i32* %cmp7, align 4
  %cmp12 = icmp sgt i32 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  %16 = load i32, i32* %idx, align 4
  %add = add nsw i32 %16, 1
  store i32 %add, i32* %idx, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11
  %17 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len15 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %17, i32 0, i32 1
  %18 = load i32, i32* %len15, align 8
  store i32 %18, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %idx, align 4
  %cmp16 = icmp sgt i32 %19, %20
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos17 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %21, i32 0, i32 0
  %22 = load i8**, i8*** %aos17, align 8
  %23 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %23, 1
  %idxprom18 = sext i32 %sub to i64
  %arrayidx19 = getelementptr inbounds i8*, i8** %22, i64 %idxprom18
  %24 = load i8*, i8** %arrayidx19, align 8
  %25 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos20 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %25, i32 0, i32 0
  %26 = load i8**, i8*** %aos20, align 8
  %27 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds i8*, i8** %26, i64 %idxprom21
  store i8* %24, i8** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %k, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i8*, i8** %s.addr, align 8
  %call23 = call i8* @sdup(i8* %29)
  %30 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos24 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %30, i32 0, i32 0
  %31 = load i8**, i8*** %aos24, align 8
  %32 = load i32, i32* %idx, align 4
  %idxprom25 = sext i32 %32 to i64
  %arrayidx26 = getelementptr inbounds i8*, i8** %31, i64 %idxprom25
  store i8* %call23, i8** %arrayidx26, align 8
  %33 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len27 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %33, i32 0, i32 1
  %34 = load i32, i32* %len27, align 8
  %add28 = add nsw i32 %34, 1
  store i32 %add28, i32* %len27, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then5
  ret void
}

; Function Attrs: noinline nounwind optnone
define internal i32 @add_index(%struct.triple_s* %sss, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %sss.addr = alloca %struct.triple_s*, align 8
  %s.addr = alloca i8*, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %mid = alloca i32, align 4
  %cmp1 = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %lo, align 4
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %0, i32 0, i32 1
  %1 = load i32, i32* %len, align 8
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %hi, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %2 = load i32, i32* %lo, align 4
  %3 = load i32, i32* %hi, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %lo, align 4
  %5 = load i32, i32* %hi, align 4
  %add = add nsw i32 %4, %5
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %7, i32 0, i32 0
  %8 = load i8**, i8*** %aos, align 8
  %9 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %6, i8* %10) #6
  store i32 %call, i32* %cmp1, align 4
  %11 = load i32, i32* %cmp1, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %mid, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %13 = load i32, i32* %cmp1, align 4
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %14 = load i32, i32* %mid, align 4
  %sub5 = sub nsw i32 %14, 1
  store i32 %sub5, i32* %hi, align 4
  br label %if.end7

if.else:                                          ; preds = %if.end
  %15 = load i32, i32* %mid, align 4
  %add6 = add nsw i32 %15, 1
  store i32 %add6, i32* %lo, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %lo, align 4
  store i32 %16, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone
define i32 @sss_count(%struct.triple_s* %sss) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 95, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.sss_count, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %1, i32 0, i32 1
  %2 = load i32, i32* %len, align 8
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone
define i32 @sss_search(%struct.triple_s* %sss, i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %sss.addr = alloca %struct.triple_s*, align 8
  %s.addr = alloca i8*, align 8
  %idx = alloca i32, align 4
  %cmp7 = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 100, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.sss_search, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.sss_search, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %2, i32 0, i32 1
  %3 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end4
  %4 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %call = call i32 @add_index(%struct.triple_s* %4, i8* %5)
  store i32 %call, i32* %idx, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %7, i32 0, i32 0
  %8 = load i8**, i8*** %aos, align 8
  %9 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %call8 = call i32 @strcmp(i8* %6, i8* %10) #6
  store i32 %call8, i32* %cmp7, align 4
  %11 = load i32, i32* %cmp7, align 4
  %tobool9 = icmp ne i32 %11, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end6
  store i32 -1, i32* %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %12 = load i32, i32* %idx, align 4
  store i32 %12, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then5
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone
define i8* @sss_get(%struct.triple_s* %sss, i32 %idx) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.sss_get, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i32, i32* %idx.addr, align 4
  %cmp = icmp sle i32 0, %1
  br i1 %cmp, label %land.lhs.true, label %if.else3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %idx.addr, align 4
  %3 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %3, i32 0, i32 1
  %4 = load i32, i32* %len, align 8
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %land.lhs.true
  br label %if.end4

if.else3:                                         ; preds = %land.lhs.true, %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.sss_get, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %5 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %5, i32 0, i32 0
  %6 = load i8**, i8*** %aos, align 8
  %7 = load i32, i32* %idx.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  ret i8* %8
}

; Function Attrs: noinline nounwind optnone
define void @sss_remove(%struct.triple_s* %sss, i8* %s) #0 {
entry:
  %sss.addr = alloca %struct.triple_s*, align 8
  %s.addr = alloca i8*, align 8
  %idx = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.triple_s* %sss, %struct.triple_s** %sss.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %tobool = icmp ne %struct.triple_s* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.sss_remove, i64 0, i64 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  %1 = load i8*, i8** %s.addr, align 8
  %tobool1 = icmp ne i8* %1, null
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.end
  br label %if.end4

if.else3:                                         ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.sss_remove, i64 0, i64 0)) #5
  unreachable

if.end4:                                          ; preds = %if.then2
  %2 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %call = call i32 @sss_search(%struct.triple_s* %2, i8* %3)
  store i32 %call, i32* %idx, align 4
  %4 = load i32, i32* %idx, align 4
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end4
  br label %return

if.end6:                                          ; preds = %if.end4
  %5 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos = getelementptr inbounds %struct.triple_s, %struct.triple_s* %5, i32 0, i32 0
  %6 = load i8**, i8*** %aos, align 8
  %7 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %8) #4
  %9 = load i32, i32* %idx, align 4
  store i32 %9, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %10 = load i32, i32* %k, align 4
  %11 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len = getelementptr inbounds %struct.triple_s, %struct.triple_s* %11, i32 0, i32 1
  %12 = load i32, i32* %len, align 8
  %sub = sub nsw i32 %12, 1
  %cmp7 = icmp slt i32 %10, %sub
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos8 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %13, i32 0, i32 0
  %14 = load i8**, i8*** %aos8, align 8
  %15 = load i32, i32* %k, align 4
  %add = add nsw i32 %15, 1
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %14, i64 %idxprom9
  %16 = load i8*, i8** %arrayidx10, align 8
  %17 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %aos11 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %17, i32 0, i32 0
  %18 = load i8**, i8*** %aos11, align 8
  %19 = load i32, i32* %k, align 4
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds i8*, i8** %18, i64 %idxprom12
  store i8* %16, i8** %arrayidx13, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.triple_s*, %struct.triple_s** %sss.addr, align 8
  %len14 = getelementptr inbounds %struct.triple_s, %struct.triple_s* %21, i32 0, i32 1
  %22 = load i32, i32* %len14, align 8
  %sub15 = sub nsw i32 %22, 1
  store i32 %sub15, i32* %len14, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then5
  ret void
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-features"="+cx8,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1 = !{i32 1, !"wchar_size", i32 4}
