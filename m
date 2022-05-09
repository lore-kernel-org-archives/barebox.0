Delivery-date: Mon, 09 May 2022 13:38:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iW-0076OR-KR
	for lore@lore.pengutronix.de; Mon, 09 May 2022 13:38:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1no1iV-0001Py-4T
	for lore@pengutronix.de; Mon, 09 May 2022 13:38:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROCVaIhYD3sUKUB16IYUX9EsCY/6xSVpjAuCAga0rZ0=; b=xLY3W5MmIauBcH
	vTOAuNOb9p/P7YMwjIeTeLrzgRb9enzhgyEjyQp+WnN0aqX0Nf2wgaf9ozJGmqOGicVGOTLUIhXki
	UAUpGu1YXLXtpQwNK50TjYHdPzAqZnxOVYaFrIqu6lTAH6+VKuVsbw/SEWHqVFOjWmx/Tmslc2mzG
	xCBbyGxmqb3gv6tge/hudgph9ey4hafspFmin6CoeoefdUpgel3QbqtKMM6hR58BdIYhh1bQpOFoa
	j9TuKXNd61k//xwo9AcTbxU0vxVurpuKaGNZx3D1pGxKhVUwYBq3skgF9vT57/pOrON+wfPqJuMj3
	KpeKSPY7Fpm0CcOB0Nvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1no1gt-00E85I-CM; Mon, 09 May 2022 11:36:39 +0000
