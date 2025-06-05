Delivery-date: Thu, 05 Jun 2025 12:12:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN7aU-003yW7-2b
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 12:12:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN7aU-0006zJ-72
	for lore@pengutronix.de; Thu, 05 Jun 2025 12:12:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KBc6PJrtMsnJVuWkX917/bhCuoJpcdjF+hUY3mKvWLM=; b=TTMFo+IMCpprLaaCj/Pb+vji8i
	p1/Us4mCSDk5c3YWhBvDxqOi56npPEP87TN6j6Tg0aw1g89D2I7GrdSVsiA76FNLoTeCURWFnb9s4
	K2Hx+jg1DH3lL0r1iWlIno/SEIa7SAlxmNfq72qfDrTxtw2aJUZSkjq3ahaO24P22KRhSosVrsJcX
	gMCgMNI5D7pxsf7XIqJM2bJvNkBbN0xhQMI+08R6j2QbqQrhTxSvbDGYB7pYu66b43NrIAnEGj2ll
	5MD396oEpzvu6DzPhZ1dxYJ1ie3d4qmjLh0124DwGv7iUfQ+x8CnktxJMy+OrMuPZPSuxBJOPCD/c
	cWLKriig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN7Zr-0000000FE7j-2L6m;
	Thu, 05 Jun 2025 10:12:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN7Zo-0000000FE7J-3Sdr
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 10:12:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7Zn-0006XI-IS; Thu, 05 Jun 2025 12:11:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7Zn-001wPa-1E;
	Thu, 05 Jun 2025 12:11:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN7Zn-001w6G-0s;
	Thu, 05 Jun 2025 12:11:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  5 Jun 2025 12:11:58 +0200
Message-Id: <20250605101158.461655-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_031200_885975_0A1F0951 
X-CRM114-Status: GOOD (  11.62  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: boards: k3: adjust to reality
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using separate files for firmware binaries was removed in commit
1bc97b7995 ("ARM: k3: r5: drop loading of separate binaries"). Adjust
the documentation accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/boards/ti-k3.rst | 28 +++++-----------------------
 1 file changed, 5 insertions(+), 23 deletions(-)

diff --git a/Documentation/boards/ti-k3.rst b/Documentation/boards/ti-k3.rst
index 18061a9836..6cb9eb8eda 100644
--- a/Documentation/boards/ti-k3.rst
+++ b/Documentation/boards/ti-k3.rst
@@ -72,25 +72,16 @@ OP-TEE is built from https://github.com/OP-TEE/optee_os.git::
 OP-TEE is optional. barebox will continue without ``optee.bin`` when the file
 does not exist.
 
-Copying ti-dm.bin
------------------
-
-The ``ti-dm.bin`` binary is part of ti-linux-firmware.git, this needs to be
-copied to the eMMC/SD as well::
-
-  cp firmware/ti-linux-firmware/ti-dm/am62xx/ipc_echo_testb_mcu1_0_release_strip.xer5f $TI_BOOT/ti-dm.bin
-
 Combining binaries into a FIP image
 -----------------------------------
 
-Alternatively to putting the different binaries (``barebox.bin``, ``bl31.bin``, ``optee.bin``
-and ``ti-dm.bin``) into the FAT image the files can be combined into a FIP image named
-``k3.fip``.::
+The files have to be combined into a FIP image named ``k3.fip``.::
 
   fiptool create --soc-fw bl31.bin \
     --tos-fw optee.bin \
     --nt-fw barebox-beagleplay.img \
-    --blob uuid=9e8c2017-8b94-4e2b-a7b3-a0f88eabb8ae,file=ti-dm.bin k3.fip
+    --blob uuid=9e8c2017-8b94-4e2b-a7b3-a0f88eabb8ae,file=\
+    firmware/ti-linux-firmware/ti-dm/am62xx/ipc_echo_testb_mcu1_0_release_strip.xer5f k3.fip
 
 USB DFU boot
 ------------
@@ -99,20 +90,11 @@ using ``dfu-util``::
 
   dfu-util -D barebox-beagleplay-r5.img -a bootloader
 
-This will start the initial stage which then expects the following stages which can
-be uploaded with ``dfu-util`` as well, either as FIP image::
+This will start the initial stage which then expects the following stage which can
+be uploaded with ``dfu-util`` as well::
 
   dfu-util -D k3.fip -a fip
 
-or as separate files::
-
-  dfu-util -D blb31.bin -a tfa
-  dfu-util -D optee.bin -a optee
-  dfu-util -D ti-dm.bin -a ti-dm
-  dfu-util -D barebox-beagleplay.img -a barebox
-
-Uploading optee.bin can be skipped in case it's not needed.
-
 eMMC boot
 ---------
 K3 boards can boot from eMMC boot partitions. In this mode the ROM reads the tiboot3.bin
-- 
2.39.5



