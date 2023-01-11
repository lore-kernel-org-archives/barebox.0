Delivery-date: Wed, 11 Jan 2023 11:03:11 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXwu-008imx-A8
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 11:03:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFXws-0002Sx-2q
	for lore@pengutronix.de; Wed, 11 Jan 2023 11:03:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i6CAX+ZZ8wrcXoDxpk4SM17VEevYwotSpmf3PCUbhvs=; b=UBsfE1f1/bGKID5U+TebAFC4oN
	HZuqs6UuJHCkaFflgjJna0t7TomlHhCEPfZj9n8eVaW+7j/lAkgA63kbP0YEl5vz8X8c2WnARJmsX
	MykbeZdqYdOWxFalY4hBd8Sh27+vNiqAk86HtRmz53FySe6+zzCx8jcTggCRy+s01BDG3/kIPeBSR
	xI7rWmPFCpzN7pMYPu4/1uYtlvjm803jkagTnOxD69+JkQVDM5CW/MUhsGZ1vVxt4kICV8twetNE2
	iGG0zqGcLNBrjKOE0D7mwywxDFE44V177S4R+VkWNDQZiSjovFfeuJ8O2nelc0CA/rAIzrBs7qvDs
	K/qHG1vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvY-00AfiP-JH; Wed, 11 Jan 2023 10:01:48 +0000
Received: from mail-vi1eur03on2130.outbound.protection.outlook.com ([40.107.103.130] helo=EUR03-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFXvK-00Afdb-5w
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 10:01:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjL3i7SAgZFVD5auDSrGCijpS2K16WP0kNwxjBjEAsJgPAm6jVHqCCQ+48uUFISkWGVQakEYQUdZTs+6veUIi8HrxiWowOB1eLiJH+0QRdLhGKE4VTRWTlAga0aks55IA8lCGfYf7X2JDoGCYRuNzihyUrw30vNhWeCEWRkt9ZEZZcEj5RJHkxE8Oq35clLAYpBnS32k1dWHX0gjcyX0CoHhWOl1d9+CYdDxTnlcHiS7Od1EmhizX0AnysqSilRiplZhE81DcBa4abheb1mwczMtlFt4Sbs0CbIXJuq3kpFUCj1AoQbNuuZs4YN2H7iJIcXzyPaec1yy6+LgAFdlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i6CAX+ZZ8wrcXoDxpk4SM17VEevYwotSpmf3PCUbhvs=;
 b=eqIfJlb4VGELOdRuCLUQzRlc/OaS4s7O94SHJ01/YBoRd5coO4LAZdwzHoff9C1YbfIAE0ECx+JvU8+xIVB0aaG1vt4qO7B+jDUdnBIC1dQ3xYqcuYQuEPEXaNF8CaCBhR8yjygVzctB7KcSJLPsYCUBKvi6ICNQ6/2K+M9erOZR5XTtXfc02QLyHNXLAxX8ljO2JmopN9BTHy/rxiTG1RrW3Erm4a1+EGQFcFKPwlqdX6bDnDFRa6fkstKGBcIUVKt+ClVVDIXLrB7PW7V/4Ok2bBtJwvNBdQTbhpnR7WSCiLJJTjx9Lp+hCONr/pDCQB9Tn/VwgHjAMhJRJvnZmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.94) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i6CAX+ZZ8wrcXoDxpk4SM17VEevYwotSpmf3PCUbhvs=;
 b=N+3ehBnI9Sk+ZMERRSMZwGNqATCpnCHXSoLhlliFPICvOeP+Y+0he3fh95Px9+1CDSJCM73sZVbWk0HVfSVyehnWrOg2+xQmFH35xLENmqlrGNAyd0biHDkMqMxanehILCNIHIpfy2mW35k03LiVxDTr/XEvglYbdzmT07YXC/Q=
Received: from AM5PR1001CA0062.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::39) by AM9PR06MB8231.eurprd06.prod.outlook.com
 (2603:10a6:20b:412::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Wed, 11 Jan
 2023 10:01:29 +0000
Received: from AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:206:15:cafe::43) by AM5PR1001CA0062.outlook.office365.com
 (2603:10a6:206:15::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.12 via Frontend
 Transport; Wed, 11 Jan 2023 10:01:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.94)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.94 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.94; helo=aherlnxbspsrv01.lgs-net.com; pr=C
