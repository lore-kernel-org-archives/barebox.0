Delivery-date: Tue, 02 Jun 2026 06:10:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGSX-001SU5-0c
	for lore@lore.pengutronix.de;
	Tue, 02 Jun 2026 06:10:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUGSW-0000YB-CK
	for lore@pengutronix.de; Tue, 02 Jun 2026 06:10:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=89deo88iJLALM3HkCPc4dNtezQd981+pM8tf3TPthjQ=; b=W8ure6h89FWSAEmocoSKvXaKIO
	6EHwxgTquafUf8MYfvwCQQPIxRnuhTvACE5D79F2lpIVf9g05D/62sD0tlae2/iyEbpzYWsw3Gk0/
	/MG5Ew33DodN8lRcT05qMwunAC8BMUNQ3sQ0iRIr8DCFY6A5jNl2B12WgYuTbQCq8qmjlo8jL/usZ
	Pd4LuYUPI/5KtjkCZxQ5H6Qws4/NDwUzSk0TlLXrmi/2qHBCIeYhC+AO7odS4wxBkEgtfv8TKfx73
	TGclKscmfJcbVyZ2MlrOIGyPfDR/XLpgDe8NRaLc8J7vct4mGXc98XWdNvVLaZOxA0EtIRdrX2jIp
	MbGS7iwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGS1-0000000CGE2-41hH;
	Tue, 02 Jun 2026 04:10:01 +0000
