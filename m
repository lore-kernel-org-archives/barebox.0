Delivery-date: Tue, 08 Mar 2022 17:26:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcfS-004qGh-DM
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 17:26:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRcfO-0000X5-8D
	for lore@pengutronix.de; Tue, 08 Mar 2022 17:26:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PM8wPTnTwRiLWZj0KOwQUR3yfw/S73c5y91p8kh4gLE=; b=k7XvpVTH5vlIg8
	oXK7gbgLE/StHUvRjSQb7YvoEfuQZDLhJLAkXpwOfA/a7cy904j9A7EduN75dzQYczVRc8z4fUQ8l
	M/1YmaBMENLObinQuQUASCRKPDH1vnIAe04uVUHN6ZwPDwvsw2gdAOW+IRJkSzKQxjIbkUs+T5ERe
	U4gU6nQXZDA2i1YcpjtIh4xHIQXb4x+VhBamcRMxt8/+uy3uVgEKu4+nwMP6tqB5JD63yVr0UORgA
	7yP+TgTc/SpUJoCZE/0SjhOq2kE8uewqEm7+7tXIv4ND9yOOLFgD2WvKBgCMYrqWB0Bm3WCAm37gK
	QivdQvugcBw4N+X1jn8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRcdO-005Bqt-Id; Tue, 08 Mar 2022 16:24:28 +0000