Received: from aherlnxbspsrv01.lgs-net.com (193.8.40.94) by
 AM0EUR02FT035.mail.protection.outlook.com (10.13.54.161) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.14 via Frontend Transport; Wed, 11 Jan 2023 10:01:28 +0000
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Wed, 11 Jan 2023 11:01:11 +0100
Message-Id: <20230111100111.677018-3-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
References: <20230111100111.677018-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0EUR02FT035:EE_|AM9PR06MB8231:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: d1ba0278-610e-4c28-ff47-08daf3bacf10
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	kpvlVZTqd2z6xHhj2qfR6ZXSSNDDlY+2/JfKP1nT1iHKg8+q6CHs1HxbOrLus8sOHl+mivcrR31SdVG59jM2CixqtGRzoLgtH/6KJLHCqn2+M5e+D20DW699PThsZTIkg6wqPSq3LT5CyAU1eaZS/6rIGG1BslIdJVCldK24Xa5TFInwM13uGd+nDCeHqnRQyUMaqS2Ma+nWGDGdnMMiVuNfmwn7yNIxBwu6qLtafksorLah8tazfwQ96r0tox4G1tVH4+AN1DwrNbSqY6TueYiLBkm4Z2rA+HNfGmihZZwbeb61wsXbv9csCUI7m2j8g6IB8qDUPu+6PDGcNeUvK8hTZn4KDEQwqhy/3dZ5gpMzY64Y2vWXZGchedOsjdLKZeFYrtzXhtGc6HT9dTBMjxiiW/1VHIN8D4nGkRwlZKNk7N1cZPyn5lOeSTiVTSMozpUVfktGSc8uh2EpUPhiYoe10JT1JwsMRSiYMtNZsaJ0e3Tsbo4kydiFp1bNvaKyomOO7ed6t7RveE2H1TCRjDyWL6/kpzYWk6BrpE6HR8bYWbe4k0bfdLbMQgs2BrEzE6jX5ctUPvv9DQYrctKLAAorELDAzy9sUZUkfdp7Ntc/PylDuj7NiheEhHjvD/OywTCZYip3o1T071mTgYkScAZuXwuO1aOm7+iaMUcSZ0ANlhHh+RMwphtvZy4MylGhQ9BKdpSY8o6IwVC4xU3vWQ==
X-Forefront-Antispam-Report: 	CIP:193.8.40.94;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:aherlnxbspsrv01.lgs-net.com;PTR:ahersrvdom50.leica-geosystems.com;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(396003)(39860400002)(451199015)(36840700001)(46966006)(40470700004)(478600001)(82740400003)(6486002)(356005)(47076005)(41300700001)(81166007)(6512007)(1076003)(40460700003)(956004)(86362001)(316002)(36736006)(2616005)(9316004)(186003)(40480700001)(70586007)(26005)(336012)(82310400005)(70206006)(8676002)(4326008)(6916009)(36756003)(5660300002)(6666004)(107886003)(36860700001)(6506007)(2906002)(4744005)(44832011)(83380400001)(118246002)(8936002);DIR:OUT;SFP:1102;
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2023 10:01:28.8873
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ba0278-610e-4c28-ff47-08daf3bacf10
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.94];Helo=[aherlnxbspsrv01.lgs-net.com]
X-MS-Exchange-CrossTenant-AuthSource: 	AM0EUR02FT035.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR06MB8231
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_020134_256968_D78493AA 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/1] ARM: i.MX8M: smccc: fix firmware_atf check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Replace the config-switch check with a check for the current execution
level.

Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.com>
---
 arch/arm/mach-imx/imx8m.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 9758525b54..bb2733f2ab 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -61,7 +61,7 @@ static int imx8m_init(const char *cputypestr)
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
 	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
+	    (current_el() == 2)) {
 		arm_smccc_smc(IMX_SIP_BUILDINFO,
 			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
 			      0, 0, 0, 0, 0, 0, &res);
-- 
2.25.1



