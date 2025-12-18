Delivery-date: Thu, 18 Dec 2025 22:36:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfe-00CyUN-1r
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 22:36:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWLfd-0004Ea-R4
	for lore@pengutronix.de; Thu, 18 Dec 2025 22:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wEtSlbnR0qIA8WVK491HBv7HWRVJGG1iUwnhlmHK2PU=; b=jJ8ngDIeUnijOFY39PzT57XSBw
	yPYhg3GZWJTJ7Sjm/AU61eCmu3TVenzHTT7NC+Ct+hDuEqk3DX6uDbvnej2zJu3z06PHtSKC4nM9m
	w7lbUCY24sNnFVi7ikKiFpzd/0wNyNtHQDiPDxpG8vnur4BqZ8QdgeA7sqdoDpPu/SFZluBJNMtvy
	c4yJI0gA5s0LXn4rWaN27dcA3LpjFJk8ZnAPnqaFws3vKFZ4+6I1c7g6vWCJ3LVA+zs8a/BvWMHAP
	ekEbXUMJtHIij8ULs8Bk6QKaq0R2mo8BNnIzt6HAKDEcQKK9wXgg9z9vChsWTuCd6hYEQmdQUtTt3
	O78dbinQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf5-00000009DQB-3Ium;
	Thu, 18 Dec 2025 21:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWLf2-00000009DOc-3dXP
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 21:35:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf1-00041a-4f; Thu, 18 Dec 2025 22:35:47 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-006LsF-34;
	Thu, 18 Dec 2025 22:35:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWLf0-0000000E03K-3bxi;
	Thu, 18 Dec 2025 22:35:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 22:33:10 +0100
Message-ID: <20251218213542.3263658-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
References: <20251218213542.3263658-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_133548_912886_92705E6E 
X-CRM114-Status: GOOD (  20.01  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/4] arm64: rockchip: qnap-tsx33: support USB installer with EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

[ NOT FOR MERGING ]

We do not do USB enumeration by default, but we should if we want to be
able to boot off an UEFI installer image inserted via USB.

This has been tested on QNAP TS-433eU with
debian-13.1.0-arm64-netinst.iso.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Included, just for informational purposes, until EFI loader support is
upstream.
---
 Documentation/boards/rk35xx/qnap-tsx33.rst    | 26 +++++++++++++++++--
 arch/arm/boards/qnap-tsx33/Makefile           |  1 +
 arch/arm/boards/qnap-tsx33/board.c            |  3 +++
 .../defaultenv-tsx33/init/usbdetect           |  6 +++++
 4 files changed, 34 insertions(+), 2 deletions(-)
 create mode 100755 arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect

diff --git a/Documentation/boards/rk35xx/qnap-tsx33.rst b/Documentation/boards/rk35xx/qnap-tsx33.rst
index b205e31e561b..0a21df4a2b12 100644
--- a/Documentation/boards/rk35xx/qnap-tsx33.rst
+++ b/Documentation/boards/rk35xx/qnap-tsx33.rst
@@ -24,6 +24,14 @@ With these barebox can be compiled as:
 
 If cross-compiling, ``CROSS_COMPILE`` needs to be additionally set.
 
+Alternatively, if you enable barebox to boot an OS image with
+UEFI, use:
+
+.. code-block:: sh
+
+  make ARCH=arm rockchip_v8_efiloader_defconfig
+  make ARCH=arm
+
 Flashing via USB
 ----------------
 
@@ -48,5 +56,19 @@ load barebox into RAM and flash it to the eMMC using ``fastboot``:
 Booting Debian
 --------------
 
-Refer to https://wiki.debian.org/InstallingDebianOn/Qnap/TS-433
-for information on how to install Debian.
+Flash the Debian netinstall image to a USB stick and insert it into
+the (first) front USB and power on the device after having flashed
+barebox to the eMMC as per the previous section.
+
+It should then boot into a GRUB menu and from there into the
+Debian installer.
+
+When the installer asks you at the end about whether to also install
+GRUB to the removable media path, say **yes**.
+
+After installation is done, remove the USB drive and the system
+will automatically boot from the Debian system installed to the
+eMMC.
+
+Refer also to https://wiki.debian.org/InstallingDebianOn/Qnap/TS-433
+for more information on how to install Debian.
diff --git a/arch/arm/boards/qnap-tsx33/Makefile b/arch/arm/boards/qnap-tsx33/Makefile
index 1d052d28c9fc..ec1b7fb7486b 100644
--- a/arch/arm/boards/qnap-tsx33/Makefile
+++ b/arch/arm/boards/qnap-tsx33/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-tsx33
diff --git a/arch/arm/boards/qnap-tsx33/board.c b/arch/arm/boards/qnap-tsx33/board.c
index a4e86b0337f8..c407401e571a 100644
--- a/arch/arm/boards/qnap-tsx33/board.c
+++ b/arch/arm/boards/qnap-tsx33/board.c
@@ -7,6 +7,7 @@
 #include <globalvar.h>
 #include <envfs.h>
 #include <deep-probe.h>
+#include <environment.h>
 #include <linux/usb/gadget-multi.h>
 
 struct ts433_match_data {
@@ -49,6 +50,8 @@ static int ts433_probe(struct device *dev)
 
 	rockchip_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
 
+	defaultenv_append_directory(defaultenv_tsx33);
+
 	return 0;
 }
 
diff --git a/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect b/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect
new file mode 100755
index 000000000000..f2d30f01ac32
--- /dev/null
+++ b/arch/arm/boards/qnap-tsx33/defaultenv-tsx33/init/usbdetect
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+if [ -n "${efi.loader}" ] && [ "${bootsource}" = mmc ]; then
+	otg.mode=host
+	usb
+fi
-- 
2.47.3



