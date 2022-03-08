Delivery-date: Tue, 08 Mar 2022 17:27:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcg3-004qHs-In
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:27:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcg0-0000h6-CG
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:27:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IzlB0itIqGU1KCH+64dQdDx9w7+ZDNs/d1KU651S34=; b=Igr+VUvdCmR38h
	dOfpzE7Wd+yrgGn9+wu04fmxx3QIzNAgn2eZ0UC1hByq3ijdApfH60GzjpeY98wIhmDsdn9vX33r7
	0JTZ8X3zy4/JoZlv5IKbqZxCXKo3o2qGiz/Ffcmfrn1PLZhcVSuGPSB8Eg0H1ApZJO2DEx5YWfBw9
	OjskRJIHHQ13Nm9HPQuH8qCl0lluBLkoUE/AY8Rwwr+bhiX7ao+T2Fg2cxzXiPiWUpEzSsUoOgZ3a
	MNtiztx01gs7HZH85JbUcRUXDpUhIhCT6e8TaSxs04p6Uncl3yAwYD0DglQkrraZHFZLI9wr2l5/W
	LcAgZgwY0s3rjyYMzGLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcdx-005C2x-0u; Tue, 08 Mar 2022 16:25:03 +0000
Received: from mail-he1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::626]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcNu-0057hl-8m
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:08:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7oIsA7c9FySQKn/OWYx4ANJ0AzkX47p3tpwUffccFTcwWyBk4ZbVxh5yeV7XJdaTRxSED3TdFuH8fheexztEWUUO2CrAwENsp1L/M7mKvP42+lvCFrxU806M9C0X1RFJjx/vA9TCGseOllhfeZho536ezRou3GMWcoPEZCLPqoliAaJ752Iyr0xbPPM7HDkaCVPN3HwQ4WiGDEvB8R5wdMGBDIwAx2UYM+3Ml6tMFYGPbrsV8vfjQ70riJBdC87xjonpO32ILDQVILm7Yw/iGIkIP6qWiZwN9OFSLCgqtvvw11F+GnE/Z0WLs738Q+bJ829xbDjZNSGrZ6EVyx5Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x/9Wyl4QuaOC4G+feBzI4M77QjUazRSsBcjmHb4z7wU=;
 b=gn9uxzm55BOLwqokzSRPz6DFsty7vOHQ+LJsrnwYanSpc9yHpqku0GTM2nmj7PlUVibskb++boIxmhRFpiGU+8s43ltEA+r4JtWUJWkQQNvDhPTb3dccvcoZh/PzOuSJw9mLVmw+7yFcAzErTiL42VMPU0kFp/xDx/byoR80gjQ17SUTrrDB2itVu36/5mfInAcI2Gsho79sFC8031E2ZwkIb1ZnTh/LnPo+c1UrS6wPCYdjIcYAihyoBaTeKK8anLYH6AqHSqL7rVWqViSsyUl7gBu+WIHtVfm5hBSXhMu7m+4hfEEm7zIJsBlWTl7daIBVeoneeYUPfZhktBXivw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/9Wyl4QuaOC4G+feBzI4M77QjUazRSsBcjmHb4z7wU=;
 b=zorUdr3nROZ0UjCq2x4r554MCS+mAwesGklR6c5Zf47TptpFX9+qdilVeLnWTBcTn6rj/TM83PmE+L/YnrWcfiAD8r53uXBb5694tLdJ+k9OJfBhZrrmyCypbzPvvmgs6pr9ZCtsN3bbRb4PzefqWB4GWHkV9YI+XkPe/B0RV30=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM5P192MB0036.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:83::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.16; Tue, 8 Mar 2022 16:08:12 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 16:08:12 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  8 Mar 2022 17:08:01 +0100
