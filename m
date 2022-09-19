Delivery-date: Mon, 19 Sep 2022 13:42:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAb-009Y9Y-LF
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAZ-0001SU-2G
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8/JzZAoHDetpOV1qYWwkzcG5oCA56JNkocP7XCVsAY=; b=KYlRHzX+yfPIyar+ntDLXCyxAs
	j6A+Uu9qDQp5Poybexcc2JGDtOaEKniyW0Kgx5GsuKPHhem/+EwhIkzETWwdphlh4KXEO9c9O50nb
	HpLz+9mOmHzUUh4Ws60Oqadjs5n5wVoEC7km6KpxFKZYbCRXidtOM6u2/cV9yeFYCQDAZwTkEoyrI
	+orMtPPXF1NzgW5EeZeV7lyAqz+Ve/eSvcBH3Rr3f1BZiqFjs8eG+muzH8ga1wI0WePJrpKZN+RVb
	WKn2wST3WvnK+dwkjbUFr/pLrIeu+3MOJLoCwkW41o8THd3LEGgyfHFSJxsLN8BRvld2oR5w0QArx
	jUNT3x2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8Y-00BXw6-VS; Mon, 19 Sep 2022 11:40:31 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8G-00BXou-CZ
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jabZ0ne4H0mRo7MDLs8bl0n0T5F6oi6cldu4x40DT5yNh/RVpEQiUgRH1Kkqbvast3p/4imAq0eehWtT8eNrDUjHaZtOkpjQG64vgpKAFABQkZjiwkE04GxWXEM5tdpZTyAIXkK0KJ1O1IlXNhvjKTnYpTOEo3yIe+mRV/sJf83apx+lGe+mm3zubRUwegwt3ZxRPHfyf8y2Kpqf75ff5znsqOItVQE52bMpWKOuWCk4JXoLmxyqpJSewAJLzjmPLi3CYF+SUO0NbLXQ5Gby0AFoZCjOhdyrsoa6R3v8ijQXnADLiUR/I5un+MJkzJxZU3hewpJsD1y/hcflSKsQJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h8/JzZAoHDetpOV1qYWwkzcG5oCA56JNkocP7XCVsAY=;
 b=WxBvSnRWfVO6vmBFwEO/lZOPtivF00SG4SXPEt9VtbQbOCsd3/mWztGwO1im25I1vZqHHmAbjmZmk4dqda2RFpuoApRWEwrzq7sQJfBRGmnUaxCoB5N439qnV5YX7op/Nj90DBITjKbBKOwbA+k1dp1bcEk0bPpu8s9uIpuxjGCxoCHY3HkIupAL44SH2KQi8ZD1eBgX8Yql5nyIAX4D+MSAsl7VUYb3oZmXxyj/prIAX1nmfvirjMvF6bD4gXtUe9B9ua6jdyOJwm0K3Z/IXR8mArT3deUEkwF2dTKvmtLQm5bdHkGtX17EzI+5rejIugo9DuXTD3C8ergOUoCGrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h8/JzZAoHDetpOV1qYWwkzcG5oCA56JNkocP7XCVsAY=;
 b=24glg/eT5Im+IfTXgrpCBem88oJ5eiwNgWlmaUmxhAZZo7uGbcO3fHhNVaJZMYgndV6AiNlJnRTl0cqNWBFgdRn+b7Rqsrd0Y2thAnIvn0Lz6hxhcxUhp13MKErmH2Giwy/JPUVtpJcggH1Ct+vAoNiFqoISES62Nt0ExmIeqYg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:05 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:04 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:46 +0200