Received: from mail-db8eur05on2080.outbound.protection.outlook.com
 ([40.107.20.80] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1no1go-00E84T-Vt
 for barebox@lists.infradead.org; Mon, 09 May 2022 11:36:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ieg/cgQ+mjq8DHM4mgk1YjAU52gvXC/YO9hg5A9NCsayzuFyHaknZvCDIJIFBti3evDxir8c4bXcHLL7i+d/3mlaTZcKgCpYuy2bOZJOQEqm1wG8QZvA6/RcAdhTEZBHhqtbubpd4d/n0mO17Iw7jXfjA53uaLcv7RSgorZJmEo8dXj6KRRs7LlVfoSto2iOA1COJe72vmgyM43uZgQ15ecjYk7U3LZEghpkK5uOdIlVdY4KNWiWmDj8O8s6jNY7LIFKlS70CPa7i3eT8My2VmLDuqyiAHpfcGgJsFBrTnZ0yMRV3h9yJymk4/CZtRb+ZdST7ekTE7c5WeDehwZT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jFlbDcINfHQtgBWMLYNjoh3FTXOXGLNYU15ShERznGQ=;
 b=caQDDWdPMfo/K6XCu8pXyprMGJeLr2HwbGd2gOT5vQp5XlwXMhBiim2051u6js0jnUaZB/VHL0wliz6sagngXY6OCXJaeC1/lZXFQK036bz/PrO+S19Av6KkAPpyEkWo9UeK7YZ2win3NZlCRNG0mNucn0ran7dZ7LD/DILbWlRIpo3x0n6Zq1sz1biiQmNrljdwFMHhz8h2F/hbEOFHmRhMNt308p7KBYsnojLJOTmKi7qh0tx/CjjnJ2gh++aYm1waCtHXUOgHouaYki/s60RTJC0L8lNGnoZ+Iu8djIk3DL+H+32YiIepEOEHIdk7CjA/xqMK7p/9XTiV5nsEhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jFlbDcINfHQtgBWMLYNjoh3FTXOXGLNYU15ShERznGQ=;
 b=eCYXjQU99lgIWd+ogkeoEBTyB39njxVlJeYs2CKUT+OZAaN8JPdYS6I7TMguMOQYIIG0+B3OZr/jsvs7YLK5851JB/t0/IYRoYO4dySmxN7TR1Iq5xVzc3RHEdgsb8GBfqLjuPzomrz2Px4fgC+z7mFE39Kk8KTo3bhkRr1GKNc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com (2603:10a6:10:cc::10)
 by VI1PR08MB3023.eurprd08.prod.outlook.com (2603:10a6:803:4e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 11:36:28 +0000
Received: from DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9]) by DBBPR08MB4348.eurprd08.prod.outlook.com
 ([fe80::fdf6:eff9:d68:ea9%5]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:36:28 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  9 May 2022 13:36:16 +0200
Message-Id: <20220509113618.1602657-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0111.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:20::8) To DBBPR08MB4348.eurprd08.prod.outlook.com
 (2603:10a6:10:cc::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b48aeb0f-83c6-48d4-6044-08da31b027f8
X-MS-TrafficTypeDiagnostic: VI1PR08MB3023:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB3023B8EAEDF8BA46BE62B9A9F2C69@VI1PR08MB3023.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 53y1uYCIadXbeWX6bT9IuLcWjTAgfg9QTfXKX4YFhhiOjoXHT8+00u30CpsrEFxBbzqeEwmCFbq1Yc0Z0OvC8pbonf8to8/n8bSR6333Nna1oqcBRKWYgOkcQzwp1hbmIZiPPpS5V3jcCCG3CsgD6EcnCeWsoSesjx7BgviGxvncDRylL2X3TQVNcHgO4XVHWjZTAVNaAVJ16toFmas1OL3XGRvDLIxdREwmEZyC1YnyiP+zfrQKp0DU+BbG7Xo6V7CSwvBW4GDefcz3axPi73pObVlVRwJZ2DA/8/18rZFapWXkg4DKk47P5XJJe+EpRB4bpoJ3nEX/UR9fCxqz5IiqAHTcIzJTVVg/K/JBGrDVPJH2YgzK9ySddP3MDi4TZPh26xY49qR9JADFrrTDbit/ZUubsW076vXNj5XJGJopGQvMXCHrFuOzWW8QJY1gqctWA6Ko1Xc+3DbqpxDLZ+H0jL3+lGHaqUAN+6AWMeqt3ExvnDPTRqyKepyYAnb8uHuCuXA3HkorB/YhsVlBBIKatTIISpZOPhWfH56gES127CuJUxaILujn1KIsSa71m+PVaxm1g0wmMNI1tmEHqsw7Xx4uStW3o0Hyb3yVKldnYm6Mso5Ri/JxGgYrOLojNetFj6YSOdRc4QHfVmb6fg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4348.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(54906003)(8936002)(2616005)(4326008)(66556008)(66946007)(6916009)(316002)(66476007)(8676002)(6486002)(38100700002)(107886003)(1076003)(86362001)(6666004)(2906002)(6512007)(6506007)(52116002)(508600001)(36756003)(44832011)(83380400001)(186003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DPLPpbma6UCX7OG3QiSvfS3Oy2hMhz+NcL0xpQStsWwXYr/dYK6wWvpWESkt?=
 =?us-ascii?Q?+WJi3qBCQCAxi6buhXDbHQdozbazcmTIsPcOC3rSW3I2kzrx0IePo4f0e9uS?=
 =?us-ascii?Q?CPDuea+Iu4iNDZPxuIaS09LZNY1YYPa24IFEat4cWUXydN05qQSEj4o0MBAt?=
 =?us-ascii?Q?kEGry1CCKOtznEK59ndhNztLcSu07SaoPHXAORM84MLkgaGT3X8qsXptFxrR?=
 =?us-ascii?Q?0pu8/CrnJeL2tpdomcNB4MN6mFAmpxQL62dvT7+YSaVUN759gKbfWyWC6cd8?=
 =?us-ascii?Q?2fk4cRgu/cL2lz0dA2Q0Cu2VVy43arZt21362ry/+cNVBrIfPnyNBeHvi5kS?=
 =?us-ascii?Q?m51+AOq2XBJ/58CrQFkfF1D8unCNPpGaCq3BQqWew+5WjW0wZoqdllkTUxgF?=
 =?us-ascii?Q?xdLZ700GqVpHUUeT2d16W4ArQdrBBk7IqK1ypf3q2LSnTJFOLFQGZbdwLZCf?=
 =?us-ascii?Q?9G18n1k+K8U1Lt4EfQfAjJ5+3+aCoiLA3XkXumG2sqhWROXxrJIT0gvJaFDl?=
 =?us-ascii?Q?aaEWzfXth6TYgQ9PQUA44APb31ZAJpPza8wfRO8YU348acRDqQ5PAKOq8gdf?=
 =?us-ascii?Q?VqSSsfhr5WzEQGBXS75E/uTbRM0PhpkEfky2Bi87Ie4/zqliG49JCWt7upmX?=
 =?us-ascii?Q?rONPGXUSeM7+mogyvcc5WJCo4dAnz8c0ga/8IN4cTnXQLc6LcsShajrtT2My?=
 =?us-ascii?Q?7piZkMVwRr85KZtSaok9/yG1wELOVXr2GcsNHdtsquNIFoAmQT//x7yCznQe?=
 =?us-ascii?Q?AbOZAt50ahZcOnQhrfkzhOcUlmDooqefOxAFKe1/Z6Ip/m+HAKrlWWjk4CUI?=
 =?us-ascii?Q?8bvCuoxAPm4iRbGHEYgGpHyDClTdU1OQfmv79rmUwPGASqiu6UE/CeCfjcWc?=
 =?us-ascii?Q?/yCln9pyEgLNbnmpbf3GBUpdvybRaKWxcnu8E+ByTN0CuGVmRvo5aNVdbLPr?=
 =?us-ascii?Q?tIN6ToR4bmZ+ZGrG6dZVj/ZNAFRbuhydDPy9hwv3uGy9Qd6+vnF7W9zeCUp+?=
 =?us-ascii?Q?PWv5AwaSVCQhteKTftWyis9pxFIcEm8W1FLoXYLUK1UNLMQg3znBe+q85KxK?=
 =?us-ascii?Q?8EAQA7yO0F2TQaTk+R2RZU30PZOoO+QPLDZ8CXDqmt1sTmuJLPqd0P+Q6FV+?=
 =?us-ascii?Q?MlymnI+uiVEu2JILIVn6lWUcDCSE7px0CikxJnFIzdcFu8UFZlZSOOUIhTAs?=
 =?us-ascii?Q?kfwgr3e3PQrpiaDz08oW5v639xLxhbfkQIcvIH/4WMHlZiFsXMl4cS/fCXXj?=
 =?us-ascii?Q?bAAV+eChlEwlTAhyPEmDZ0Vmh4ktfQgFPgUpqbtt2cEA4INS4aJlSdHWOULj?=
 =?us-ascii?Q?AVtddaMOJQxFfiEHyo8vvMyVIhtddZuwwujjhcIVYo1/vQBjiAmaD63+EPmQ?=
 =?us-ascii?Q?kIMjw3ceizQyuO/j+pEu4Yr3b1k4ZxMnVstCGnSO1MjJZIpI2EOChIKGo/EE?=
 =?us-ascii?Q?eoOl3SYL8Uy4qdPfDLoN5UvIgAouMpySLL/2Z/Gx24bPRhBZzs20pFOXRY5o?=
 =?us-ascii?Q?a3TIoUDTsjjtkcbAOpTohE/B2o7ckuEyMvm553BlvsPZmLeLfam1KkLC8zcr?=
 =?us-ascii?Q?6JqFMKlxIkOV6G9e0+q3SfDa+Eb6H0P6fnFRM7mw2GLa4Jmz2kZvkitAUxYz?=
 =?us-ascii?Q?mHfG2MoG9RYNJQ10SuwyzuVDLCRrZNA1Zl8TtVFJgCJLwoXvoBFl25D3Ol2F?=
 =?us-ascii?Q?Y6fkKC3TrqYv5W3PaO7V6LAnkymreLrCfHXaDG+YiER+mmdokMGD8EFG69NM?=
 =?us-ascii?Q?uRGs8znXyTnn50KLmuph62P4sl1IzafedT6Y3VKKar3R06IboUYbV231fUSt?=
X-MS-Exchange-AntiSpam-MessageData-1: kejTngivQQZOUfSKm4796oqRO/mZ+S/GgS3UExkagITkimeDyDt61Yhv
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b48aeb0f-83c6-48d4-6044-08da31b027f8
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4348.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 11:36:28.2815 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yfZ/tpqv0Q3eUvjrzBhnwnvNHVXeoxHTY9Hcmbl0kmKbHUYqOOWUAJTYEOxD8qcyPOar8rYLVfXMlbiqGeJ6Vj0tFmpE7/CGQ5HBvq/84oM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_043635_260650_BFB9BC5B 
X-CRM114-Status: UNSURE (   9.05  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/2] align rk356x drivers as preparation for mainline dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

These patches align the barebox drivers for the Naneng Combo PHY and the dwc3
with the current device tree bindings in mainline Linux. Thereby, the
migration from the initial device tree files related to the RK3568 EVB1 and
the BananaPi R2Pro to their equivalents in mainline Linux is facilitated.

In order to ensure compatibility, the initial device tree files in
arch/arm/dts are adjusted accordingly.

The changes are tested exclusively on the RK3568 EVB1 -- Frank, if you could
give this a test on the BananaPi it would be great.

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (2):
  phy: rockchip: align naneng-combphy clocks and resets with binding
  usb: dwc3: align dwc3 clocks with binding

 arch/arm/dts/rk3568-bpi-r2-pro.dts            |  7 +-
 arch/arm/dts/rk3568-evb1-v10.dts              | 14 ++--
 arch/arm/dts/rk3568.dtsi                      | 82 +++++++------------
 .../rockchip/phy-rockchip-naneng-combphy.c    | 19 +----
 drivers/usb/dwc3/core.c                       | 50 ++++++++---
 5 files changed, 79 insertions(+), 93 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