Received: from mail-he1eur02on0626.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::626]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRcNr-0057hl-QC
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 16:08:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cZb0K7KL9+w20QtU35tAXJar7sOW5MVdc9Q+mLQg9MbkrgrMeFw9ZhzYTr1v4eBoM3qKbzbPPXtqqJ90h+SgxSzy6bsqko7bT/aIrohp43nmvJckuzd71jOxEAV8YMWR6Hh83pZiNLFBQwphMdJ2Qw2azmnbXY4a3zZLI+lKt0vTnaXS/eXx7kdzwp4jU8hHVMpob+jjuI8G6xmlx4HSJ5xP725e6UDY0LDjfpG9bUrvQpB4F0F7VkdPlEQwVD3TGTWXI5ji15duYuwnXKaBATSBjtuSaXJIZZs+8i/5alasbseuxLc2/D8+l0A9E/R93oEId0Q/O9vkXWezFLVmdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLEKHdT/atfT2PPFSRsW9MQ1USSqWRnTbIObcnlm1T4=;
 b=E5eBT9M2lNzJeSdSVMIXSfGaB6Rwj979Yuwxa71IM5pOAhav9sP5Nwdft9KIVg+VHNvJydINvbJDlDG8hrrqjEcQCSBWWU6fav9/YUj+oRYMSfXeRvPUSSaglXfDZG1eYpvzIqclHFh1vlFwOjfg/Ti3Ey8BBx2iduqGik9Pp99JTICBCgIx6CLTUTmjXRK/TjsAXqMiO/MY4fpDTPD/wDuxjU5e71UsKRjKkadJetIO/gRU2aDqE1tALwaSBUjbcEZpZqVGMeFO0GbA0muewB9DFZEIJIWyubexQi37bFky55+W83iyRwA/PF+apt/HLBen62o6G4wusvj8rVhyGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lLEKHdT/atfT2PPFSRsW9MQ1USSqWRnTbIObcnlm1T4=;
 b=EfQinQucq1dg0oQFEYJDDbExhS1sZyegYraWmkvYjC0ALsjNUfqr4cNALpdoeYMjY6fHXoCgaxuDhI9C6gF2UlMyv9WYMHxKh4cz87p72D1wcSD7G8wKKDGjIst9UyT40YJLGLSfRyrJLwRzq0HKPpPLz5d/plFwI3WQISdwAVc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM5P192MB0036.EURP192.PROD.OUTLOOK.COM (2603:10a6:203:83::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.16; Tue, 8 Mar 2022 16:08:11 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 16:08:11 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  8 Mar 2022 17:08:00 +0100
Message-Id: <20220308160801.782206-3-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220308160801.782206-1-joacim.zetterling@westermo.com>
References: <20220308160801.782206-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0091.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:8::25) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e0b31308-e5e0-48b9-0854-08da011dd7e0
X-MS-TrafficTypeDiagnostic: AM5P192MB0036:EE_
X-Microsoft-Antispam-PRVS: <AM5P192MB00364528B3CCC4DF07EF76CF9C099@AM5P192MB0036.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7OlXRgoz0gd2sTM19umtMXwB7wRCkG5lI5C1pQoAZIwnJ+F5iTsvplU/3I8VoI2jcP8z7uYAu68Fsu803Zj9Heup06r+t1sV8WaCWlXJPxcp7KGsDfcC4t7KdINkUGHDrY2ITbWkljz+c+IO5IjXbMT/gpK3EFYAd0YxPFBVL1T9ipUIYzUG+04z3RrmewgoP8Yos1qltbQhhM+rBvi4P2OUZ7BtTGLdvmvy3Ec3auTvHLMdpI5cX6PgbINkg4hy3YL2VOOV4kaNeyGNNxN5/jeLR/2Jf3YTWlW+YF9kpHyhpQwTpBP/5MK1sJbzapkM/S7xQBMQKCcynisQMUZWYH/I/CmWjcmY6Yu5myql18bqPYiQxYTyiS3Zpu3iUUJn94YNfEr1q+gxC/VQX57fmw0/MrnZHzDAX6dKADALOwQJJ8HljMwBI4Wq9hO4svDZqJjfHY2LDP55+ZpIumu0PRsZpPeeui+Kkusnvr3hFoNJGrFIDsWQsGlECiJvDFOT79yI4qulBHPatg0/wT8FtfVBQfz0HRY1ZoOV/WirfeC9hsdMPwLyMnlUAMEx/reCbbYR3nXokvM57cJe6bTLweoX7YEB0YxytPtM1W3tX6ADaF9B1PZ/orWot6tjpc8NKgWRzekKvlfmgJco8EWJoo6l6pfYPb6zlnCkPBRCLrLbnVXeQlAL2ZopwR6HIFNj06GMXj0GmPMU8xSk0kVCtQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(38100700002)(38350700002)(6916009)(36756003)(83380400001)(6666004)(8936002)(44832011)(86362001)(316002)(6486002)(508600001)(2616005)(1076003)(66476007)(2906002)(186003)(26005)(6506007)(66946007)(5660300002)(66556008)(4326008)(6512007)(52116002)(8676002)(36916002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sRSOlJfDkFd29E7Bf+jHk7lEt+l/A+nfCAJkFrH1PvjeNklLOt+m1sncRz57?=
 =?us-ascii?Q?GX20Rz0WyovNXVYiyH7F91fdLsHTK2tqTdn6+Ol16P3Np9uBQjVc2Pbw1AD1?=
 =?us-ascii?Q?EV7O2NOOCYjUS4Px6Ix1nWVjVy2oRKyH2XeiaqEo/ydHEBRk0fO4CaApeFZ1?=
 =?us-ascii?Q?UiMMd2mjOHgmwkmBeDQ87FPn78+xfn1wxYtdRdQWKuETeNqjV3FmtLpt7VwU?=
 =?us-ascii?Q?of/0VlD/S+BsMJUAy2qoQnF9oPWPBkqVpTxgrmi+1ehJBZIEMsMxV/jPfaVo?=
 =?us-ascii?Q?c+h5/RPksHkUWAAlGW40mZg40p/rjdItDNRiAhoNyD9NFiMd49LnxkkVgHcf?=
 =?us-ascii?Q?pRsH1WZq9XZjma/f8NSeeMltbTRvXnoP18OR/v2vBcLt+v9Lwwahd1KeHx+B?=
 =?us-ascii?Q?MVvMBx6eQoM7wYaaZISVaD2ITxu1bYQc8J9AKZqTx1psyCXRM/dUZO65afgf?=
 =?us-ascii?Q?WClzlexUvL7082nru+hPDlcubI6+54TQrElMRMszOgXYGL1XahUogWVFOntt?=
 =?us-ascii?Q?mf0tu9j6BJXe4e2+2F+XCwyF5Y/goKBsfhEC0Qk/IBhYhHhR1qEitoyb/cCw?=
 =?us-ascii?Q?e4x6Ejea3m+BLNgOZc0VfQUSCd9VLwYnuSk3YBsfYqbDS3BzBlo8y5AJwU07?=
 =?us-ascii?Q?3sNxHpxXvigOwKjRC15AD90GJJxz3xzJlzV8to5t/FFAaXkkZX1ceduKm2TS?=
 =?us-ascii?Q?r1YJbFp2rwaHdBsadckl2vj+hxqt7y7qPshhsY8n6SIJ9pILpClVt3hm8qdR?=
 =?us-ascii?Q?UwTWf/KvA1lDpv7qsLtZnnc+vIYsgt58B0osVoZ2YYj55zm3nNiqTQoR0kHB?=
 =?us-ascii?Q?uCU+3GmRY3dpkaNy5nblKXn3Erj16ipV9fbwWaJqTblvoX/dteNux1thj8VS?=
 =?us-ascii?Q?V5hRt5gFaK6SuAOqovMKGzuCSl0K1i0+9jOhn85hHxUUDdR5o/45GW4gxKoT?=
 =?us-ascii?Q?kDK8ygcP2et4VZosTnTV6EtQnLTkCvl9Hx94KnAnmUf132OHTimeIZmbjVEP?=
 =?us-ascii?Q?oC1IZ7bkRbtu0bKqRL/O6D1d033xULZOrGfdqgyWFG7u2vyLafL27SvH3Uyc?=
 =?us-ascii?Q?qaZpEQecmdz2vBB9FmTDBWtWmTdLat5tRE/wRU22zxDvaKNLARE1O9kTJWdw?=
 =?us-ascii?Q?c5lUtT/TsBZT/+YkzXXNykO4AFyzsUB9E4f+igASaFckr4fAFrM9WyUJTDRm?=
 =?us-ascii?Q?EjUAEXsRDawNDG94TDMpjj2ZLv6Co5L65TZQoRTl3Y3ou1o1jyKUmUwQqjlb?=
 =?us-ascii?Q?gddGPQKYODMSu5a27SayBHnz3Kf5Qx9rl3Cp3p7zcQr5GnrFlyB6JlfGGWtp?=
 =?us-ascii?Q?E9WqAHhK0TupgTZ60b0K2TcLHz/003fFFwWl7w94ObtGmDmcT8fZjsliEUCi?=
 =?us-ascii?Q?7SwSKkPt6YdMGHRlXDc7+E0CAcdaNT8sde1D1Aj9LkmUZeNZCVqNAkxAuLH1?=
 =?us-ascii?Q?uPSAsBM4161ftZkB9MAmaOWkzPA9rMrWCflANobbNOt9rklnKcKT5dDi5wiL?=
 =?us-ascii?Q?pTbffz3k2ZVKDlupjn8V2dx63IwDWWylMlUyQd9VWUefeHEJM4NzwrYSgkgh?=
 =?us-ascii?Q?FetBL1FZO+qrCiAbJB1N9JOl2GXR4l/XAY++a9Rpxns5F3hgVA80VypPB3fp?=
 =?us-ascii?Q?a/ULRq+WTjU+E4UAyIhlMUo=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0b31308-e5e0-48b9-0854-08da011dd7e0
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2022 16:08:11.5684 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 59QU6gB+jT2z18pkYLn74+MT5nPfoZcSTVBnAbm6Ge+/XZO0UeQzW3uGtcRfhO8sknb0yGiTd2us4fI8lVFTcw==
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
X-CRM114-CacheID: sfid-20220308_080823_886497_76986B05 
X-CRM114-Status: GOOD (  19.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] scripts: arch: imx: Add QSPI boot support to IMX build
 image script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This functionality extend the IMX image build script with a support
for generating QSPI boot images.

A QSPI boot image need device configuration parameters located at
an offset of 0x400 in the IVT section. The configuration parameters
are stored in a 512 byte bin file which will be included in the
final boot image. The boot image parameters comes from the board
flash header imxcfg file.

The QSPI configuration parameters are described in the reference
manual for the specific target.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/include/mach/imx-header.h |  2 +
 scripts/imx/imx-image.c                     | 25 ++++++++
 scripts/imx/imx.c                           | 67 ++++++++++++++++++++-
 3 files changed, 93 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/include/mach/imx-header.h b/arch/arm/mach-imx/include/mach/imx-header.h
index 8e968e6efba3..a58deb8d864e 100644
--- a/arch/arm/mach-imx/include/mach/imx-header.h
+++ b/arch/arm/mach-imx/include/mach/imx-header.h
@@ -118,6 +118,8 @@ struct config_data {
 	char *signed_hdmi_firmware_file;
 	int encrypt_image;
 	size_t dek_size;
+	uint32_t bb_cfg_ofs;
+	char *bb_cfg_file;
 };
 
 #define MAX_RECORDS_DCD_V2 1024
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 439912a805dc..b8ae63ad9400 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -951,6 +951,31 @@ int main(int argc, char *argv[])
 			exit(1);
 		}
 
