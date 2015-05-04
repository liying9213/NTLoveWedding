//
//  NTStrategyViewController.m
//  NTLoveWedding
//
//  Created by liying on 15/4/24.
//  Copyright (c) 2015年 liying. All rights reserved.
//

#import "NTStrategyViewController.h"
#import <EGOImageLoading/EGOImageView.h>
#import "NTdefine.h"
@interface NTStrategyViewController ()

@end

@implementation NTStrategyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setLeftItemtype:2 RightItemtype:0];
    _scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, MainWidth, self.view.frame.size.height-64)];
    _scrollView.scrollEnabled=YES;
    [self.view addSubview:_scrollView];
    self.title=@"攻略详情";
    [self GetTheData];
    [self ResetView];
    [_scrollView setContentSize:CGSizeMake(0, height)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)GetTheData
{
    _TheDic=[[NSMutableDictionary alloc] init];
    [_TheDic setObject:@"爱婚汇隆重推出 浪漫蜜月行 云南丽江，大理4晚5日行" forKey:@"title"];
    NSArray *ary=[NSArray arrayWithObjects:@"LOVE婚汇隆重推出浪漫蜜月行：雪海情缘，雪中情，海中意，缘来是你，直奔唯美丽江，邂逅艳遇之都\n漫步风花雪月，穿越南诏古国，身临虎跳奇观，梦回香格里拉，探秘阿夏走婚，醉迷女儿国度！",@"20150204051454414.jpg",@"行程概览：直飞丽江，丽江-大理，丽江返北京\n产品特色:\n住宿——亲们，身在外、心在家，优越的住宿条件让您感受似家一般的舒适（4星+5星+温泉），当您饱览美景后仿佛回到了能彻底放松自己的专属小窝，尽情地享受休憩！\n餐饮——我们非常关心您的健康饮食问题！将为您提供绿色、健康的当地特色美食。舌尖上的旅游，少数民族特色餐，旅游的同时依然给你味蕾上的触动！\n 景点——在这里，囊括了云南最具特色的锦绣河山，让您如痴如醉，尘世间一切繁华若梦也只不过是过眼云烟，这里才是您流连忘返的梦中幻境！\n交通—-为您打造安全舒适的旅游交通，特别赠送云南旅游组合保险，让您全程无忧！",@"20150204051312588.jpg",@"第一天：北京首都机场乘机赴素有美誉的高原水乡—丽江，专职接机人员于出站口举“雪海情缘”的标志接机，根据航班到达时间由工作人员统一安排车辆将游客送至指定酒店入住，游客可根据航班到达时间自由活动。\n爱心小贴士：\n云南海拔比较高，高原地区空气稀薄，不宜剧烈运动，不宜醉酒，多食蔬菜水果、多饮水，以防发生高原反应；紫外线强烈，请您出发时最好带上太阳镜，太阳帽，涂抹防晒霜，润唇膏等物品，免得到云南旅游一趟回家家人都认不出了哦。\n餐：无   住宿：丽江\n第二天：早餐后游览【玉龙雪山风景区】（约120分钟），乘索道游览【云杉坪】（含索道及环保车），云杉坪是纳西族圣洁之地，据说由此可通往纳西族传说中的理想天国“玉龙第三国”，游览【甘海子牧场】、【蓝月谷】（蓝月谷电瓶车自理60元/人）。后游览【东巴谷景区】、【裸美乐大峡谷】（约60分钟、东巴谷电瓶车自理50元/人），一条“匠人街”上，几个少数民族的院落像撒落的珍珠串连在街道两边。在这里，游客可以与主人互动，尽情体验原生态的民族民间文化。中餐后乘车前往以“风、花、雪、月”著称于世的大理（约180公里，车程约2.5小时），到达大理后游览大理特色小镇---【双廊】（约45分钟），之后欣赏白族《非物质文化遗产》【鱼鹰表演】（约45分钟），观看民族水上舞台表演。游览文献名邦—【大理古城、洋人街】（约60分钟，电瓶车自理35元/人），让您置身街巷老宅，追寻昔日“叶榆”风貌。晚餐后入住指定酒店。酒店\n爱心小贴士：\n出行必备：雨衣或雨伞、运动鞋、感冒药、肠胃药、防虫膏药、防晒油、太阳帽、太阳镜等。\n餐：早中晚  住宿：大理",@"20150204051342360.jpg",@"第三天：早餐后乘坐【豪华游船】饱览苍山洱海的壮丽风光，观看白族三道茶歌舞表演，品尝一苦、二甜、三回味“三道茶”人生感悟。游览洱海边庄严肃穆的佛教胜地【天镜阁】（约100分钟），中餐后游览【崇圣寺三塔】（游览120分钟，电瓶车自理25元/人）三塔鼎峙，撑天拄地；玉柱标空，雄浑壮丽，为苍洱间的胜景之一。游览【蝴蝶泉】（约60分钟），蝴蝶泉是一个方形潭，泉水清澈如镜，有泉底冒出，泉边弄荫如盖，一高大古树，横卧泉上，这就是“蝴蝶树”。之后参观大理喜洲古镇“白子人家”了解【白族民居】（约60分钟）“三滴水门头”及青瓦白墙“风水照壁”鉴赏民族银雕手工艺培训基地“月辉银器”。后乘车至著名的温泉之乡——下山口入住温泉酒店，一扫旅途的疲惫！（泳衣、泳裤自备）。\n爱心小贴士：\n因今天行程中会乘坐游船，请勿在船头、船尾玩耍，在船舱走动时,请不要奔跑,以免发生意外。\n经常晕车者，乘车、船时应备好一些防晕药物，如乘晕宁、眠尔通等。\n餐：早中晚  住宿：下山口\n第四天：早餐后乘车至丽江，参观【滇缅玉石城】（约120分钟），中餐后游览【观音峡】（约90分钟）、一个融山水、湖泊、峡谷、森林等自然景观和纳西村落、茶马古街、民俗风情、宗教寺庙、名胜古迹等人文景观为一体的综合景区。后体验【龙润普洱茶】或【云普天下】（约60分钟）中国首家上市茶企品牌，欣赏历史悠久的云南茶艺，感受茶马古道的悠远沧桑；，之后参观螺旋藻配送中心（约30分钟）。晚餐品尝丽江特色餐<火塘鸡>或<丽江腊排骨火锅>，后可自费参观【丽江千古情】（约90分钟）您一生必看的演出，用各种不可思议的高科技手段和舞台表现形式，演绎了纳西创世纪的生命礼赞、泸沽湖女儿国的浪漫情怀、木府辉煌的兴盛和睦、马帮传奇的惊险震憾、玉龙第三国的生命绝唱。280元/人自理）\n爱心小贴士：\n在丽江自费骑马拍照时，请注意安全，听从主人安排指导，切勿做出惊吓马匹的行为，以免给自己造成伤害；\n餐：早中晚  住宿：丽江\n第五天：根据航班时间参观【新华民族村】（约60分钟），后专职接送人员根据返程航班时间送机，让您把春城的气息带给您的家人和朋友！结束您愉快的云南游！\n爱心小贴士：\n返程前请仔细整理好自己的行李物品，请不要有所遗漏，核对下自己的航班时间，避免增加您不必要的麻烦。",@"201502040515163851.jpg", nil];
    [_TheDic setObject:ary forKey:@"content"];
    
    
}

