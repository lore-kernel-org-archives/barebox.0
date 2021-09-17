Delivery-date: Sat, 18 Sep 2021 00:42:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMYk-0001it-RX
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 00:42:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMYj-000067-KI
	for lore@pengutronix.de; Sat, 18 Sep 2021 00:42:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MQZq6WFh5vO8X9pBUOcgL2RL288dREj8cxOTQUzkeHE=; b=nomF/jAS99+TS7z7sKc+VIRZid
	GMco7iJ/681cTLr3T9/ykCsayB7yzPqX/YD3/+patj1UemxXGTn4BiBJ96j5z7wW4fPcnPnDJe1YX
	8Ts/bhkT414BReeAzSboUr5eQEj4r3EWpt7MMv3+14f1pbMucsHs+F/YhKoKlph2+yf3QzfgLOk6u
	YHCli81n6R+Mt8KsZxUQ7OF5O4pqYdXnCGHZ6o2pRVPzS9yXeqOOJf4MONidKdXgezWlSAqBZ0uHj
	RJrj2SjuZ/EyXp0pmwxixjCkx0uh30hF2UNLvh/O4nTNS524uxTK2yu0Gz7n5uMJNtVy2kcc/DvJp
	0CreqV1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMXR-00F60g-AG; Fri, 17 Sep 2021 22:40:57 +0000