Message-Id: <20220308160801.782206-4-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308160801.782206-1-joacim.zetterling@westermo.com>
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0091.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::25) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8897c08b-e9f9-412d-6472-08da011dd83f
X-MS-TrafficTypeDiagnostic: AM5P192MB0036:EE_
X-Microsoft-Antispam-PRVS: <AM5P192MB003670D75B1502D7D3B671659C099@AM5P192MB0036.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VjjoQU8uIv5xrXPLLT7r1y+LuLqlQAzK2DyRm94qchlL20l9UVqfXY5G+5wB6/sJQvtq9WcE1hFBUDXjzq50YJEJ3WoyAyq53JRxxxmJVFoivu7pQ7BETUYSxsLVlxen9OkBeUefMOEtIPspsmRVjGfP9sC81Nr6ocke3+y28EseMoTO8zYLEUbCdQIAkl6FPEl8gODAcq/gMQVduT0eT3BfHk9yLGzZ5/WjIp/xBmz4mosv1PZIQBhIgbxrEe8skZBpbcxtPW5KavXeM37IQsRQ30BYjOxZE0jZOATOllAGQ+dX/1Cg7tAqOZc92WsT8bEyMlFT8/fq9HcbqsHBt5lYTFi3SbsChs2oJ8M/IIBXn2CAUa6/e5HjCWOXxxhyJjCgwo2g78GlK96Uy6laz/Dm7Lygp9FlC+DPbXxvyAIMKlLlhzI9YRHY63a2z7wPVavidsngtGEUPdGuUg5xE+cOVFhX32r82R7+EmVcSYNbiLC65ygv6se+oEKsGceKrI7ne7XLXnlAMmcC8Ve8KKdmqm3O3cOXm6SQunXNPb3yrrf1/cE15RQtWVFkQ0bJGJlCaR8eHgJMGCGcY9QsAbI15Ms6OapNjz1arQ+uZHquLWYDbkJmjXJvdzvhlFxVlURIQJt6ESAKIS3zs0i1hiW55tNYFIRN5BhxjCGJXcc/KNgMYqfCO23NZH+8gv8FeDVgdkNU8XHWWVoVVvHLJJ6lVsZB4fOuTaIas82AzBY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(6916009)(36756003)(6666004)(8936002)(44832011)(86362001)(316002)(6486002)(508600001)(2616005)(1076003)(66476007)(2906002)(186003)(26005)(6506007)(66946007)(5660300002)(66556008)(4326008)(6512007)(52116002)(8676002)(36916002)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CC6b2xYCSFY5P+3vp6ltglyNEs5fAuhgpzq3/lcvLu2VYtUkyWqPcv4m+NUd?=
 =?us-ascii?Q?Qej3NDwYi4tH/c4Lv/VeLt8nLDwEiZ+pW2okn+/EoyLvJcgut7xEPgPlRCxU?=
 =?us-ascii?Q?qh+hAqOqbpcrXfJri1Y3kjMrv0Cp4AA05zxfhhsCYzDNYzKdoodg3VFjmLHQ?=
 =?us-ascii?Q?geaAuJ+GOfzdz895csPNYU4amDNYwkQrZDoSUGLTrJT63d5PH3st9mIX7eLD?=
 =?us-ascii?Q?Wqbj8oV6bFWjfctJQ66jFuEmDF9UADtjw/+4BuH/VKVCfDsJbZdsid3NQAYK?=
 =?us-ascii?Q?MPwv43Jby4RR8XFasD4J3eSZ5dWSMK3cR7hc/vUMzSmPQwqsR/Z0SPIRLbIM?=
 =?us-ascii?Q?aR1B9yE2k4IbYpGL5axnexTPEPy9x0HAysE+UKfRBgaykazOn4vGr2uDOg50?=
 =?us-ascii?Q?WhDS/vT+KHwyqihCzTo25pu7+rT0daJ4OiqZ72DUWIEhy5NNFGTauISQTEAy?=
 =?us-ascii?Q?7ELmGUrWIKNY5CFScFdHRAt+tWDDBBOgt5UdPfkpbbkWR+8spDlZ06FhBFmz?=
 =?us-ascii?Q?RAtI6pBkxTk/DE9S5ZBknA671YaJBqXFq0g2Fa58uosCBDk4xFMeUcL6ThtW?=
 =?us-ascii?Q?pAzIIIvhRmh1ypML47DIPMcDfeuyytMAVsf5Ugj9xIF1jCMRXvsZgkv0hZpM?=
 =?us-ascii?Q?Mm/0HKSt+n3p7dP2SE3xens182BR4lDXhkgCgabpjzf5gpvVzaoCDuqxFsA1?=
 =?us-ascii?Q?2hoLjmnwPSRk3nevefqlZsbM/sOhjTyTIXZXb8xCpbEREDjGsCoJPazrkitU?=
 =?us-ascii?Q?711VXvufiGoVH3h1bCS0DrUoLQKlWDdVp0Hdh2bTNWWzQkglLLNAkHG+FS6Y?=
 =?us-ascii?Q?KepLKAzMOj6zM8POW8apYIu3OaY5ZB9jRTjGPqItMH62i+TCJEuhtBBeGNMV?=
 =?us-ascii?Q?yp6HbI8fiGmmR+ssh+nEdsO4SZwGOoiQPDNxMWBz4PANPgpCY37vV0VyNjw7?=
 =?us-ascii?Q?PoTyxdb/L4zUAjtsEUjMc2QvVvxGEyFxebA8jVcsFC/dZh+9y0xARsmv6cPx?=
 =?us-ascii?Q?Nfki0bQRQvUaG53gXtLOU7WoW0s8tiKyKlCHT1lq5mE7/zbRfJPisDwTZ9+v?=
 =?us-ascii?Q?oXNlqND67YQiB/2jaypvoHxzga8MIqgFSloCw3Vb/SqEOo36FiG/EGoOMuE5?=
 =?us-ascii?Q?zWM4nFb3WYj4zyGAQycmp7vXB2Q4CH3pSmrEyVHaRm7OrI+o+CgubkahrADJ?=
 =?us-ascii?Q?R8C/+jBlopgPRk6VotoameEibC8kDT50fF+H2G1wtOYxK+8CnJolmHy7Jis0?=
 =?us-ascii?Q?u9xnKBdFhVVNcclgeUmxfC+mSc+hTHqT10Z0pDKRq8ix8u5kV8E7bTiZYVlb?=
 =?us-ascii?Q?0wSxzV2VBxPS8E/H0VzLSmGI9nvrJY2+O8kCUliwbNFzWqW+er6Le3oY6roz?=
 =?us-ascii?Q?kZdJJ4aOzEjFbhakjsgH/Dol/oPrtTFzkqfiTkfxKx942nYExuzZqDyhlpH2?=
 =?us-ascii?Q?1LVoMFCys7h5HOuE1welQhx1JhlNh/0Am+nTK8G06rcRrqYW3oYEqNotruRh?=
 =?us-ascii?Q?DwjV15qaChkyErk/rmqKwwCBtJUKTqfAHdhLL32nwI5ZZU/Pzzrl+H1wF9gE?=
 =?us-ascii?Q?X7Km/r9s6vYuiIxOJ7CxPkWhBpne9Bd4bWiIg0JL5nK/qt7qlQRduebnExLv?=
 =?us-ascii?Q?E5mY7nvX9KeJNEk8dVQoN24=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8897c08b-e9f9-412d-6472-08da011dd83f
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 16:08:12.1933 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r2wp7AEb+yk84Td23ylWtrIJM5N4uOoo9Ee8/jejkXE9DWhz1WN7QUmDLHLLs+e6CWJfLLv+wW5gGKNi6gVHgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P192MB0036
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 78.70.143.124
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM5P192MB0036.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_080826_362667_73D1A05A 
X-CRM114-Status: GOOD (  14.40  )
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
Subject: [PATCH 3/3] arch: arm: imx: spi: Add QSPI boot option to the
 IMX8MN-EVK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add lowlevel board functionality to be able to boot from