#pragma mark - ResetView
-(void)ResetView
{
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 10, MainWidth, 40)];
    titleLabel.text=[_TheDic objectForKey:@"title"];
    titleLabel.numberOfLines=0;
    titleLabel.font=[UIFont systemFontOfSize:16];
    titleLabel.textAlignment=NSTextAlignmentCenter;
    titleLabel.lineBreakMode=NSLineBreakByWordWrapping;
    [_scrollView addSubview:titleLabel];
    height=titleLabel.frame.size.height+titleLabel.frame.origin.y;
    int i=0;
    for (NSString *str in [_TheDic objectForKey:@"content"]) {
        if (i%2==0)
        {
            
            switch (i) {
                case 0:
                {
                    [self ResetTextViewWith:str with:130];
                    height+=130;
                }
                    break;
                case 2:
                {
                    [self ResetTextViewWith:str with:300];
                    height+=300;
                }
                    break;
                case 4:
                {
                    [self ResetTextViewWith:str with:650];
                    height+=650;
                }
                    break;
                case 6:
                {
                    [self ResetTextViewWith:str with:900];
                    height+=900;
                }
                    break;
                    
                default:
                    break;
            }
        }
        else
        {
            [self ResetImageView:str];
        }
        i++;
    }
}

-(void)ResetTextViewWith:(NSString*)string with:(float)iheight
{
    UITextView *textView=[[UITextView alloc] initWithFrame:CGRectMake(10, height, MainWidth-20, iheight)];
    textView.font=[UIFont systemFontOfSize:14];
    textView.text=string;
    textView.editable=NO;
//    CGSize size=textView.contentSize;
    textView.scrollEnabled=NO;
    [_scrollView addSubview:textView];
//    textView.frame=CGRectMake(10, height, MainWidth-20, iheight);
    
}

-(void)ResetImageView:(NSString *)imageName
{
    EGOImageView *imageView=[[EGOImageView alloc] initWithFrame:CGRectMake(10, height, MainWidth-20, 150)];
    imageView.image=[UIImage imageNamed:imageName];
    [_scrollView addSubview:imageView];
    height+=150;
}



@end