Received: from mail-eopbgr20093.outbound.protection.outlook.com ([40.107.2.93]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMXL-00F5zg-G8
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 22:40:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yr4mS/qzHEbM5Wf/ZzK9elqVd/54zQiLM5HEEIUH4kpBHhidnTJWUy9EWsYAevCFEmz1Cca7PFqL09vPhzOf2WMyHsNBzTcEiQ7alX+msdRmS3PKQViHy87mlxpwwThna/Mwl6F4iiF513f36uMZHxQ5gDhD+PcH2vPztQvDeDCak/AwmaZm4IHkz4rPnubiBUlTGiaLDRTkuAsU5uF5kI4sTlTgcJL2ZVh2y56eGBhmAiI6xdQW2WVFlkucqjYSZSBcZ2UlWiK2IPLiyYpwlWWfCMmPNbgAfyTyKZjUL/PKs5ynxgqA4kJelDJpz4tpoJ5Hl5UXVOKPKTChkSPtrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=0Kfe+UywUPUjyRoVjUhv16oS8VN2Z0jxiygBwu/8eqs=;
 b=ZdT1+na+Sl5HHMj7GkYMtEe6a9KMWaN0wjh3JTOSem+zPI+paPqDJa9W4XODEucNZCE7EGmyRrt5+VLP4R61EbVSUjgQyNva/htdimlhhrGD353z+a5f1FyXxrDkZgYN1YFKO7Xfl9Z8QpsmeAQghNdrBSkmRLhPMuSNSwOq5pTVFD//0vLCyLfIwT3gWGO+HYG4Oc0OIee22NqVi8tbgNWIcikCf2qvpn/sQ6VaPWivhUTIAWhv6GBKVZRzLKrybHFSZFXaT4zLM2lSD5HTJ8CzizuFhekcIsfERIqRjH7/S7WqFWjzRamuNJwcZzkz6465W+lNZXF0fk5/0J0nIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0Kfe+UywUPUjyRoVjUhv16oS8VN2Z0jxiygBwu/8eqs=;
 b=bKBXFsp/8OpOq0glbMy7LjA41KZXmgAhNnp9qvH5db3ZEr7QJw6WaD901iXRRuCIgvENj5DLY9QcwYFXtOQ3ENWyiitG/h66NW3lCSgrHYG7YvkS/A36Uw0RpYmvSfADFyIWTofhG1LwTXXhE2WwnwQH8dJR2aI9hjwIIdqRcrI=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB6PR0202MB2615.eurprd02.prod.outlook.com (2603:10a6:4:1c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Fri, 17 Sep
 2021 22:40:48 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 22:40:48 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <d4eb8281-121e-91a3-7300-83336ba0f285@axentia.se>
Date: Sat, 18 Sep 2021 00:40:46 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Content-Language: sv-SE
X-ClientProxiedBy: AS9PR06CA0289.eurprd06.prod.outlook.com
 (2603:10a6:20b:45a::29) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 AS9PR06CA0289.eurprd06.prod.outlook.com (2603:10a6:20b:45a::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Fri, 17 Sep 2021 22:40:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fac52cd1-33c2-42a6-039f-08d97a2c31b0
X-MS-TrafficTypeDiagnostic: DB6PR0202MB2615:
X-Microsoft-Antispam-PRVS: <DB6PR0202MB2615414808AFACC25F45BB90BCDD9@DB6PR0202MB2615.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:398;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5ZOZxj76xN4ouCGX49rqlJeLKo6s0MnP9tvK4pxi0Jb98BaaGcBaxUTX9ISrOzqwFrnYShdNyAvdVERfo0Og//cljL/NMXSWK9qy3SELn6Z9NS+LiIigkPTAzNxA2OLSGcmQ/tCaN52F/E1rPcTimfMOvY84ESua3Qz3eN3zDcER2DbCtFGZ7T/VVIHJL1hg2jC46KmWCjKl4u67YBver4zqCcEqDBMLiFLKjFrAbOyPIk/mtxGadwGILGD6txLAFvG50wWrZdK3vCDXyMDvsIGO/JzKNZcBSpMBqJ2uKsJ84iqNoD91h6zAOPeqZ7zbpp51dyVS1duHozcAX58rL3cR81gahvMZ/rd9zuRg43yVtpNkSeUnWhTSw7C92BFDQdrY+eauolRk/ysAaX2fE3SRUkx1Hz1+C5b5Nj31p4JZ2QulesP3OpOskZxIIcPJZbrVc9iF6VBknntjqwcpwH0sdHqfwomkcaYZVqO7hBvfTbvlEiVHgaENzVlL4uCgsWMBoNoeTE5I7k5SovwPdZWjxVTrTCAa0R055uCL/lBCSxf1jK858PgaNYhz3HpZDLqjPjH0yi7mYUR7tVBO7eAD4OCsbQMh8yperklU6wfO0Ws5AZwfrutVAhwVfh9NA4e2VBn1IHgMOAQLnE/iGPETgJSV+iydj68sW5kZ0QvrSrwYlUlcCLi93xHWxDmm3U1CX9+lD2w4ruU86rjuRFaT54VAHzYvI47g4+X83gk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(376002)(366004)(136003)(346002)(36916002)(186003)(66946007)(316002)(83380400001)(8676002)(36756003)(6486002)(26005)(110136005)(4326008)(31696002)(5660300002)(16576012)(2906002)(478600001)(8936002)(86362001)(66476007)(31686004)(956004)(2616005)(38100700002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aEFFV3hNWnVrRXM0SlFiNURHYWlZYzBFQVgweUhXMTlkTlVsaGVUK0ZIRWM1?=
 =?utf-8?B?eVVKd1NZR3p1YkhWOHU4Sk5pYWNOeVZMcE9sak9pTm84S1Y4RFVMZzIrTnBw?=
 =?utf-8?B?aDhLcVlMUlAvWlA1bmc2c1BlUDZxWmoxOFZTWXNYQmh4bm45cU9yQkFFZ3kx?=
 =?utf-8?B?a0N2NEd1Z1lrN1lHN0Y0VFF5VUxFbUNIbGJ2ZnVqTXZkYWRJcDdQK21JbldI?=
 =?utf-8?B?cFNrS0RaamFMSzVsc2JJb1lzNVNMeXJxbDhMUXVpSEs5OXFCNmpsZGdycEZh?=
 =?utf-8?B?L2xIejJtUUYrODk0OUE0RXZOV2Y4eUNUMDEranJXRUNYUXFSZDAwMGhBc2o3?=
 =?utf-8?B?Y0xkOEluMXFhaWpXc09BZldocFRTeFYyRHJCRUJxTmd5UVo5WCtDZ2tkSmFp?=
 =?utf-8?B?aUk1VDhaUGdBZlBPYXYzUEN2VkZ5SW5OTnRkZXM4a1ppRStaWnlBVTBRTWVL?=
 =?utf-8?B?MFNiQWhoRXhFOHNONlhlQ3F3ZHVIVWp6SlA2WktrNTdwU3Y5dkNNQ3ZoaXI1?=
 =?utf-8?B?Ulo5S3VMdWtkQVVIT29OWEcyS1QzbDhhTlQrVEdHQndJNFVZQjBGQnNiZDBp?=
 =?utf-8?B?NDh1L0UvR0prSWR4NDhsMVdZM1JsVUVsRWNWQmVGeWpheEZ0TUNaUjZSczFN?=
 =?utf-8?B?QjQ3K2tza1AwQytkVXZqQ081enF3MkxtdWZubUhDZi9OaHE4VjgzeWlWYmtC?=
 =?utf-8?B?OUJOci9tNHFCMStnTGNRMGJYaFRmTFgybGxNRDZLU3ArYUpIQ2F1bS9CMENH?=
 =?utf-8?B?VGRzOHhzTEM4OWo4Q0g1bVo3cEdOR2pLbHcwY1B4TDFEV2daTEt3cGowZEIz?=
 =?utf-8?B?MUdrNXhaSnNmR2IxeW16UE1zK295M2J2RkduUi9WaHFSdStBVW5taGNkK2Vh?=
 =?utf-8?B?ejBpY3QyV0xIQ2pKYUp0d0RvdVNxaG9HYzErQk5BZ0dGNWNnc2xIZkRtWDNJ?=
 =?utf-8?B?eXRHL1I3QUVIeERVcGs2REVDNWlWN1JYeERTNW8xTTNzQW8yMnNkTTNqOG5n?=
 =?utf-8?B?RWFTNEhXS25LSHZ3cW5pOUNzZmhjVTAyVGJEbnVoMEtxK0c2YXJlbDVSZEhL?=
 =?utf-8?B?QUhmYnh6Zi9jUSt5S1FuZ05TYzhUYURxYmVUcTllODMxMCtTaGtJNU9WOVNr?=
 =?utf-8?B?R2VxZHJYSXV3dDVGdks1dGZlL3IrVWdNZ0cvUEtseE5ET2pHY0NWMUZwUTA4?=
 =?utf-8?B?MzhzOGh2Sk9DdmVEL0IvczAyZXQvQWlhU3BEWncxQk9HL05EZGlsWVBFTUda?=
 =?utf-8?B?YkcrNDRRMWRKQjBtTlYzNVVQcHlGRGtjOS9kdnJWN3JSNDdYUktqcktlYmdD?=
 =?utf-8?B?WlVKcktrUk5BeEVLR3RKS3hCWTM0MWtvbWk0Qm1rUlJqckpSWlZiMEU0ZEhq?=
 =?utf-8?B?VExSSHJqN2pWRTh3M0ZhOHNvSEJQc0lTeXRzY1hTS3NuYlV6YS9TaG42dkJv?=
 =?utf-8?B?Sk9uSCt0UzZuU1FRNDFXVWdRalA2RW9ucnYrb1JVUTloK2RoK1ZJSm5HTjFD?=
 =?utf-8?B?UDBsVnVVU1Y5Z0Y0T2RQRCsvK0lwQm9JdFVZS2U0dEtwZFQ4NER2L0lORWJU?=
 =?utf-8?B?TnZtc0tLM3h5TTRtZm8zTWN1cWE0QlVpS3F5bTNPMkxiV2oreGlCNXlHYnht?=
 =?utf-8?B?WHg2SzVZVSt1bE9RcXF2QWtLcE1XWUduZDhEOTVKNlhZYThxU2REVHMvb0xj?=
 =?utf-8?B?RXd3MVpGcEUwenh6d1NCcERJbTRGTHkyejVra1NzV3V3cEZrMVMrYTdjZ1pD?=
 =?utf-8?Q?kIWU5aOHH1wAt7gnei6taPjdxJZgDZAP4tqnmAS?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: fac52cd1-33c2-42a6-039f-08d97a2c31b0
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 22:40:48.1183 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZZIqv+boIpAwxMrn1tvOwcUu2yvGvEShntclW0HEYpYuguS/y47o0U9gbypSy2o5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0202MB2615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_154051_606150_C25FE983 
X-CRM114-Status: UNSURE (   9.67  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] Revert "ARM: mmu: use client domain permissions to
 support ARMv7 eXecute Never"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This reverts commit 3e4a0405455f66fbae0a98dc1faee5c7c39f17a2.

The patch breaks my SAMA5D3 board.

Signed-off-by: Peter Rosin <peda@axentia.se>
---
 arch/arm/cpu/mmu-early.c | 7 +------
 arch/arm/cpu/mmu.c       | 7 +------
 arch/arm/cpu/mmu.h       | 1 -
 3 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index b985aa455fe8..92b1161985fb 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -29,12 +29,7 @@ void mmu_early_enable(unsigned long membase, unsigned long memsize,
 	arm_set_cache_functions();
 
 	set_ttbr(ttb);
-
-	/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-	if (cpu_architecture() >= CPU_ARCH_ARMv7)
-		set_domain(DOMAIN_CLIENT);
-	else
-		set_domain(DOMAIN_MANAGER);
+	set_domain(DOMAIN_MANAGER);
 
 	/*
 	 * This marks the whole address space as uncachable as well as
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6388e1bf14f6..d0aff9e7f027 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -452,12 +452,7 @@ void __mmu_init(bool mmu_on)
 		ttb = xmemalign(ARM_TTB_SIZE, ARM_TTB_SIZE);
 
 		set_ttbr(ttb);
-
-		/* For the XN bit to take effect, we can't be using DOMAIN_MANAGER. */
-		if (cpu_architecture() >= CPU_ARCH_ARMv7)
-			set_domain(DOMAIN_CLIENT);
-		else
-			set_domain(DOMAIN_MANAGER);
+		set_domain(DOMAIN_MANAGER);
 
 		create_flat_mapping(ttb);
 		__mmu_cache_flush();
diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index c85e0ea05033..e8b72662cddc 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -36,7 +36,6 @@ static inline void set_ttbr(void *ttb)
 	asm volatile ("mcr  p15,0,%0,c2,c0,0" : : "r"(ttb) /*:*/);
 }
 
-#define DOMAIN_CLIENT	1
 #define DOMAIN_MANAGER	3
 
 static inline unsigned long get_domain(void)
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