+		/*
+		* The boot ROM expects a 512-byte configuration parameters area for
+		* some devices (like the FlexSPI NOR flash) to be present an defined
+		* offset in the image ivt section (0x400 for the FlexSPI NOR).
+		*/
+		if (data.bb_cfg_file) {
+			size_t bb_cfg_file_size = 512;
+			char *bb_cfg;
+
+			bb_cfg = calloc(512, sizeof(char));
+			if (!bb_cfg)
+				exit(1);
+
+			bb_cfg = read_file(data.bb_cfg_file, &bb_cfg_file_size);
+
+			if (lseek(outfd, data.bb_cfg_ofs, SEEK_SET) < 0) {
+				perror("lseek");
+				exit(1);
+			}
+
+			xwrite(outfd, bb_cfg, bb_cfg_file_size);
+
+			free(bb_cfg);
+		}
+
 		if (lseek(outfd, data.header_gap, SEEK_SET) < 0) {
 			perror("lseek");
 			exit(1);
diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
index 87560ad27de1..a242e6d76a47 100644
--- a/scripts/imx/imx.c
+++ b/scripts/imx/imx.c
@@ -215,6 +215,16 @@ static int do_dcdofs_error(struct config_data *data, int argc, char *argv[])
 	return -EINVAL;
 }
 
