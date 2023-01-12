Delivery-date: Thu, 12 Jan 2023 07:09:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFqm6-009XkU-IK
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 07:09:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFqm4-0004e6-Lg
	for lore@pengutronix.de; Thu, 12 Jan 2023 07:09:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KrfwGOL/iGlgXumPgX4vU76yDplsgagiglYiVx4WkzI=; b=avup4kchUBgVypKH16WBhvEpbR
	CoRbGQ7gBX3m1NUKduGcf02uO1yxifPRPkxcV030pK0nAUDRsSENsTmsBZqEAWe71dceV66aexBlg
	BszSi6GdPPKW38hiZwdxC4InZ75eZGu2wa5aDAv5wozShKhabeUBUwLi2yfOfuhsIgATPFNjHKhzs
	Q7w8ErxioXr3R342oqQf8HEFNrfFv4by1+TfLJx0Knm5bS1/HqMobBwJdh1S96xlX0dJCqd6NR30t
	z5eZcJZMKsjQohyBCaOamGHUmfKkoilZXl96aoSzjoLBPgjmXPLoAXmJ0Pq6TbnuAt9SMW7QK2z8e
	OcY3n8Rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFqkI-00Dt3o-P0; Thu, 12 Jan 2023 06:07:26 +0000
Received: from mail-he1eur01on2102.outbound.protection.outlook.com ([40.107.13.102] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFqkC-00Dt3G-TS
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 06:07:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OnzVY+OOnSF3ztMUmqmPnrsbZHuXwUe/f8dkRIu4N0hrIoo5Zwo1XWF9jd8HrCcIiCS7A8IyP51wkTqGkc0DGnQ1Ngi0SHMmLLXJz5MT5S14z7lVe3Kt0dOKVZE+sfqaoiUXPHMqsXAn8HKHbNbV8DBpkk1a1rTCLELIiucubb3Bhjwn6nhid+xf1w5KiF+AHZ4dPpnCgZ9UFKyDiaqAuXj/LIJzN1rmRwuYYLFiB9v+o3b82r/yJyMuI1S4sBPcRmmgvzDLbvnvpi+W4F+wBVnTgFYd3i8nTD6Ajb776KRsSHrnY9WVzP2cT2JxTOdlymk5RYQ7vh+srPh38f4M3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KrfwGOL/iGlgXumPgX4vU76yDplsgagiglYiVx4WkzI=;
 b=S6DyuZdDIy0uCjpstUxa2d+iUuNcN4670rya7HMdrvGWkUSxDcuJ1KyTz81Ju9pq1Ud30pkRV2EjzgCzu5bIB65vGeo+gFaeNzpJClGSkjcM4iL2PyLYJCjEggXDXTd6xPjdODtyH8k3EM2m2DwRG3JADWMIfXeIYJvjp9LMGe6Q/aO3owRA/i45rWnlwctcjUt59HjGdTTuoLTRd7/SCjZOZXkz8Izk+48Ymj8rKbAPth6sraD9pKfQz7Kn7QH67JTQBE6KikwwhieglGxI6ERU9FI2SWLT7ZnEIZrRQLIK2u3IUmAPOtYsLxjB555+IdmjmBQHK7rhw0SFJayCyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KrfwGOL/iGlgXumPgX4vU76yDplsgagiglYiVx4WkzI=;
 b=DKHHu9E2lusqhZU7DfCkFtaZs8CxcGtVPNwuPUiwrsg3CmlY4XSO5S4fIHgRTDEri7i690Vzn/+EWMxgXQHqsA2Xymjon/In4mNCum9RLxryfD0o4ob6AYc+aPD6H1TVWC89dslf/UiXi4nu1+UJMI/gRXxYnwQ6fVudcmKMb4w=
Received: from DB6P18901CA0007.EURP189.PROD.OUTLOOK.COM (2603:10a6:4:16::17)
 by AM0PR06MB4434.eurprd06.prod.outlook.com (2603:10a6:208:cf::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Thu, 12 Jan
 2023 06:07:15 +0000
Received: from DB5EUR02FT025.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:4:16:cafe::a9) by DB6P18901CA0007.outlook.office365.com
 (2603:10a6:4:16::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13 via Frontend
 Transport; Thu, 12 Jan 2023 06:07:15 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 DB5EUR02FT025.mail.protection.outlook.com (10.13.58.113) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.13 via Frontend Transport; Thu, 12 Jan 2023 06:07:15 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu, 12 Jan 2023 07:07:09 +0100
Message-Id: <20230112060709.2417871-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB5EUR02FT025:EE_|AM0PR06MB4434:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: a0357c3b-7379-4ae1-fba4-08daf4634128
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/DST6LkSVG66CmhyoP4Wpb8Ial2R7HwX5teBukwy6LRwe+oe0MHBLLigBusQxWtpkk1+aEs1gT4aRTorFAUM+yP9xK6jRtkvr7EBShotmJzZMFNX3j0zSxzzAiuGEo3ezOtE7YbgUkWkkTBk/OeCS4+rHVStmfe8X6THoPTjLOd8KRYoNRXlkNuxihRwY+bzR2jzXYm1U8Nx99Qk5mdoYeOtBv3Oll46himBvdx222R02vd4y6dBMN47JIJxdlpUMpVuVLGaunpdTSbhlk2y0Nr5v0/wDIkYfvz43w1gCOYT5f7qmirnN3NpcIizJS9Nvnxp9RrUANBUoTEtKPewRKKTPUAfGP8vw5OEVI0pOJWaKkCoxMfna2sQuaCV2Z3BbmebRcc2oKb5PKFGZ6I6czifvFeWFgnrOB3ql/DVbVBEDLkmeIMJvhvJeoL9QWCPHe6R1s0UQB7+s8jofTdVeAo+INUIMJqu5pz6tCCEZHtTsQdEu9XQT72crLiy4SvOvmxG10zPXkxbMKPRK1LWAiRTZbokK11Fbgmer8JNneFvtKO+NXheFJxFRyA/0i61nJMROOdFug3Q5ubvXiTD1Oil5lHzlTq43k1LJ+nBH0U5wMTOtcRoQfRdiLpiciJKoxjTIZ1ZPCjfVOB2hVsgrFWh2RH15xtFjodSue5NXzlTHJ3uy1o4CBKMDAmdlzeaAuWIuVqoQA9sxqwFIdIq+CzB0kIRf++Mkjo2f0mHtWE=
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39860400002)(396003)(451199015)(46966006)(36840700001)(40470700004)(82740400003)(6486002)(478600001)(81166007)(356005)(47076005)(41300700001)(6512007)(1076003)(40460700003)(956004)(86362001)(316002)(36736006)(2616005)(9316004)(70586007)(26005)(336012)(40480700001)(186003)(82310400005)(4326008)(36756003)(70206006)(5660300002)(36860700001)(107886003)(6506007)(2906002)(6666004)(44832011)(8676002)(6916009)(118246002)(8936002)(83380400001)(32563001);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 06:07:15.7241
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a0357c3b-7379-4ae1-fba4-08daf4634128
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	DB5EUR02FT025.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR06MB4434
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_220721_262983_0EE4F80E 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX8M: smccc: allow SIP_BUILDINFO call on all imx8m variants
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

By adding a common config switch, the imx8m_init code becomes generic
for all board variants (and slightly less confusing).

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/mach-imx/imx8m.c | 2 +-
 firmware/Kconfig          | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..4399dc7dd5 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+	    IS_ENABLED(CONFIG_FIRMWARE_IMX8M_ATF)) {
 		arm_smccc_smc(IMX_SIP_BUILDINFO,
 			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
 			      0, 0, 0, 0, 0, 0, &res);
diff --git a/firmware/Kconfig b/firmware/Kconfig
index b4a6fd9137..d3e79b4ef5 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -14,15 +14,19 @@ config FIRMWARE_IMX_DDR4_PMU_TRAIN
 
 config FIRMWARE_IMX8MM_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MN_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MP_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_IMX8MQ_ATF
         bool
+	select FIRMWARE_IMX8M_ATF
 
 config FIRMWARE_CCBV2_OPTEE
 	bool
-- 
2.25.1



