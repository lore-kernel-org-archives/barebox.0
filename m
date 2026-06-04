Delivery-date: Thu, 04 Jun 2026 08:50:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1uo-002Bt6-25
	for lore@lore.pengutronix.de;
	Thu, 04 Jun 2026 08:50:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wV1un-0007lW-LH
	for lore@pengutronix.de; Thu, 04 Jun 2026 08:50:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O0/ZEwRqdbwdixTgBv7Me65GjVRil0QOk2+3mg7HVjM=; b=tbfr5penVZsdIafi3zEvVLyCHY
	WpothuMHGTP64gT/uH78RuwSfABA1GTNw5wswz/u0tZuBHtaL9TJI0ttE0vfgZt5CABY5jf/rPCG8
	L2+5Mf/OaCX0eOwC1dlytWLFrv0cLWm4KeoL3A9JC+SN2FE7MRQeTHsirdkNwWSm5cfrRW1piRogj
	XgJCY9j1gZEnM7fRwvkwgav1UjG922fPqLEPSpADTAIzadJJ7EocEisjyBa9YSlV+6g8pUShjhNTh
	H7bucIsVDNkt7seVJS6qCKI5SqvYJXO5AM/w3GDm8VFFC12zyobtbA/vZpCuWwK8KkBU9g8DLX2Ii
	TMDsuvZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uC-0000000GF52-43n2;
	Thu, 04 Jun 2026 06:50:16 +0000
Received: from mail-swedencentralazon11013054.outbound.protection.outlook.com ([52.101.83.54] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV1uA-0000000GF3n-0lOb
	for barebox@lists.infradead.org;
	Thu, 04 Jun 2026 06:50:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eCJ+fVHnmpum8X6yUOJo5078vFkfV+3puB/R81GBTjviH1M8QVEbkMeLvGcgAycFi58y/IfPawSLmMaPWhx8d4Q6eiBKcfdBTJQpad2Bh6CjS/tJqs5QzJ+M3atoS5CoYG2X474xTGxxqe3301tWeyRjEq8FTMVOn4yU/XWIN/bDFWvOwMxGIlO3z3sdXWaT/2ROVLArh4F/lVXBuSCX8ffgHmbNDbeYKyQO7wfyd0dmg+ssdv4vY2JM9MG8DzbSm57PGMGA51LfFjGjFtUSsSsWWmqPo1EMgKcI84E+oC1iLG4pYVhG8vz/itZf3CxoU6D+qladJA5BUvAMLhfjwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O0/ZEwRqdbwdixTgBv7Me65GjVRil0QOk2+3mg7HVjM=;
 b=jT92e4TJqI9JF0I9gRb3U+vwpWRvJkCYx8HYfx8BfK9RA4hXD9VLKd8EyovoSG5blRD2USvGidPsitTl99izBUHRrM08qVrstAX7Q+PIFUL77zp2qkpC290y+A3OJyObtOpynnc9oVhIIHlJVrPIj/GNr3lmgUKup3D9lBZ4ca5XBV2LqDpcTiV8m8pcfvIUXn4E4vi7U+JtsNhD0XMhah2p6jkGMlzIBksJotnEpiKnQc/7v7dRSsu6NYHsyeQcPhEyyM36B4b/qC2CvwqELplZO0GaYt/2SacXqanHL1xXYclWuMwbBdIniV5htWVgmqYSV9qbuetDFNachFk5xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 193.8.40.99) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=leica-geosystems.com; dmarc=pass (p=reject sp=reject pct=100)
 action=none header.from=leica-geosystems.com; dkim=none (message not signed);
 arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=leica-geosystems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O0/ZEwRqdbwdixTgBv7Me65GjVRil0QOk2+3mg7HVjM=;
 b=MHpWIj56b+tUXgYlFkmQvL5TPdIbBemGGtsDcuQRFdYeS6evoHgvEXZhfldwZZ1qhe34Z7ZvG95F3XozP2AykCHIz0hUOEkmP3CvlMpXy43+gH179CCOobVVOra3qrYMff3ZvexiVDN1wLBI89AknF/+meiwpxfw3FeRjzbFsq4=