+static int do_header_gap(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->header_gap = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
 struct soc_type {
 	char *name;
 	int header_version;
@@ -223,6 +233,7 @@ struct soc_type {
 	uint32_t first_opcode;
 };
 
+#define SZ_4K	(4 * 1024)
 #define SZ_32K	(32 * 1024)
 
 static struct soc_type socs[] = {
@@ -580,7 +591,6 @@ do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
 	const char *file;
 	int len;
 
-
 	if (argc != 2) {
 		fprintf(stderr, "usage: signed_hdmi_firmware <file>\n");
 		return -EINVAL;
@@ -609,6 +619,52 @@ do_signed_hdmi_firmware(struct config_data *data, int argc, char *argv[])
 	return 0;
 }
 
+static int do_bb_cfg_ofs(struct config_data *data, int argc, char *argv[])
+{
+	if (argc < 2)
+		return -EINVAL;
+
+	data->bb_cfg_ofs = strtoul(argv[1], NULL, 0);
+
+	return 0;
+}
+
+static int do_bb_cfg_file(struct config_data *data, int argc, char *argv[])
+{
+	const char *file;
+	int len;
+
+	if (argc != 2) {
+		fprintf(stderr, "usage: bb_cfg_file <file>\n");
+		return -EINVAL;
+	}
+
+	if ((data->cpu_type != IMX_CPU_IMX8MM) && 
+		(data->cpu_type != IMX_CPU_IMX8MN) && 
+		(data->cpu_type != IMX_CPU_IMX8MP) &&
+		(data->cpu_type != IMX_CPU_IMX8MQ)) {
+		fprintf(stderr,
+			"Warning: The configuration param command is "
+			"only supported i.MX8 SoCs\n");
+		return 0;
+	}
+
+	file = argv[1];
+
+	if (*file == '"')
+		file++;
+
+	data->bb_cfg_file = strdup(file);
+	if (!data->bb_cfg_file)
+		return -ENOMEM;
+
+	len = strlen(data->bb_cfg_file);
+	if (data->bb_cfg_file[len - 1] == '"')
+		data->bb_cfg_file[len - 1] = 0;
+
+	return 0;
+}
+
 struct command cmds[] = {
 	{
 		.name = "wm",
@@ -634,6 +690,9 @@ struct command cmds[] = {
 	}, {
 		.name = "dcdofs",
 		.parse = do_dcdofs_error,
+	}, {
+		.name = "header_gap",
+		.parse = do_header_gap,
 	}, {
 		.name = "soc",
 		.parse = do_soc,
@@ -667,6 +726,12 @@ struct command cmds[] = {
 	}, {
 		.name = "signed_hdmi_firmware",
 		.parse = do_signed_hdmi_firmware,
+	}, {
+		.name = "bb_cfg_ofs",
+		.parse = do_bb_cfg_ofs,
+	}, {
+		.name = "bb_cfg_file",
+		.parse = do_bb_cfg_file,
 	},
 };
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

