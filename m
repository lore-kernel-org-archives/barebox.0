Delivery-date: Mon, 19 Sep 2022 13:42:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAa-009Y9V-Hz
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAY-0001SQ-HZ
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5wVgFBYfZ/ihdECqK1nHd7MlWdNW60UEmtBPFyy8Wcw=; b=DsE9rbzCb4tcTrlYtg4meftx3x
	hBuxxjwwyHv1Mp/t9YA90XFePw7V+yqRFSDfATPNEkhzB9NQ9jem20CKZz8Da8/8MJbYPwftatMX8
	3e14r34YU4+zwXIopfhUOjSgNmMXxaKabDHatmZJ3ZP8qiHiNdKwYH6jmPvcVwqCqBVZHbIWZ8iex
	2OH3UG5H6jCiP8tS8yJjPinUhB2yW3bOXfk6aPaZz2ybHuSkOCyKaIIQ5lVolilcS9yqzdLvaT9NF
	6EPn5rS+Vb+S7UCY7AwQU7OO5g1wVm/+Eu5P/XkxiUTAOe5TwcM4iEOUWW43Aq7qgG5aq9eNBPW7O
	kBcIy1pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8N-00BXts-FN; Mon, 19 Sep 2022 11:40:19 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8E-00BXou-FH
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KhPxyuDPEDimutj5LckZLuBufMel8girLNroe8iMFioxK2o36RvwZ6t2Pw/8WeXk3+k4MnvnEAtNCrn2u2MwcRkfRZWaG1FnMaTeljn06l6lq4m1kGQ0K5bSOtTco6Ho3tNnqvgnfrJ9q6ExI7ks0HOMYDT/4XUXXbD09emf2HMkYMBBJbCEWaNQIUEkoMmhET2YxGfpt5V3RgabaVro6tVsNL0GtKe6YLlun6UEd/abmAE1McDxFlmIF370st242u/8tOPAB12Xl0FW2fGWfqHdETmkcv64Wrj4TH4fYwBxBb2SJPxF4SXcAvKTMsi9x9wpG61GAAWxGmxXoMa8BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wVgFBYfZ/ihdECqK1nHd7MlWdNW60UEmtBPFyy8Wcw=;
 b=HPWMiZ21COialu4ps9ruOfin4zpMLVifL15iAQ8itcx+0Oyl6bDj1owFK1z6lYCNK4CAfB2WaK42o4QJJJiFfTiJz8p8uwNKZUL7P4AcBFeOx/nJuO6LR5VH+wjFruLf+ImcHSlxybnUWe4Lbznrkatpxa5E+omIaLx6tVbrNntDLUHG2EMCtgoNF+KOxe1RWNVHIAX47NhC+WCgx4GwGPQV3WIikxUWTqbbuF5bOgWLBy17Xhew2vBWOo2Fhagr0KUfsxEAm9TYtgGRwkEWwN8pAEUoafWgvWFh6INeD7137le5OG80wDMyyhe2ckJYS1YU6M+Bj6vN7uFuZPl48Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5wVgFBYfZ/ihdECqK1nHd7MlWdNW60UEmtBPFyy8Wcw=;
 b=H64S0WkWE0JTyCdXXdJubEfV+yTqAYIuKbSl0/kPPdkDTK2hnXegOxHjPknzSeyAR+GRtyzAtgtBjVZDx5A+aumltrWzkOwj+XflA2Yh5Dh08VG33t+lv2aZ2/Jf0fMogVbHeyROb2lzMX4JT8D2dK1j/2iqL2ikM+7ff0YVhoE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:04 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:03 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:45 +0200