Received: from AS9PR06CA0301.eurprd06.prod.outlook.com (2603:10a6:20b:45b::7)
 by AM8PR06MB7619.eurprd06.prod.outlook.com (2603:10a6:20b:362::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Thu, 4 Jun 2026
 06:50:08 +0000
Received: from AMS0EPF0000019E.eurprd05.prod.outlook.com
 (2603:10a6:20b:45b:cafe::4e) by AS9PR06CA0301.outlook.office365.com
 (2603:10a6:20b:45b::7) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.92.7 via Frontend Transport; Thu, 4
 Jun 2026 06:50:08 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 193.8.40.99)
 smtp.mailfrom=leica-geosystems.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=leica-geosystems.com;
Received-SPF: Pass (protection.outlook.com: domain of leica-geosystems.com
 designates 193.8.40.99 as permitted sender) receiver=protection.outlook.com;
 client-ip=193.8.40.99; helo=hexagon.com; pr=C
Received: from hexagon.com (193.8.40.99) by
 AMS0EPF0000019E.mail.protection.outlook.com (10.167.16.250) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.5 via Frontend Transport; Thu, 4 Jun 2026 06:50:08 +0000
Received: from aherlnxbspsrv01.lgs-net.com ([10.61.228.61]) by hexagon.com with Microsoft SMTPSVC(10.0.17763.1697);
	 Thu, 4 Jun 2026 08:50:07 +0200
From: Johannes Schneider <johannes.schneider@leica-geosystems.com>
To: barebox@lists.infradead.org,
	a.fatoum@pengutronix.de,
	mgr@kernel.org,
	l.stach@pengutronix.de
Cc: thomas.haemmerle@leica-geosystems.com,
	Johannes Schneider <johannes.schneider@leica-geosystems.com>
