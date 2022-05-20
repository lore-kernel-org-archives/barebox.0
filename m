Delivery-date: Fri, 20 May 2022 13:16:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0by-00335b-0l
	for lore@lore.pengutronix.de; Fri, 20 May 2022 13:16:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ns0bw-0007lu-Nh
	for lore@pengutronix.de; Fri, 20 May 2022 13:16:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FHDX5wqp1O6Qnayzo6tPDCRDLfgL1/kF772GaRKTf2w=; b=uhyb5bWhL2/Yhw
	xAgTzAAr8Jv+W5yUFFEQam1r+CUlk4ZzHVf+xtLkKZVvJDywlQHRVbId2lWi7PgMfa15rKzJcYxO6
	ASZ8BVg4m13WMvuxKWpVfCovMeyKt09kJW+XplcckFB0L8rTFDlg98Y8VojAu2wUzel1eyKGDXeF7
	BgvWP2dUs/bJaOHkgy64rBkD0Dhns87xtH3XYaUuqElkt0Y3HCs18ibQCGyMbNMHyze6iYkDlQeyd
	+DS4EZ5Q09DNHaP4lcDExurtOlW3IhOxvrRsWXJGQ9jKqYB1V7XyAw6Nmzi5GKzeLwHM84Pm3OA3K
	BrzfcxuqmOrlI4lvRRQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns0ah-00C2Xm-06; Fri, 20 May 2022 11:14:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns0aZ-00C2Vs-Uz
 for barebox@lists.infradead.org; Fri, 20 May 2022 11:14:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ns0aV-0007X4-Ct; Fri, 20 May 2022 13:14:31 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1ns0aW-003TKZ-2F; Fri, 20 May 2022 13:14:30 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1ns0aT-00BOkS-SF; Fri, 20 May 2022 13:14:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 May 2022 13:14:28 +0200
Message-Id: <20220520111429.2716691-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_041436_050527_82C043A8 
X-CRM114-Status: GOOD (  10.29  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] Documentation: boards: stm32mp: document USB bootstrap
 via DFU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

TF-A v2.6 now supports DFU for USB bootstrap on the STM32MP1. This is
normally exercised by the STM32CubeProgrammer, but is easily usable with
just dfu-util as well. Document how to.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 0c9615b290a5..4cdd281a9e14 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -49,6 +49,8 @@ In the above output, images with a ``.stm32`` extension feature the (legacy)
 stm32image header. ``barebox-dt-2nd.img`` and ``barebox-stm32mp-generic-bl33.img``
 are board-generic barebox images that receive an external device tree.
 
+.. _stm32mp_fip:
+
 Flashing barebox (FIP)
 ----------------------
 
@@ -137,6 +139,34 @@ Assuming ``CONFIG_CMD_MMC_EXTCSD`` is enabled and the board shall boot from
 The STM32MP1 BootROM does *not* support booting from eMMC without fast boot
 acknowledge.
 
+USB Bootstrap (DFU)
+-------------------
+
+The STM32MP1 can be strapped to boot from USB. After Power-On reset, it
+should be detectable as ``STMicroelectronics STM Device in DFU Mode``
+and can be uploaded to with ``dfu-util(1)``::
+
+  dfu-util --alt 1 -D tf-a-stm32mp157c-my-board.stm32
+  dfu-util --alt 3 -D bl3-firmware.fip
+  dfu-util --alt 0 -e
+
+The first command will talk to the BootROM and upload the first stage
+bootloader (ARM Trusted Firmware-A) into on-chip SRAM.
+
+When compiled with ``STM32MP_USB_PROGRAMMER=1``, TF-A v2.6 or higher
+will seamlessly continue operation of the DFU gadget. The second
+command will talk to TF-A to upload a Firmware Image Package, which
+is a format bundling further firmware including barebox.
+
+The final command will instruct TF-A to boot the loaded images.
+This all happens in volatile memory. To persist images, use
+normal barebox functionality like creating a DFU-gadget in barebox,
+Fastboot/USB mass storage ... etc.
+
+The FIP image containing barebox can be generated as described in
+137::ref:`stm32mp_fip`. Upstream TF-A doesn't support DFU for
+SSBLs using the legacy stm32image format.
+
 Boot source selection
 ---------------------
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