Message-Id: <20220919113948.991245-6-michael.riesch@wolfvision.net>
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
X-MS-Office365-Filtering-Correlation-Id: bd1ad1da-82f2-4727-3d77-08da9a33b206
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	V6uLVmFYxdB4lT20+t5LgwCqH4tZJpajM6nzwiec1Rol8aQbl6Z0IyUYWJ1t/DmY9moJCgfdjI9XNE95FACJX6PVBOzyhsyWo+1eIWYvF5CJRD6lxF8RqN5yXm/ThNtPJ4uBAGL0gS1z5tH3C1IT+j5IzyUeVsZzn4L1wKbJ17nuNaRu3be+6wgx6hznhDp9Aj458B/878ZwMe6yZOH2Sd8ppL/ROidn9z/q0b0QYFu/vWmwu3t3Q2fXTBjQVSO3mF4RvwoMtQLwniOkK4nOOxEJBn3Np2f4KlfqXrcVbcHqBUiDNtvt2/+SBixR9AiyN+kKEOnrz0pcthFkt9G0HgvYOd0HyZbyy2VSxVyxrlU9Uh8xdR9s7xoZI378cSDApAxQWxUyeUIHfriPfMc4DXqFKuRO1O3n82D4YDdsuqERqv0DPMxOZmcW9nP9IJR30y6f7dC628tPRhg1ozRSwjJhQlYVskUhis8hrg+OHOv3eI1nxkOpfHEkqdX8paWOu2fmwaClEA1v2crG/lqxBmrf1lJNFJUSKdqjXETR/XhwFzxVXigj9w2L2NJnic4dih0RFU2lL676cU9hhMkrjI5KhZF/pnyZAHHdJgJKgbEleV6lJ4O8KhBQ26UUiUm32oGLy4DNnlHjA1huORCzZbySjnO4bMTrAxlGgY8zrq6PAhEy3Llz9To+TsfNSWU2qjSuhd03vjz9nVnibha1pg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?ZTfN4gOTk6jT56X34ib2jRgcytcY8wsOIXuHgbz6/eEzvmLC3Fyr5WnVtpVq?=
 =?us-ascii?Q?lBOeyprBx7gE3/AfqmETDY08dG7c7Y8XQ2DEhRegOHLVgLfcpLi5TsReEZne?=
 =?us-ascii?Q?BlTs2RM9XKV+3euoBu9Pe5Sgz+MKNJ9owLFEyKx4INT0XQOfRBfrQw5hknSM?=
 =?us-ascii?Q?gzIssTwnc/lnLjU53224DsHj4sBYFTg1HTsq08V7ygp2HY5Z44QyDTXT00OX?=
 =?us-ascii?Q?ERlDiDkGmrwxrCzGgxVLYkldSPY9p47pd2oZV5T8xSaMQ6+wuZM9ns3v44pV?=
 =?us-ascii?Q?sbjwOTCvM52ukQknQFV2AesaLHnYMWJL6pvqNyvO51w5pVg8peLce8J08zes?=
 =?us-ascii?Q?WhzgYX4ldL6d0vZGPoPUXLBvYv+gs9QtVWodxuFmY7eaKX2yF6kZeh3oj0gy?=
 =?us-ascii?Q?+1jTRRU+6scW5SAoa5LYG22EC0a0ZvBjVKhuTDmH7QoDoYK/M5WXMjKWobVx?=
 =?us-ascii?Q?SNCmx9aRmcSes7JyZnchQ6pYqcloR7M2zFGkiNAT9quZsLiBTZsz6qM9CcGO?=
 =?us-ascii?Q?XsQZd+6/CfYkWFWM0brbVLhJ6RkHB+3tlIWK0h2ONCY6m8C/1zhYPx8iLrJS?=
 =?us-ascii?Q?u8F7gnVqwO40DJI2i3O98LiMi8R6KvMTdB2XWZnJtlEttGkBzsZl+EImvr+C?=
 =?us-ascii?Q?EGXPOzfuhR3fCvbG+2thK5s5+0tTznDn2UlF+W3OPlNL5SFRK2uDxKRExS+b?=
 =?us-ascii?Q?faJczNVatIFlwY0Xo/csP0rQsiml+hOQ0LGkfu+ehb0LXmUpvE8sXCalosSk?=
 =?us-ascii?Q?XG4Jr0y9BK2jsbu2bb63tPkkdoiAPqpVSx53Qpj8Mn22QygBXxzY+rKi1CPn?=
 =?us-ascii?Q?j9I4SZSO9Huh0xuwW55veis9KME1j4IuemLdgM4ByiZnXPZfAoEXNaA/E1LC?=
 =?us-ascii?Q?9uf5LfRxuh/HpBh+zqDOmZ0peIceZwjhQC3a/7SbGk9WHBz5pD6pTqpwoJBD?=
 =?us-ascii?Q?9J1tRk7H89wx02Xm+DmUnjKcMk2dCf/mSykkGV+mwoaJRFat+3lt6BpPWYiX?=
 =?us-ascii?Q?N4YRROSbAu5EMtMeds6Z5p5eDhltbd522QLtMuTf8jV6mjNAvtO43Fn8Xyup?=
 =?us-ascii?Q?FsspreteMTtVU8RbrdIvG3jONbiwwu23Ujb/SibwLlfUxuLOvUGabrBL3J/t?=
 =?us-ascii?Q?Bl14PGxnAqrflLlUC7cFl4ufH745y8TCWhyDuWjOM9nPQGZV4WruYJ02Q6it?=
 =?us-ascii?Q?f0hO2AIEiPDBxN4oGRxWafBYxVBF+hSDVKpJRbHDafockon55doFTjHe+N34?=
 =?us-ascii?Q?CABk5RlHXHgEkn0Gl+ue1gfo5mNycMbz4bx/04e2tSFRqar9RAazibk81VjA?=
 =?us-ascii?Q?pfNRIX8uGvOKts9eDMEU46nCPxBbKK8iUyuKRNDKPB1k7JfUyk5b4OUCHzlk?=
 =?us-ascii?Q?ArYwxYAQ5JalbNECJaCKLQJNlCQwb2tenniQdykf/dqeBUfDQt0UEqlD/9C+?=
 =?us-ascii?Q?M9waUSNWp9ehkN1Azb81zKEnILznssJqsmD6lShoRBJ/HOpj+0hQeKU4c6ro?=
 =?us-ascii?Q?t6WR40p/9LFJWsrRfQtKea8uRwhxjG8HSfbBhGybcon91siJnJ0HrLIJ87F+?=
 =?us-ascii?Q?PUHwAhbctJDmOOklKmfknzlPu3+Ozqp3cR1W68OaABDHEMIrGT9DbYoZHwFh?=
 =?us-ascii?Q?EA1+ikRxAc4wY0DF4dlvaNe57ol5kNFK25dJN+hjcWE4RarFlXSwhwYZrIZ5?=
 =?us-ascii?Q?0kBf+07AWs0Tl5XhbcGvEodqXWI=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: bd1ad1da-82f2-4727-3d77-08da9a33b206
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:04.8671
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tcS+0WfOD6HXzq0O3gIsC3f2U5yFDfDxuKVIE7fG5tEgoI0Ahm0TggvJZL2rFeYorIUlPnbgQ2xw2v12Lq3GNyt5dZ4Yt5VWswUYQzOmRcw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044012_466704_23C3D7B4 
X-CRM114-Status: UNSURE (   9.26  )
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
Subject: [PATCH v2 5/7] arm: rockchip: rk3568-bpi-r2pro: remove io domain configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let the recently added Rockchip IO domain driver configure the IO
domains instead of setting the bits in rk3568_start().

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
index f79f975080..36f7acd7d0 100644
--- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
+++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
@@ -15,15 +15,6 @@ static noinline void rk3568_start(void)
 {
 	void *fdt;
 
-	/*
-	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
-	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
-	 */
-	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
-	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
-	//clear bit 6 for 3v3 as it was set to 1v8
-	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
-
 	fdt = __dtb_rk3568_bpi_r2_pro_start;
 
 	if (current_el() == 3) {
-- 
2.30.2



