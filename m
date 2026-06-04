Delivery-date: Thu, 04 Jun 2026 08:50:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uq-002BuF-38
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1up-0007mq-O2
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xufaCptIVDwdHCu3LRe53n8qA9WPkKdSJStUn+Fw9nk=; b=DGUDFObKc0zsNnSPSW+equ/cbN
	nh3Trh2/rsQdiqOvOt8Hl4w8iMCvwildRcFgFgXTmiIwV6JItEMw0tMYtns2+5c9PT8HOYefL6vy6
	nQH+dndieBKTHmZWyoZCLc9RyIK9u1UdYt3WUvupAn3xXlrtbQCQ5FSMVHEzbENy/fHvMvWnEskZ/
	hV/Pykp2Wqr5BP244cIj/dIglm8fBSxw7aJONebKKLpMfE2tZsFNizkp3kIGam2jlJl/HuhXPnpQP
	Y9h2PztAKO3AFtVIX1zibBWSubICNcDvJ0F1rM2riMPEZg4JH3djzjCt57vQorWylhj7gVdfHTt9/
	0u0wx2Jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uE-0000000GF6z-3mdJ;
	Thu, 04 Jun 2026 06:50:18 +0000
Received: from mail-norwayeastazon11013052.outbound.protection.outlook.com ([40.107.159.52] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uC-0000000GF4B-0aaR
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=My+Xa2R9b6iKgqh7v5srEZO5niA3jFN50GLDWXV1zBzsNSbzeQTN/SR8InGUtN/aY6Uob5gLzeguBp6Z94wDhAiKfUE7pT74rUydGAVEW7JrzS1bWJ0NDqF4U4X/o1zG7MPEIcLJ7l1tSyXijaXPVH0vjQGgE+WQzdmOvJ2m0jG0llio15HLYA2EaUksP89dC/8vklzrgS2fr9/Ju97Ca+4DmCQWoPuUoNyWHo266b/ZHW3wyxsM62ZavrILQ4WEPTUi0GuCxdWftUz7Ns/1IajqTQ+Ef10skIeWO5dLnIkdLjlDIl7N6xGjFjFGlKovYNkXmuBsQ7TEGiN6rTGzVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xufaCptIVDwdHCu3LRe53n8qA9WPkKdSJStUn+Fw9nk=;
 b=tjaAY1qRpYLoNVJxoWwZsL35pWZ5jU+N+K49/pR8kdbf4xokiclahH7edNGsQkfV7sd53KFBCB6BEbwl27/DN8yq7L9GYAEepz+4vcDM+/zihNlYxMYoHSujbL13fVioZ1DKQVhH74IvykFsKpcZYSI/Jfu2IuvYoy8ruvhXezqw6jT98mgr6uMFhUCX9QoE1Sbo+SeLe4vqSxucnGxI50GXUgYif+0yydeAKCsgVcMKqTkrUGW6q/goIGPSVhhWHtiyAG5YlNYHxv6EH+RD9uvLGR6rtDik6mWBtI+/nQ+/CJmCj2I97miJZ4tGbyJC3eKqMXbrV/QtDV35S2TMUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xufaCptIVDwdHCu3LRe53n8qA9WPkKdSJStUn+Fw9nk=;
 b=rrYekOJIP/cU951F6L6PqY3h/S5aTpFA9A8yoWq2UhIKSWzIbQJiGC8frj2U47YWgECVUdMIVX/COxVrXMDBl+7TagR64R1mD8INyJF7oZ9AARsz+CSm6O/QHmhRQkMoe8GV7zWLvloSVHbd5j5LMqWOZ5AV2zqXUnbrqXhPd3o=
Received: from CWLP265CA0468.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:1d4::21)
 by PA2PR06MB9083.eurprd06.prod.outlook.com (2603:10a6:102:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:11 +0000
Received: from AMS0EPF00000199.eurprd05.prod.outlook.com
 (2603:10a6:400:1d4:cafe::f9) by CWLP265CA0468.outlook.office365.com
 (2603:10a6:400:1d4::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.8 via Frontend Transport; Thu, 4
 Jun 2026 06:50:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF00000199.mail.protection.outlook.com (10.167.16.245) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:11 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:09 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com
Date: Thu,  4 Jun 2026 06:49:59 +0000
Message-ID: <20260604065006.2933142-5-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
References: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:09.0921 (UTC) FILETIME=[62C66F10:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF00000199:EE_|PA2PR06MB9083:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1be99a8e-bb71-462a-99ff-08dec20585f3
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|36860700016|1800799024|376014|82310400026|22082099003|18002099003|6133799003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: vgcYwunGcMqbcSulEMS3ogt3YC+NfXhinwSp4luaGNT94g2ENc6QDkyEjq9rscK/zRdUTVSj8E1XayrubiuqCVs2+TuxtEpXqOadMZlScZBHRjhf+4/171xfBjDU6f5y7ANyeRMJmj+Xj6Sz62ffFWWHO1sW6ET510zCQedpEomlALJYz+v3DNWFUL+fK4VSLyfGus92vPGlyPzk1hxzr5PAHxuk/N2+BIg+gDkn+jEZbo3Q8mIcdugg5gh6rendpWWgXXXPNxOndTgVPN7nRu4C4wasj1OL6hLz51zNcxQBeqQxSjXCrFLKcbfdKqZcfp+7ZKZEsxvR3m85wGg6svR1L00d+8mYjKcVGzpQyYW2cBP/p3T0NQmHQ+bz36A7BfGsP5jvf1Y3jtu6FZR2JW2BL+mM7IiDUcd7FmG5wUzQj+Jk1vTGKay3R3jmIWev8qDCCnjQ7tQVW181Fq3MYOIoXAKtx/YAUfz4KFIi0tYMUOzDDaL/7DFlNhTz37J6k84ZR7MF/SihzWe/qJ3u8LLxIRBVqjYLrVb0ug8p4H1QXDeLuwFj5XCoOYuqhkitGnrctwLlBI6g2CA4Ej0CvtzpYSq0gQCW/eUKj12d8JaJhZHma5T7f6ZMjqMBfKKjWO8q5L0/7B7Aubi3zazXoeaJJRt79dwYLwpnt7Mb8qy1Y8Wm4O79W87h/tnbHYbug0NvWZ1IMS9fycK7k/n8x2ruZtF9vFMBpzl/RnJ4EqQ=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(36860700016)(1800799024)(376014)(82310400026)(22082099003)(18002099003)(6133799003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: NFt53nao+uIKX8YfKS2yR1czzCL2w3PfRhe6+X5bUagMsyzx7+iRc5K8tPWWjkVAtIGC72uGbu3Gq/vcAxFVAbQ9LZH3T4pLrKZszVGRbBow+QEfhxuwWU8jPRlgA6LaFOm0TNZ0iTyQ1dH0eAp4LOV0z79J+wNwIZQloowHK5gP14YG+Uc4hSA9kSMkhUSFlXseqSNkltQHpL7Fqs+1TdxNzJ9nLdAshVl8EXQXWwbNcjlFCFrqNvInIH2m8M91VmEJHbKSu9nP0+NUnaVl+ABpKOLK+kcUE54CxI5aGaZLfOasnjknBgDEuh2EF9zw/ae06ydntp9n26QxCk/lA8HhWvC3mnF2DYV4ld1+vwbsFp6zm56z5QH5t/kyohr8MBtW9hCggjqBVl+xP30GPh9s3ngWsi9kw9o7CMCjXLDPZEGgDAGxjYZqeMmz4vIc
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:11.0791
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1be99a8e-bb71-462a-99ff-08dec20585f3
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF00000199.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR06MB9083
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235016_183764_A7990327 
X-CRM114-Status: GOOD (  13.06  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/11] video: backlight-pwm: make power-supply and enable-gpio optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>

Boards often omit power-supply (rail is always-on) or use enable-gpios
without a discrete supply.  The driver returned -ENODEV when either was
missing, blocking display init.

Switch to regulator_get_optional() so a missing power-supply property
surfaces as -ENODEV (instead of a silent NULL the IS_ERR check never
catches), and handle that case by leaving ->power = NULL.
regulator_enable() / regulator_disable() are already NULL-safe, no
extra guards needed at the call sites.

While here, fix the GPIO descriptor name: gpiod_get_optional() appends
"-gpios" itself, so the previous "enable-gpios" looked for a non-existent
"enable-gpios-gpios" property and never resolved the enable GPIO.  Use
"enable" with GPIOD_ASIS so the boot-time pin state is preserved.

Use dev_errp_probe() for the PWM lookup so the underlying error and
deferred-probe path are propagated correctly; drop an unused 'ret' in
of_backlight_find().

Fixes: 4c7238df6866 ("video: backlight-pwm: switch to gpiod functions")
Signed-off-by: Thomas Haemmerle <thomas.haemmerle@leica-geosystems.com>
---
 drivers/video/backlight-pwm.c | 16 ++++++++--------
 drivers/video/backlight.c     |  2 +-
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/video/backlight-pwm.c b/drivers/video/backlight-pwm.c
index d3c81114e0..14fad55637 100644
--- a/drivers/video/backlight-pwm.c
+++ b/drivers/video/backlight-pwm.c
@@ -148,7 +148,7 @@ static int pwm_backlight_parse_dt(struct device *dev,
 		pwm_backlight->backlight.brightness_max = pwm_backlight->scale;
 	}
 
-	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable-gpios", 0);
+	pwm_backlight->enable_gpio = gpiod_get_optional(dev, "enable", GPIOD_ASIS);
 
 	return 0;
 }
@@ -160,10 +160,8 @@ static int backlight_pwm_of_probe(struct device *dev)
 	struct pwm_device *pwm;
 
 	pwm = of_pwm_request(dev->of_node, NULL);
-	if (IS_ERR(pwm)) {
-		dev_err(dev, "Cannot find PWM device\n");
-		return PTR_ERR(pwm);
-	}
+	if (IS_ERR(pwm))
+		return dev_errp_probe(dev, pwm, "Cannot find PWM device\n");
 
 	pwm_backlight = xzalloc(sizeof(*pwm_backlight));
 	pwm_backlight->pwm = pwm;
@@ -173,10 +171,12 @@ static int backlight_pwm_of_probe(struct device *dev)
 	if (ret)
 		return ret;
 
-	pwm_backlight->power = regulator_get(dev, "power");
+	pwm_backlight->power = regulator_get_optional(dev, "power");
 	if (IS_ERR(pwm_backlight->power)) {
-		dev_err(dev, "Cannot find regulator\n");
-		return PTR_ERR(pwm_backlight->power);
+		if (PTR_ERR(pwm_backlight->power) != -ENODEV)
+			return dev_errp_probe(dev, pwm_backlight->power,
+					      "power supply\n");
+		pwm_backlight->power = NULL;
 	}
 
 	pwm_backlight->backlight.slew_time_ms = 100;
diff --git a/drivers/video/backlight.c b/drivers/video/backlight.c
index 6d8146ee5a..066742fe28 100644
--- a/drivers/video/backlight.c
+++ b/drivers/video/backlight.c
@@ -95,7 +95,7 @@ struct backlight_device *of_backlight_find(struct device_node *node)
 {
 	struct backlight_device *bl;
 
-	of_device_ensure_probed(node);
+	(void)of_device_ensure_probed(node);
 
 	class_for_each_container_of_device(&backlight_class, bl, dev)
 		if (bl->node == node)
-- 
2.43.0



