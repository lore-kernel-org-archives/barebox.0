Delivery-date: Fri, 10 Sep 2021 15:45:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqj-0005XS-Fh
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 15:45:49 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqh-0002qK-VL
	for lore@pengutronix.de; Fri, 10 Sep 2021 15:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ENZ0BRTcLpqtFgDUiL+riehM5DKHJ89rMKixcu2o3HY=; b=QCMrMcBSQ8Adfu
	Xv7HFuTaqhv+prpu8bd3nAnnyTGO0ASAWzW87oTY6sRiIfcg5oG0qvWEC3GC1tMMnfyNNsONQBsLX
	ahytHkuCfr5woDuQdlS2BX/I9vGzQyRvDHz2kvTWYZ5qbm/AL5WAQBZ2CDsIp/d1xVzR/gV60kVTj
	UgC8ejlOqtMNENpIaC2pz2Uh4SC9O6ALgvNWXPyHHqHFwUPgp18Q39UR7RVddBiOlX9vfxsSKLZG1
	x4RFRmyRrI2XjxIsYtZl6S/7UYxm8kiu3odNaUMwbhjPJWHEz+X6VCFbGbcMAjn5ideeOfxVoCxPW
	hpnRTNUFdGzrGeiWkawg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOgp0-00Cpjc-8N; Fri, 10 Sep 2021 13:44:02 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOgor-00Cpga-SQ
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 13:43:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=av2hbCYsZm2wfWgsGC1NSiAPKbfwAXZRkGboncLDLUVT0wRQ0tozb+Lxk5OlT/2HXzhPehFN02UaimGyKeBr+TeWPz/fHv1434hdRCvC/DDbFR/Fp1hX6BOOhw6A4RgKMYkzIabtyKGoz53Jr+56Wu64kf4h5xrc/+8nTSZZ4Nft7Z03zhSvgcakkwbADco5SfnwlvhJVjNz9yg1tzo2sUdqivE2K4oLUpbo30fBz1IGIwdbqrcictjhCEyft9jflfMQhZm+4c60yzOKjpfHOvyeXE17Ah66GeEw9OHgJeeG/Gxa9QETfO7sn2sS655wec+5pz8Q5Uzcp0HXg6zRug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=FGpKKsizhnNxfdVoGECFGfdqTvoehuMGZMsslPUMB3k=;
 b=HE20ETx7krUDLTUJQ/Egxc+M2Vjob/5IAdBM/d1JTtUWeN4U4J8ayz8I1dpkf2XFgie525HOEnaHxXRuN6ljYLYNuMpT2r4tHxbHaVBC04n81hpxTokTxYAYpjdQ7pHjGl1STSFk7HRDpiFG+hDZ/F5N9zaCrVESnPSBtES1VVnkqvvrJxluM5ef0pPWyyzZCv4rOad8jLUjQshmZhtaAiHeMOBwkI1TVZhMJmF5PbSVMqxAJqbdECJB5YjnMdWt/baNaDF1t/E2PoLu7dqUR5c3lVof812GbFSKnjVpnnTEWSSGqSk4lubBxg6UXImCtexxvi0Qb4MNCa6Lb5lTWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FGpKKsizhnNxfdVoGECFGfdqTvoehuMGZMsslPUMB3k=;
 b=hAcmIK+wvJQoCm1Sabh695KAPICwdG1wM5zhqzXZed0lZnJwUUcp0vqG4KmlYC04+xDm9tpbD93/8FWlTx23RTLrfDNCWWjNHlPyNqsBeLXeItcprXw1F3AbEXKYdEZ8KvKpl2ZxyTqgehQ8hKprmUpLsqNbi12lipxKXgxj8ug=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB4010.eurprd08.prod.outlook.com (2603:10a6:10:ab::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 13:43:47 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.016; Fri, 10 Sep 2021
 13:43:47 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 10 Sep 2021 15:43:22 +0200
Message-Id: <20210910134323.26136-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210910134323.26136-1-michael.riesch@wolfvision.net>
References: <20210910134323.26136-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR08CA0163.eurprd08.prod.outlook.com
 (2603:10a6:800:d1::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR08CA0163.eurprd08.prod.outlook.com (2603:10a6:800:d1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:43:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6fe8bceb-c2fa-4152-399f-08d9746103b1
X-MS-TrafficTypeDiagnostic: DB8PR08MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB40108DF4DB96ACFF26C076F9F2D69@DB8PR08MB4010.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1824;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FnccaUi0zvAqTl+cNq+AikH989KYethhQXfzOW914+IzCxP0k+ZDqMR9qUR5ryTTDcUogA7dvon991HQymx77lMNOuiQ4hWPgOJTn5ideXmtYA9ZJQRWNKvr5Ifa/MaWk2pX1Q4AQugn2nzKYcXJWdUPnc2gnFdfKe6pjYH10Az8LRkYOW2425Ifhpj9sh3wGPSYC+dATHEvDv/8jFCyXMzWTZeCg8JUc7v8cPM3r8t75xOEagncU/fiG8urBhpTAUid+nlP9551e3Wa6MVilJvK30ubi8F7UKJRNIMabNzromHze9BSFkEjB2z/QmMv880wik/5M5iLbHLNk5aNvwmwY5OFerTUauzDhHu3ZsZnQrOrWmmjXMM/2H1cfmtz5RjApcumOKL284UrnHU5HE3m/Iv3AMsGmujDyt33tiZDo2dqvkmyxSpz/Fh09D4EbcGhBOUavaIM2tG6T9EL4Ob4AW35o3DJt+gWhVAuM4NwLYaHFPsQzoDHdTOQrb+eKgbIeWoNptbPP2LC20RFuv5Iqbaughd1/ds/8NTaMMFUlpSiPX6lKEYbe7w1GyTS0+xCQ+sIUOrg/axWP5PKDya7FdjCvA6BuhP0Of65TbvoZhS7+EdA8Q/cnbWhuJTLZOtWf3Plr05E6RHr0y9CoaDpekH/yx1Ktu+fljLaUh9/secxpbCpAjteLKIUURtSs5ccNhR7ZKHr5K5fgdLcDR11D/74tmuvn6JQ2VdcxMBph/+4PVFfz7/E33KwbbglOnPIrecChWNJRNXMieysQ6PFQC81hhkKrttP82UU8Hc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(39840400004)(396003)(376002)(86362001)(8936002)(83380400001)(8676002)(2906002)(966005)(4326008)(186003)(52116002)(4744005)(5660300002)(1076003)(26005)(6916009)(66946007)(956004)(6666004)(44832011)(38100700002)(6506007)(107886003)(36756003)(6486002)(316002)(2616005)(66556008)(66476007)(38350700002)(6512007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?06BM++IRfMPW4sxktGztnGaemRs/LxY3XUmUWKQ9QiDi07ThT+IlPNz4zy6R?=
 =?us-ascii?Q?EC74vykXRiUaPLokehSCXrge7drgwBNLqHhmZURhMtuVkn4R8atzAU7XWcDU?=
 =?us-ascii?Q?/D1x8VZN8DXiHPyQoVsJRS6zbMh1FbYRcB5A6qz4JfYvFC+saSQbPL3YdmaU?=
 =?us-ascii?Q?pCKJEpHvHc/aCUSoZAFzN8D1N3YZfuz+uKQbUcgqnLb8g9ZPJqWCbg5bXI3m?=
 =?us-ascii?Q?Tzk/noXSyzrC2J+8rlsTrb8Bsf7lYsgylAqFM8j7bKhMFkkIIHpJpbFn7/ym?=
 =?us-ascii?Q?RUoKukUVnrvUAc6oPm2JrMQsZIWMDrjVbhWkf1XiwkXLsw3IsXKzljJLeyr9?=
 =?us-ascii?Q?MHluV3HkoByJrdROXaXuKzmRRy67o9fNcSEHhp53rE0YixeyiXdvtFBSplGj?=
 =?us-ascii?Q?xooGNDfYgiKFoFnOfCfrQlOmAGTu0A/PdsePqdhK0z8wpYAWjaWlK2gNJRwy?=
 =?us-ascii?Q?cqJvFDWYCFwLL5aD9Y1JEOLlxk1KYxelX8W+BH/WyxKTu8fij9FD7iEIaKHr?=
 =?us-ascii?Q?4BD9NwiODv1UQMvgj30qRoe4BqbydKobqgnOx9i4UY032akwaChrSl2O5dYf?=
 =?us-ascii?Q?gA6YBVwutxBn3oh9Tdb1pUzO0tO7qwdN3dNAfsHE9/TfYo8/4Wc04dplavvk?=
 =?us-ascii?Q?zVcbG/TIT7fvbdMMLUj6CPrvrJqUTEWVVfgvyPhB8QSQKw2VFVB2ToZmixM5?=
 =?us-ascii?Q?xcsbuCGg33sH+ZkLVl62LxJdfn4DA7itKZtKlZv9tVIEPrzfGR7p6D5nP4X9?=
 =?us-ascii?Q?DS8xQBhX0azw2cmMgCWAvRYR921mT4WZXb5xcuZgCbyRXmKTBC5s05Psjody?=
 =?us-ascii?Q?VOk/SZDUxPlk3swxTFQ5aoSz8Ye4iDuQ+HHOf+eY/ILMe1MwOAIC+MuqdgKR?=
 =?us-ascii?Q?IppGYyIYRzp1mE/EZoqupSzCqEz79F/LUQQhUr4Em/c3pMG2IMVTE6ctm1MO?=
 =?us-ascii?Q?aqSBqktkN2utO+rVYEOu6cq+WTIeY6rL8bNWmexrvYdlu8W2i3ks5eSeEfib?=
 =?us-ascii?Q?jEegSX5ApS8AA8EP2lnir1y/AcxOGQopJZtQ8BLsLkpjh0pqdTG+lSagZ5cN?=
 =?us-ascii?Q?svPLaYlcExe5ZiOiC33gjB5cXSmfnBcl1mSpsyJREKqA9QmsN9WJs7rqDNKs?=
 =?us-ascii?Q?NZ/RQmNurfJS5jtVT4G74FBuqQjgmdhyxMI/plXBSQM5cW7yGSP4fF1BOt49?=
 =?us-ascii?Q?OBfT6k05MW4kQys8h4LAujt1ramOOEE9lX6YP/RG/wxBSzrbCpRRjWEZjzCx?=
 =?us-ascii?Q?QXnyGIlvxN+qX5jtS1wG5lfngr9Z0oXsFVYEJ0F6RUs4IjFK8GI1wsgXTYxP?=
 =?us-ascii?Q?a/SGABjQgLjAkhNGmEso5ifs?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fe8bceb-c2fa-4152-399f-08d9746103b1
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:43:47.4510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Zq1ag+AU5493q3OwrXXUxr1VkkKOoGUxvWRLvGzigg8z++2PYdfMnAXkxXMviNnuCTMuyBpvPqctiVcIYtSGmD+uEfxp1tnwgJSHltWcso=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_064353_941555_87D2A60D 
X-CRM114-Status: UNSURE (   8.81  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] Documentation: boards: zynqmp: fix broken links
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The external links are not properly recognized. Remove quotation marks
as a fix.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/boards/zynqmp.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/zynqmp.rst b/Documentation/boards/zynqmp.rst
index 05d41c401..98fcac017 100644
--- a/Documentation/boards/zynqmp.rst
+++ b/Documentation/boards/zynqmp.rst
@@ -30,8 +30,8 @@ instructions for these tools how to prepare the BOOT.BIN image.
 Create a FAT partition as the first partition of the SD card and copy the
 produced BOOT.BIN into this partition.
 
-.. _FSBL: `https://github.com/Xilinx/embeddedsw/`
-.. _bootgen: `https://github.com/Xilinx/bootgen`
+.. _FSBL: https://github.com/Xilinx/embeddedsw/
+.. _bootgen: https://github.com/Xilinx/bootgen
 
 Booting Barebox
 ---------------
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

