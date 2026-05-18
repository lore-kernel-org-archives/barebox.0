Delivery-date: Mon, 18 May 2026 10:54:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtk6-0014cg-1U
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 10:54:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOtk5-0008Uv-15
	for lore@pengutronix.de; Mon, 18 May 2026 10:54:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QGEx/2tZGZ2kOe7of+7QJvyMB1LWGVxSTvb3SBA0AMI=; b=qFDRndSDtV6MN0wQNbAagRcWpU
	BQuGzo/9dv2cB0mbo9BQAQCqKLRUIn7eJHnSfsSZFUk2941pZrDE04LzXDEBsDeyBp27yNFWunTAA
	lFbqQOBj0faPo8qFUKWLgrBN2DYs2rb1RpQ4sbxtTXPBrCw7BysXGSbcqT4oAXY+IjSlD7S/VzG/X
	DUQ5fUsTChTIPbmLddKB37lpEbU1Auy6sZ6BDguiWxPoGBQ6gFvb6WflFrUg2lmTzarKaapS8jUfV
	8TkKRizksf+YlF+90vRWW1Ge+FjTDG4YBdI2rskN9hM/a5t58s7RAMSTNNxgPq0dkCiBbX6OGBauz
	E/Q/ZPEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthQ-0000000EtU9-009r;
	Mon, 18 May 2026 08:51:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthO-0000000EtTW-1eqL
	for barebox@bombadil.infradead.org;
	Mon, 18 May 2026 08:51:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QGEx/2tZGZ2kOe7of+7QJvyMB1LWGVxSTvb3SBA0AMI=; b=q/jx1cMbwLep9jA9pmr8N5cQp5
	75kbTSJY1v//JS5fcg+ttw5jg1JAdsnGyfMx2UPezsdUc7iNtN1YHzlQCpVoUkgikpw8C9bHPGtZI
	OrSC8c5qqBJu84WNu/2irFUE+3THTzeHVTxSUGyjycI9Rs6DQk9McKus5YXjIg43CL5zwKqD0lhbF
	GR/LQqod5AgbQHKtc5vKuH0EsWLkxjYCmXuUFTGSzcE3uJTJYqDzFddtnXyxwsOSRWtxKzce45lBK
	bOt0I+RmYMl8AbB1YZ4E5LiZjTyJYDHnvO2dt4zwNpIXkQ6CmCEcQ9CeNT+UTgb86zOMjGwu9Pdzm
	rvksT6dA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOthK-0000000ASn3-2vhz
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 08:51:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthH-0007ww-9O; Mon, 18 May 2026 10:51:35 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthG-000Yys-29;
	Mon, 18 May 2026 10:51:35 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wOthH-00000000aLS-0ZPr;
	Mon, 18 May 2026 10:51:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Mark Diener <markdiener10@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 May 2026 10:51:32 +0200
Message-ID: <20260518085134.139464-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260518085134.139464-1-a.fatoum@pengutronix.de>
References: <20260518085134.139464-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095139_546091_2FD047D0 
X-CRM114-Status: UNSURE (   8.71  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] doc: user: barebox: update typical barebox startup log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A 12-year old console log is not the best look and it also less useful
now as it differs from what one would normally see on modern platforms.

Replace it with the output from barebox v2026.04.0 on a ROCK-3A instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox.rst | 36 ++++++++++++++++++++--------------
 1 file changed, 21 insertions(+), 15 deletions(-)

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 67cf93eb71c8..4bb33d7db19a 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -275,27 +275,33 @@ This is a typical barebox startup log:
 
 .. code-block:: console
 
-  barebox 2014.06.0-00232-g689dc27-dirty #406 Wed Jun 18 00:25:17 CEST 2014
+  barebox 2026.04.0 #1 2026-04-01T00:00:00+00:00
+  Buildsystem version: DistroKit-2026.04.0
 
 
-  Board: Genesi Efika MX Smartbook
-  detected i.MX51 revision 3.0
-  mc13xxx-spi mc13892@00: Found MC13892 ID: 0x0045d0 [Rev: 2.0a]
-  m25p80 m25p800: sst25vf032b (4096 Kbytes)
-  ata0: registered /dev/ata0
-  imx-esdhc 70004000.esdhc: registered as 70004000.esdhc
-  imx-esdhc 70008000.esdhc: registered as 70008000.esdhc
-  imx-ipuv3 40000000.ipu: IPUv3EX probed
-  netconsole: registered as cs2
-  malloc space: 0xabe00000 -> 0xafdfffff (size 64 MiB)
+  Board: Radxa ROCK 3A
+  rockchip-dmc memory-controller.of: Detected memory size: 0x80000000
+  netconsole: registered as netconsole-1
+  psci psci.of: detected version 1.1
+  xHCI xHCI0: USB XHCI 1.10
+  ehci fd800000.usb@fd800000.of: USB EHCI 1.00
+  ehci fd880000.usb@fd880000.of: USB EHCI 1.00
+  rk808 rk8090: chip id: 0x8090
+  dw_mmc fe000000.mmc@fe000000.of: registered as mmc2
+  mdio_bus: miibus0: probed
+  dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc1
+  rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc0
+  rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
   mmc1: detected SD card version 2.0
   mmc1: registered mmc1
-  barebox-environment environment-sd.7: setting default environment path to /dev/mmc1.barebox-environment
-  running /env/bin/init...
+  state: New state registered 'state'
+  state: Using bucket 0@0x00000000
+  malloc space: 0x40300000 -> 0x7fbfffff (size 1017 MiB)
+  found force-builtin environment, using defaultenv
 
-  Hit any key to stop autoboot:  3
+  Hit m for menu or any to stop autoboot:    3
 
-  barebox@Genesi Efika MX Smartbook:/
+  barebox@Radxa ROCK3 Model A:/
 
 Without intervention, barebox will continue booting after 3 seconds. If interrupted
 by pressing a key, you will find yourself at the :ref:`shell <hush>`.
-- 
2.47.3