Received: from mail-northeuropeazon11012020.outbound.protection.outlook.com ([52.101.66.20] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUGRy-0000000CGD9-2nzh
	for barebox@lists.infradead.org;
	Tue, 02 Jun 2026 04:10:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vzLN/d5CgVw/lnu9SxsX5E7kzQsqZwnQnF+OnZySnJszSEv1ylZvTEiaaBeNQrQdOPMj50dDhm22U7RG3/8wwyCdTGTShIexXzakAeXNj7U8Pg6vNnD3T7OK+qf0qqYlRzwp4pG8/KKg+BOAeHicoHlb5fthmd5zmblRMuNhzHNZXR6YKOw7IyshlkX3Sw/g6s6nY0IEL6VcdpPqTvfeSN+i8jlWEcLZihvvTixE/CKekDJxLeWeD6lZ06/NYgFZb3kJKBmcphd6t9pon9kMPqvUK5uK5d5IanDP6KfWi/1S6qBoaZvTfxXP2FEgJXafG7MbeHSfbNT7MlInCUzxBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89deo88iJLALM3HkCPc4dNtezQd981+pM8tf3TPthjQ=;
 b=MHGpA9/OwYVz5IeQohHazyx2zzFTWYwF9DXYiySYAQuzngGWB8hbpH02Nopje1kf2hXmzmlKNU9SI7p4uRoWK/URsnMERtjH7oWjLMI0XBWzy5RUg5JUch8YXwBjWVbQC7yQuVsz6A9F5+pCQvAppz9s9NDxnK+HddxCoegbYYrjHHcFWU93zxYTHXP0xPzDe9I63f+m+XrsR/7rfFwa1VXMQ5SpLJtDj8mt0xRgl1BHr9VOIQLvthtuaM5MeaWZnC9o2CxdtYBog1qMHMtO/LP1ox86GpDcSFKAjdzbh34+iBdz751PneuK6tY6eJQdRZLidiFvh/XaRR/FmsmO/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89deo88iJLALM3HkCPc4dNtezQd981+pM8tf3TPthjQ=;
 b=NX+DDaMRvPOd7KFINFZmyzs9TCfg8VR9Xe08YZpZMUZtJEvdWlyAd8RnnIsuaZ5PnCMJ/8zsvVkMILrKIwMgS5XUieEF/v+r6fv2osruRks59iMGJ6qD4ref7qSK4JRkuz3TVUZ0/edGPzc4jxwBohsmJu5dCjTsZ4UKyWIy3Fs=
Received: from DUZPR01CA0314.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4ba::21) by GVUPR06MB10861.eurprd06.prod.outlook.com
 (2603:10a6:150:32c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Tue, 2 Jun 2026
 04:09:54 +0000
Received: from DB1PEPF00039234.eurprd03.prod.outlook.com
 (2603:10a6:10:4ba:cafe::5a) by DUZPR01CA0314.outlook.office365.com
 (2603:10a6:10:4ba::21) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.71.17 via Frontend Transport; Tue, 2
 Jun 2026 04:09:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 DB1PEPF00039234.mail.protection.outlook.com (10.167.8.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Tue, 2 Jun 2026 04:09:53 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Tue, 2 Jun 2026 06:09:53 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org
Cc: thomas.haemmerle@leica-geosystems.com
Date: Tue,  2 Jun 2026 04:09:46 +0000
Message-ID: <20260602040953.1060278-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 02 Jun 2026 04:09:53.0289 (UTC) FILETIME=[A9FD5790:01DCF245]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB1PEPF00039234:EE_|GVUPR06MB10861:EE_
X-MS-Office365-Filtering-Correlation-Id: 79606ff9-b1ae-45bd-2a26-08dec05ccca9
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|36860700016|376014|82310400026|18002099003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: /tvqc52EmRm6VJSd+eC+iuEX+lBzWmqh4ngFXNPQweKIKi6he3MK/u85i1zFhaatuCE04wKssCFLBcQHXIo/bdld9f0nkroflYLpRyRgr+Qbkyv9NyVdyesExdLvR/wVpTEWSlaudaShNNZLv+d2SQ7juxWYHTm+07V0y744xM0eoKU5FwEbUcHmHNrToL73qn2lFVW/VqrwIIFcbVpEqUoMr2JNleZ0EwZW512FTRIWO9E1y/FgLbJcu07g9TEH3Rj2J2UwvXYVKOIX96idih5p7X29Tg3+5x3Tu63hPTyWaowR3lAPYt8AsRy3WxqnBJY9ZZIuC9bxXV3qsCDBOLw/fs/ZM5O0SSOPbnDbWAo5A0FkVy25noarjs+InJnp1616JUjfUbvqk8l0CvSAglO2FgyX0+3rAkJVE6rjeps4LUnLRfV8bBoW21LNvXMAgBBjVGig+LchaLi96R1/zproheqM/IqOmADImIoEe41V1wnDXGWVZKmwWChxW4TN8PD7b/Hv1+TBbqa4aX8E5WLY+NW2Pw8qnue5RiQPfQz1O4vwiHtyfusAFXOa1ycZ+IxGzNidMGNfwg+KAsJBLL36v37eXwGEQkpW2UezGcWsCiV9V9sUAxHBcPkOb0XqvgMO11f1ftq6cXd66Qq4gsQp/73E2QiqslFS1om1wTH3mAPjcvOC5IOe/sEHO59KvEexjFvD4ctvqUwRu2/cQuIpfR+f1M/UaSCTbsXXYtg=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(1800799024)(36860700016)(376014)(82310400026)(18002099003)(56012099006)(11063799006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: EzopmWHqRtAwvMGnQ4wZtkOhBUfYb/v2MdvdPgLFjgZ1ObmWYzF1rUwpuZxR8lFuRh8hDrA1Z0FIglK1NbzvCCWYJRW/m9PnHtI5LiIMCHcqSeord+6mguRQv3HpKlWnzwTAJlPexRNfC56RD9DJ9ULROIMNHfZZ5YNh3xCFNzJuVNO2RjWmlhjTXUqKJJlIl5XBMqu/0G9dBsXNWk1q8LeZXYRKYNqBJQutRLiS6y2NBYoJuW0QSPgJ003HYsdOrRZmBr0uOZnBRCwT28IkH78XRdXrQLcZMgoXVjAl7t/MGCOVSLFretj7khI4DL6p2kQO2DYWa9LR/8AwksbaO82g7XwVj1FzLvI9m0iVYx90r9Gq7iVoZQfHE6PHluSiyS0msjfsTVRqI9yj+n1F4JzjMLfUKkJFFn9ry4ITHMvx691N+/9CWqVVzvrLXd1Y
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2026 04:09:53.5715
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79606ff9-b1ae-45bd-2a26-08dec05ccca9
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: DB1PEPF00039234.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVUPR06MB10861
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_210959_094268_0B38E426 
X-CRM114-Status: GOOD (  11.47  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/7] video: enable boot splash on i.MX8MP with LVDS panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds the pieces needed to show a boot splash on i.MX8MP
boards driving an LVDS panel.

The i.MX8MP's LCDIF2 lives in the MEDIAMIX power domain and uses a new
V8 register layout, neither of which is currently handled in barebox:
register access without the media blk-ctrl hangs the AXI bus, and the
existing LCDIF driver does not match this variant.  There is also no
generic panel-lvds driver to terminate the VPL chain, and the LVDS link
clock needs an exact 700 MHz VIDEO_PLL1 rate to avoid pixel-clock
rounding artefacts at the edge of the display.  A few smaller fixes
were required along the way (optional backlight-pwm properties, a
png_pico double-free in the boot-logo path, and a write-combine drain
after each blit).

Patches:

  1. clk: imx8mp: add the 700 MHz VIDEO_PLL1 rate needed for an exact
     LVDS link clock.
  2. lib: gui: png_pico: fix a use-after-free / double-free triggered
     by displaying the boot logo.
  3. video: backlight-pwm: make power-supply and enable-gpio optional.
  4. pmdomain: imx8mp-blk-ctrl: add media blk-ctrl support so LCDIF2
     register access does not hang the AXI bus.
  5. video: add a new LCDIF V8 framebuffer driver for i.MX8MP.
  6. video: add a generic panel-lvds driver, mirroring the Linux one.
  7. video: imx-lcdif: DSB after each blit to flush the write-combine
     buffer before the LCDIF DMA reads pixels.

Assisted-by: Claude:claude-opus-4-7

 drivers/clk/imx/clk-pll14xx.c          |   1 +
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 117 +++++++-
 drivers/video/Kconfig                  |  19 ++
 drivers/video/Makefile                 |   2 +
 drivers/video/backlight-pwm.c          |  16 +-
 drivers/video/backlight.c              |   3 +-
 drivers/video/fsl-ldb.c                |   2 +-
 drivers/video/imx-lcdif.c              | 391 +++++++++++++++++++++++++
 drivers/video/panel-lvds.c             | 175 +++++++++++
 lib/gui/png_pico.c                     |  21 +-
 10 files changed, 728 insertions(+), 19 deletions(-)
 create mode 100644 drivers/video/imx-lcdif.c
 create mode 100644 drivers/video/panel-lvds.c


base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a
-- 
2.43.0