Message-Id: <20220919113948.991245-5-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919113948.991245-1-michael.riesch@wolfvision.net>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: 47dcf2fc-0b8c-4124-0fe7-08da9a33b170
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	O4F1xzgXFGZKE9dL0lvo5zsGipZEOuOqsgfpDXXWKi/QWzINPCb7tzMljK6mFsTpygsp1AZjY2KBduaQzTra1ngDKvXhe9hTBaR99FqCSN09Bocxdf2YStjSg2aZNnwU1mMKGikJVxIEZn4QGoNzRKghxB/UYE3p5CiyLHi9acpzNotGivcWNGtciBX/K41sdL6fUeRNXIakvsACLHdT2uJzlev1jWUowX2KxHKVsWKvPmHGGrCkwrySzg8FlLTHG6abPdtw+BzfnytLs6GUjYEJXui7fQRARHa542mT1jYSZeYazg0vGPcvvZzD2ZvYlwgLxvmZjJPhJ1L+RTQca6ZqpRgzz0i+ldpLUPlQDQ6YmkU3ecsfeskyInITBf0c+UJQbR+WXmkrSEOydORm+bJAA0PuzMPqeRp0telx6MD4+0WAsWa2mOvRmNfyJQOwkZ8i14QotF3UBZH2vY3VP2d1Ufn8R+ge/etlWxmQ++9FZraPKUG/b1A63Ht3n9wMknLZyQrn2+nq8YlHH4tLjnA8oL16LSQ0sB0qbnB7TLwJXSIANegHeKBP4jzX5o5Er1zKX4fUrqMzZWQ5fLm91dhWQqPTjf2mfYKUBr1PcWr3Of16Dq+2apDSxeJ0DzhkImalRj6SuDb4/kuQMsqOSPU9vZhtqj8yK5XOjUSqIAYlJDCuZCBvLDf+5NnBTfq4a41eJdE/63TYBhWrNW+ltQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4744005)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?HoWs1RH1Rx5Nr5IK7YK5p2nIfZfRXtmOUO4OivaSCyZNc+Bf5OQbJUUAUiZF?=
 =?us-ascii?Q?Ucx1OWKDan3IQFjtt42gqWYDUHtxBfO9XftXJPoLdJ3i5WLskmxZFW9fYthe?=
 =?us-ascii?Q?cXkSyPGpdzZdaeWwarZhxNsbzFYf0WF1XZVy/9Nlde6rIpNO8Eea9WxJNRVf?=
 =?us-ascii?Q?9Iednu4xDUha3MCQJhT7PeKvD+OjemvTi8UfhDOVZ/zGL3CsA6wT1tF8f4oI?=
 =?us-ascii?Q?W8tXl08+3OOUm4kkIB4XZzhDvW4ZF7JjiokoIJCLTzQQIGxk2jGI5+1OIakf?=
 =?us-ascii?Q?8K9456pDMbxXdH1KCo8LbkVusGXe5JH+k2PJ9xik7Kn9E5pb33jCd3Y2T9Jn?=
 =?us-ascii?Q?g5x/ybdnSMDQN3eAO6Czp5y+M/MyRjpTPTOgKW+lwQ36cFTzo1dAb5pWf5hH?=
 =?us-ascii?Q?XXAnEl1i9h7IAkWOVSjgu9kHe8H8CTDFIdB5nzECO89kT/FAFOrYtAFaUsak?=
 =?us-ascii?Q?KXzk5lVR/Smk6dMQpAWe2nsOMBGO0upckX+wcqUvPIEEf+oPj+B3BQNk+c1a?=
 =?us-ascii?Q?oqVvBipAnsyJbNM3+pyuczX97vSArBYcZTascWRzNRo+0AOhrwakJnxQO1ml?=
 =?us-ascii?Q?k/Tkgnr15R7Cs85ieHIFOtbgZixGL5mMyE0NCZ3O81Wm8tzsNgVXpATd4+Rc?=
 =?us-ascii?Q?zDfL5IS02+DVtlAFMQfDbN7HpgG5eds8EOkUWE84wPQHM7ESwNfTk7Dnfzp+?=
 =?us-ascii?Q?VfON1J/AopP5PFQSpSmMdBL5ZAH3REwuI9AxUCf7ytfKLcT+9EYTo0kMHv7l?=
 =?us-ascii?Q?ypjS/exIWmMXV3g/74dl6iDqiEu8lFRfzqF/36QuZzAu3ymSbLUBZWFK2TBp?=
 =?us-ascii?Q?ivxzVfBbBotgSLkxZSuwOCdtb/WMW8Bfd4I5ZBu2SXm0VH1h4m4//89SAGmr?=
 =?us-ascii?Q?3XTW87gs/mwkvq61x45A6vHLGdvQQU8IVPtqQ6F3ggEzpM5ut7OLt1IR1ih5?=
 =?us-ascii?Q?FH9fIXzHdLtHk0T6Bg7Q0/Fll4tmJj8UwuXAuXNUBH/Il9+KqKLn7SGW+gjb?=
 =?us-ascii?Q?Krt8HvHRG4Xf0W9oWEKbxtkJUqI9vbda1Hg5U5TnPQ3ky2ELZUAgtlO7O0Nx?=
 =?us-ascii?Q?Z+EVZy3rTNaai8MDcFTfXzbNw0PoqaOfoGvl2wsvIHaCqzLWi/+4jpM4rnXH?=
 =?us-ascii?Q?Cx9BffsXjlPl7SGHIXAiEuNepeB1B+u0CuuPXJ19jDKCkCUHZLrmC9iFeJq+?=
 =?us-ascii?Q?nEjtz6wjsh0CLn9bLcfgOsAaA2sfg00hvPGV8MvBqNESEXpFyJk94bobQ9YQ?=
 =?us-ascii?Q?kXYdU/NyQeIPnihQ0MDIVbeb2LmrIrvIhGFKK1Bq5mGJ1F0neP8kJkXDsZSb?=
 =?us-ascii?Q?nUKZBlbodRyYyxmqrofJiC5WxdfbAi6AUCnKQ7nO+fgM4ql316L5PEcAqYP2?=
 =?us-ascii?Q?+CJFExeCFSBv44Qk7vu/2bs2HxlsmMvz9K5xW0dJCf4kT+rYeeGFrcHdwJ5z?=
 =?us-ascii?Q?NEJeCsA1/RReESptarKv8968/EA47gsMkQLDJQXBDqawqCsU3JCWs6fNJWkV?=
 =?us-ascii?Q?OHy6hegGyTJW9QfT7ZKUozpe/t/0ohpp8G+cNY33+rSZzEXuIWO1wVt6yBdT?=
 =?us-ascii?Q?f1fspP538dbBym6xd1+Pv+8t83QaiALgzz3z7Huzw5/uNPi3tGEMJLR3zM+r?=
 =?us-ascii?Q?VxSGl/zU7Nu0BwhJXvV02bdSAjklTvmpzrYMnkXF/447Cj7hc/4MkDrYVj9M?=
 =?us-ascii?Q?vNMimdU5vEFKpA6f42vJwe5ML3w=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 47dcf2fc-0b8c-4124-0fe7-08da9a33b170
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:03.8829
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: meE25lSHjMdgeE46UjnAUKbK+TtXQpLTTiwUyJPe1SdhagWWH7+Jd8hl0BQVm6ljaETR4Ypryr0cZpcUGwJsqgC2y7+JqT+Cgnxk2N4tSNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044010_721488_59687C42 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/7] arm: rockchip: rk3568-evb: remove io domain configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let the recently added Rockchip IO domain driver configure the IO
domains instead of setting the bits in rk3568_start().

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
index 363639d21b..9c1c7be8a6 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/lowlevel.c
@@ -15,12 +15,6 @@ static noinline void rk3568_start(void)
 {
 	void *fdt;
 
-	/*
-	 * Enable vccio4 1.8V and vccio6 1.8V
-	 * Needed for GMAC to work.
-	 */
-	writel(RK_SETBITS(0x50), 0xfdc20140);
-
 	fdt = __dtb_rk3568_evb1_v10_start;
 
 	if (current_el() == 3) {
-- 
2.30.2