Date: Thu,  4 Jun 2026 06:49:55 +0000
Message-ID: <20260604065006.2933142-1-johannes.schneider@leica-geosystems.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 04 Jun 2026 06:50:07.0812 (UTC) FILETIME=[6184A040:01DCF3EE]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AMS0EPF0000019E:EE_|AM8PR06MB7619:EE_
Content-Type: text/plain
X-MS-Office365-Filtering-Correlation-Id: 1983340a-5fea-4bf8-87cb-08dec205841e
X-SET-LOWER-SCL-SCANNER: YES
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|82310400026|376014|1800799024|36860700016|13003099007|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: UBO6jwigCTWjAA+58j4evZyLWTSj7JVLJi7XVaahFsd1K42mITK2YhijMriN965nnFHLBQ1ch8tka+nJj2J+XLtg0CIu2rkO/B9ZL684Ba0bSyDWdUtpsmzuDcfOyAwj57TciJtgjYyqLqFkZgdgEje52m2nqr7ezLCnnlxgAOnjOFU0P4dGoGhrVHZDCZCFxjtUJsI6d2lfZk45RX5Ca8XD11G20NsLq9IKg3onMrIVdSDOlRk87LyC0lwbmryQPhAXAuI3431nUGE96GJj6ZavC5dF6i0NQZw25vwaCILFdAUK9CSaO9DhW6OixIxcQzkAdY1Y8YgbKbLRZ8iySz4ZgsNRjAvz97/FpN2hyaLGZXx+rJLQNpjSQGxR11r87Ftk8gXAf3tOlRzIPceOP/TBK51Ki5izKwN2M8CdjJaLT6zX1/xIlaWd+3DTMKfBpPLYU38UXvM+kDvysNIJ7MfBXEYXT7LE7klDqcfvOmzwpk+ldyNOMtuvzLGePRUipUIQSTUU0w297TIIP4OI/WBHK03s4khrR14gKN/Zy79uayr2iMQ1Gw/vVuPNYBOgVsIbrpoz+NqsJmsB1oLvz/vp8SgSoQXze+mvMZ7rc8kHsOeRdoIaqWKN8jVZ2nx/GAkCDXdzh22C2Zij9R2/o/GMlkKveL2AdsUKePQL0iqoB6uyH8OKP2WUMMKNgTIEaz8XnRlqfKtR/xMuia2HSbBHLMZvfPpuOSGl793Li0Y=
X-Forefront-Antispam-Report: CIP:193.8.40.99;CTRY:CH;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:hexagon.com;PTR:ahersrvdom51.leica-geosystems.com;CAT:NONE;SFS:(13230040)(82310400026)(376014)(1800799024)(36860700016)(13003099007)(18002099003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: SQ7WqV1nTpvQslMsjtior4O8wMQ5tYPam0VHpDenBDTte/ll7i8gOcLQ15ckdv/TSaKS0DwZgkQyui5oHke+4Pa1FA0QeVVIeF0OvBaoyO7GksV54rqehp7zS0HcLwF6MpuNtS25sF5xejGG3W6y7iBUsYCjcvDbTUWzyo/xtNOy+qp7+DT/AVIAik9UXuPADUP0O5bLHJoPa+A8dGZUrOvd/n6n3PPt/QRwpMDEDtVx3zA4DRJokISt2THXULT3dbzaZiW2Ira8Bflm84J4gljMEhptGN7S7i95gaRQ+MeY4K7Tt8w8Unjs2F83bANqxrDE+BiPnmV5BNkEOR592oe4+bRbqR1zdKdniuUV8SElBGbN3aoV5Cc3mu3PHRIVQLdO+C59cFQPwTux1ckSOaU7XhzdZYE5+j9mdhV9iGqTAYG+DYugGaSLWOa2903r
X-OriginatorOrg: leica-geosystems.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jun 2026 06:50:08.0039
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1983340a-5fea-4bf8-87cb-08dec205841e
X-MS-Exchange-CrossTenant-Id: 1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=1b16ab3e-b8f6-4fe3-9f3e-2db7fe549f6a;Ip=[193.8.40.99];Helo=[hexagon.com]
X-MS-Exchange-CrossTenant-AuthSource: AMS0EPF0000019E.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR06MB7619
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_235014_262819_067F0DC5 
X-CRM114-Status: GOOD (  12.17  )
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
Subject: [PATCH v2 00/11] video: enable boot splash on i.MX8MP with LVDS panel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

v1: https://lists.infradead.org/pipermail/barebox/2026-June/056588.html

This is v2 of the i.MX8MP boot-splash series.  Review on v1 pointed out
that barebox already has in-tree drivers covering work v1 was
duplicating, plus several detail issues; v2 replaces the two new
drivers with extensions to the existing ones and addresses the
remaining review feedback.

Changes since v1:

 * Drop drivers/video/imx-lcdif.c (Michael).  drivers/video/lcdif_drv.c
   already matches "fsl,imx8mp-lcdif" and "fsl,imx93-lcdif" but had
   only been exercised on i.MX93.  Three latent issues kept it unusable
   on i.MX8MP; v2 extends it instead of duplicating:

     - Kconfig depends-on widened to ARCH_IMX8MP.  The symbol was
       silently forced to n on i.MX8MP defconfigs even though the help
       text and the driver's of_match cover i.MX8MP.

     - clk_prepare_enable() AXI/disp_axi/pix at atomic_enable.  Linux
       runtime PM handles that via genpd; barebox has none, so the
       controller's MMIO writes silently no-op'd and frames never
       ticked.

     - VPL_GET_BUS_FORMAT abort no longer kills the enable path when
       the downstream panel doesn't carry a "bus-format" property
       (typical of panel-lvds DTs).  Default to RGB888_1X24 with a
       dev_warn instead.

 * Drop drivers/video/panel-lvds.c (Ahmad).  drivers/video/simple-panel.c
   already parses display-timings, enable-gpios and a backlight phandle
   from DT -- exactly what a Linux panel-lvds node provides.  v2 makes
   three small extensions:

     - Match "panel-lvds" in the of_id table.
     - Read modes from a "panel-timing" subnode as a fallback to the
       "display-timings" container (panel-lvds uses the singular form).
     - Switch power-supply to regulator_get_optional() so panels
       without "power-supply" bind.

 * Move the LCDIF write-combine drain from a dsb() to a readback of the
   WC region in fb_damage (Lucas).  dsb() doesn't actually drain WC;
   a load from the WC region does.

 * pmdomain: keep the ADB handshake propagation before the upstream
   clock enable in imx8mp_blk_ctrl_power_on; v1's refactor accidentally
   moved it after.  Route the HSIO-specific call through a new
   pre_power_on hook in struct imx8mp_blk_ctrl_data so the generic path
   remains HSIO-agnostic (Ahmad).

 * backlight-pwm: switch the power-supply lookup to
   regulator_get_optional() so a missing power-supply property surfaces
   as -ENODEV (the IS_ERR check never caught the NULL return),
   drop the now-redundant NULL guards around regulator_enable/_disable,
   use dev_errp_probe() for the PWM lookup, and add a Fixes: tag for
   the bogus "enable-gpios" gpiod descriptor name (gpiod_get_optional()
   appends -gpios itself) (Ahmad).

 * Pick up Ahmad's Reviewed-by on the 700 MHz VIDEO_PLL1 rate entry.

 * New patch: clk: imx8mp: add 1039.5 MHz and 519.75 MHz VIDEO_PLL1
   rate entries.  arch/arm64/boot/dts/freescale/imx8mp.dtsi pins
   VIDEO_PLL1 to 1039.5 MHz via media_blk_ctrl's assigned-clock-rates
   (the right value for 1080p60 LVDS), but the rate was missing from
   barebox's PLL14xx table.  Without it, media_blk_ctrl probe fails
   -EINVAL and breaks the clock tree below LCDIF2 before lcdif2's own
   assigned-clock-rates can rebind it.  Values taken from Linux's
   imx_pll1443x_tbl.

 * Split out three smaller stand-alone changes v1 had bundled with the
   new driver:

     - lcdif: 128B AXI bursts (avoids a right-edge gap on panels whose
       stride isn't a multiple of 256 bytes -- e.g. 800px at XRGB8888).
     - lcdif: register a simplefb fixup and call fb_enable() at probe,
       so a splash command can blit straight into a live framebuffer
       and Linux's DRM_SIMPLEDRM inherits the boot fb.
     - simple-panel: lazily resolve the backlight phandle without
       failing the panel-enable chain when the backlight hasn't probed
       yet.

Tested on i.MX8MP with a single-link LVDS 800x480@60Hz panel: boot
splash renders, Linux DRM_SIMPLEDRM inherits the framebuffer via the
simplefb DT fixup.

Assisted-by: Claude:claude-opus-4-7

Johannes Schneider (5):
  clk: imx8mp: add 1039.5 MHz and 519.75 MHz rate entries for VIDEO_PLL1
  video: lcdif: make functional on i.MX8MP
  video: lcdif: default to RGB888_1X24 on VPL_GET_BUS_FORMAT failure
  video: simple-panel: support panel-lvds DT bindings
  video: simple-panel: lazily resolve backlight without failing

Thomas Haemmerle (6):
  clk: imx8mp: add 700 MHz rate entry for VIDEO_PLL1
  pmdomain: imx8mp-blk-ctrl: add media blk-ctrl power domain support
  video: backlight-pwm: make power-supply and enable-gpio optional
  video: lcdif: use 128B AXI bursts to avoid right-edge gap
  video: lcdif: register simplefb fixup and enable framebuffer at probe
  video: lcdif: drain write-combine framebuffer in fb_damage

 drivers/clk/imx/clk-pll14xx.c          |  3 +
 drivers/pmdomain/imx/imx8mp-blk-ctrl.c | 91 ++++++++++++++++++++++++--
 drivers/video/Kconfig                  |  4 +-
 drivers/video/backlight-pwm.c          | 16 ++---
 drivers/video/backlight.c              |  2 +-
 drivers/video/fsl-ldb.c                |  2 +-
 drivers/video/lcdif_kms.c              | 47 +++++++++----
 drivers/video/simple-panel.c           | 31 ++++++---
 8 files changed, 155 insertions(+), 41 deletions(-)


base-commit: 651343da8af78d134d7ead4d2b36095d7ddc2d8f
--
2.43.0