a QSPI device.

Also added configuration parameters for a QSPI device to be
included in a final QSPI boot image.
All configuration for a QSPI boot image are controlled within
the board flash header configuration file.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 .../nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin    | Bin 0 -> 512 bytes
 .../nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg |   5 +++++
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c         |   3 +++
 3 files changed, 8 insertions(+)
 create mode 100644 arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin

diff --git a/arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin b/arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin
new file mode 100644
index 0000000000000000000000000000000000000000..b39e85b8442f27660eb8d797233cdcc02759bc0e
GIT binary patch
literal 512
zcmZ>Bc5`B2U<_jb0cK_}MJmC_$b_s#0GUIG&CMdg!C}CnLP*`HJb@5k1j&O50t!*3
E0ni%)6aWAK

literal 0
HcmV?d00001

diff --git a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
index 27a2138e4322..232ce5f59bdf 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
+++ b/arch/arm/boards/nxp-imx8mn-evk/flash-header-imx8mn-evk.imxcfg
@@ -5,3 +5,8 @@ soc imx8mn
 loadaddr 0x912000
 max_load_size 0x3f000
 ivtofs 0x0
+
+# Uncomment the following for QSPI boot
+# header_gap 0x1000
+# bb_cfg_ofs 0x400
+# bb_cfg_file "arch/arm/boards/nxp-imx8mn-evk/bb-cfg-param-imx8mn-evk.bin"
diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
index de53213ebc77..c8a43e48c085 100644
--- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
@@ -170,6 +170,9 @@ static void start_atf(void)
 	case BOOTSOURCE_MMC:
 		imx8mn_esdhc_load_image(instance, false);
 		break;
+	case BOOTSOURCE_SPI:
+		imx8mn_qspi_start_image(0, false);
+		break;
 	default:
 		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
 		hang();
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

