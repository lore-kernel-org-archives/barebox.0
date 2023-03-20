Delivery-date: Mon, 20 Mar 2023 16:31:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTs-007zLT-Mh
	for lore@lore.pengutronix.de; Mon, 20 Mar 2023 16:31:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1peHTp-0001tO-R5
	for lore@pengutronix.de; Mon, 20 Mar 2023 16:31:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ytWruSBhwPHoVW9Yh7J9x2fFDdxiTmp/KZ+/JtEOByU=; b=aRmYNiLwp1KmyMDpI0Ues/2A+X
	X0poPsWz/GBZnp6Ms+EwhrDTX0DXw/g25ErJeHJ906AbWZ+KD1N9WIhGDJ9Wk7C+dr67JK7NQTi+K
	twTV6l6USq4bBUPXbveA++HvC6lcADokqfPTL1tLaXWeUSiUq50JCs9Y7p2tJDlOkajUs+R4XDWLD
	zlJs9WUmkOIdTEwwjKTlaNRD2noqM//zFGIKZwc2bpNWVINmQYcuMpvKaZ91NUL+N+zt9vLNcSbfh
	wJ4n5wfR6D1QQCmabK1dkQEadL9oVHFi9SBjKwMpKTyspOPIhOjgRHaRx5gs4uf9NieA5QB6ijosN
	uq4i8E2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSW-009XnP-1i;
	Mon, 20 Mar 2023 15:30:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peHSI-009Xfn-2k
	for barebox@lists.infradead.org;
	Mon, 20 Mar 2023 15:29:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSE-0000qt-Io; Mon, 20 Mar 2023 16:29:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSD-005UZE-SU; Mon, 20 Mar 2023 16:29:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1peHSB-00Dbzg-3g; Mon, 20 Mar 2023 16:29:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Mar 2023 16:29:26 +0100
Message-Id: <20230320152941.3155428-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230320152941.3155428-1-s.hauer@pengutronix.de>
References: <20230320152941.3155428-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_082951_050662_E4B5E02F 
X-CRM114-Status: GOOD (  12.83  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/18] usb: gadget: move files to place where Linux has them
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For easier patch merging and comparison with Linux move the usb gadget
files to where Linux has them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/Makefile                        | 14 ++++----------
 drivers/usb/gadget/function/Makefile               |  6 ++++++
 drivers/usb/gadget/{ => function}/dfu.c            |  0
 drivers/usb/gadget/{ => function}/f_acm.c          |  0
 drivers/usb/gadget/{ => function}/f_fastboot.c     |  0
 drivers/usb/gadget/{ => function}/f_mass_storage.c |  0
 drivers/usb/gadget/{ => function}/f_serial.c       |  0
 drivers/usb/gadget/{ => function}/storage_common.c |  0
 drivers/usb/gadget/{ => function}/storage_common.h |  0
 drivers/usb/gadget/{ => function}/u_serial.c       |  0
 drivers/usb/gadget/{ => function}/u_serial.h       |  0
 drivers/usb/gadget/legacy/Makefile                 |  8 ++++++++
 drivers/usb/gadget/{ => legacy}/multi.c            |  0
 drivers/usb/gadget/{ => legacy}/serial.c           |  0
 drivers/usb/gadget/udc/Makefile                    |  8 ++++++++
 drivers/usb/gadget/{ => udc}/at91_udc.c            |  0
 drivers/usb/gadget/{ => udc}/at91_udc.h            |  0
 drivers/usb/gadget/{udc-core.c => udc/core.c}      |  0
 drivers/usb/gadget/{ => udc}/fsl_udc.c             |  0
 drivers/usb/gadget/{ => udc}/fsl_udc_pbl.c         |  0
 drivers/usb/gadget/{ => udc}/pxa27x_udc.c          |  0
 drivers/usb/gadget/{ => udc}/pxa27x_udc.h          |  0
 22 files changed, 26 insertions(+), 10 deletions(-)
 create mode 100644 drivers/usb/gadget/function/Makefile
 rename drivers/usb/gadget/{ => function}/dfu.c (100%)
 rename drivers/usb/gadget/{ => function}/f_acm.c (100%)
 rename drivers/usb/gadget/{ => function}/f_fastboot.c (100%)
 rename drivers/usb/gadget/{ => function}/f_mass_storage.c (100%)
 rename drivers/usb/gadget/{ => function}/f_serial.c (100%)
 rename drivers/usb/gadget/{ => function}/storage_common.c (100%)
 rename drivers/usb/gadget/{ => function}/storage_common.h (100%)
 rename drivers/usb/gadget/{ => function}/u_serial.c (100%)
 rename drivers/usb/gadget/{ => function}/u_serial.h (100%)
 create mode 100644 drivers/usb/gadget/legacy/Makefile
 rename drivers/usb/gadget/{ => legacy}/multi.c (100%)
 rename drivers/usb/gadget/{ => legacy}/serial.c (100%)
 create mode 100644 drivers/usb/gadget/udc/Makefile
 rename drivers/usb/gadget/{ => udc}/at91_udc.c (100%)
 rename drivers/usb/gadget/{ => udc}/at91_udc.h (100%)
 rename drivers/usb/gadget/{udc-core.c => udc/core.c} (100%)
 rename drivers/usb/gadget/{ => udc}/fsl_udc.c (100%)
 rename drivers/usb/gadget/{ => udc}/fsl_udc_pbl.c (100%)
 rename drivers/usb/gadget/{ => udc}/pxa27x_udc.c (100%)
 rename drivers/usb/gadget/{ => udc}/pxa27x_udc.h (100%)

diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 36d71f9b8e..f45b23f22d 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -1,11 +1,5 @@
-# SPDX-License-Identifier: GPL-2.0-only
+# SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o udc-core.o functions.o config.o multi.o
-obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
-obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
-obj-$(CONFIG_USB_GADGET_FASTBOOT) += f_fastboot.o
-obj-$(CONFIG_USB_GADGET_MASS_STORAGE) += f_mass_storage.o storage_common.o
-obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
-pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += fsl_udc_pbl.o
-obj-$(CONFIG_USB_GADGET_DRIVER_AT91) += at91_udc.o
-obj-$(CONFIG_USB_GADGET_DRIVER_PXA27X) += pxa27x_udc.o
+obj-$(CONFIG_USB_GADGET) += composite.o config.o usbstring.o epautoconf.o functions.o config.o
+
+obj-$(CONFIG_USB_GADGET) += udc/ function/ legacy/
diff --git a/drivers/usb/gadget/function/Makefile b/drivers/usb/gadget/function/Makefile
new file mode 100644
index 0000000000..de306b929f
--- /dev/null
+++ b/drivers/usb/gadget/function/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o f_serial.o f_acm.o
+obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
+obj-$(CONFIG_USB_GADGET_FASTBOOT) += f_fastboot.o
+obj-$(CONFIG_USB_GADGET_MASS_STORAGE) += f_mass_storage.o storage_common.o
diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/function/dfu.c
similarity index 100%
rename from drivers/usb/gadget/dfu.c
rename to drivers/usb/gadget/function/dfu.c
diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/function/f_acm.c
similarity index 100%
rename from drivers/usb/gadget/f_acm.c
rename to drivers/usb/gadget/function/f_acm.c
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
similarity index 100%
rename from drivers/usb/gadget/f_fastboot.c
rename to drivers/usb/gadget/function/f_fastboot.c
diff --git a/drivers/usb/gadget/f_mass_storage.c b/drivers/usb/gadget/function/f_mass_storage.c
similarity index 100%
rename from drivers/usb/gadget/f_mass_storage.c
rename to drivers/usb/gadget/function/f_mass_storage.c
diff --git a/drivers/usb/gadget/f_serial.c b/drivers/usb/gadget/function/f_serial.c
similarity index 100%
rename from drivers/usb/gadget/f_serial.c
rename to drivers/usb/gadget/function/f_serial.c
diff --git a/drivers/usb/gadget/storage_common.c b/drivers/usb/gadget/function/storage_common.c
similarity index 100%
rename from drivers/usb/gadget/storage_common.c
rename to drivers/usb/gadget/function/storage_common.c
diff --git a/drivers/usb/gadget/storage_common.h b/drivers/usb/gadget/function/storage_common.h
similarity index 100%
rename from drivers/usb/gadget/storage_common.h
rename to drivers/usb/gadget/function/storage_common.h
diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/function/u_serial.c
similarity index 100%
rename from drivers/usb/gadget/u_serial.c
rename to drivers/usb/gadget/function/u_serial.c
diff --git a/drivers/usb/gadget/u_serial.h b/drivers/usb/gadget/function/u_serial.h
similarity index 100%
rename from drivers/usb/gadget/u_serial.h
rename to drivers/usb/gadget/function/u_serial.h
diff --git a/drivers/usb/gadget/legacy/Makefile b/drivers/usb/gadget/legacy/Makefile
new file mode 100644
index 0000000000..5d5382a673
--- /dev/null
+++ b/drivers/usb/gadget/legacy/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+ccflags-y := -I$(srctree)/drivers/usb/gadget/
+ccflags-y += -I$(srctree)/drivers/usb/gadget/udc/
+ccflags-y += -I$(srctree)/drivers/usb/gadget/function/
+
+obj-$(CONFIG_USB_GADGET_SERIAL) += serial.o
+obj-$(CONFIG_USB_GADGET) += multi.o
diff --git a/drivers/usb/gadget/multi.c b/drivers/usb/gadget/legacy/multi.c
similarity index 100%
rename from drivers/usb/gadget/multi.c
rename to drivers/usb/gadget/legacy/multi.c
diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/legacy/serial.c
similarity index 100%
rename from drivers/usb/gadget/serial.c
rename to drivers/usb/gadget/legacy/serial.c
diff --git a/drivers/usb/gadget/udc/Makefile b/drivers/usb/gadget/udc/Makefile
new file mode 100644
index 0000000000..f52660fcf5
--- /dev/null
+++ b/drivers/usb/gadget/udc/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+
+obj-$(CONFIG_USB_GADGET) += core.o
+
+obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
+pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += fsl_udc_pbl.o
+obj-$(CONFIG_USB_GADGET_DRIVER_AT91) += at91_udc.o
+obj-$(CONFIG_USB_GADGET_DRIVER_PXA27X) += pxa27x_udc.o
diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/udc/at91_udc.c
similarity index 100%
rename from drivers/usb/gadget/at91_udc.c
rename to drivers/usb/gadget/udc/at91_udc.c
diff --git a/drivers/usb/gadget/at91_udc.h b/drivers/usb/gadget/udc/at91_udc.h
similarity index 100%
rename from drivers/usb/gadget/at91_udc.h
rename to drivers/usb/gadget/udc/at91_udc.h
diff --git a/drivers/usb/gadget/udc-core.c b/drivers/usb/gadget/udc/core.c
similarity index 100%
rename from drivers/usb/gadget/udc-core.c
rename to drivers/usb/gadget/udc/core.c
diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/udc/fsl_udc.c
similarity index 100%
rename from drivers/usb/gadget/fsl_udc.c
rename to drivers/usb/gadget/udc/fsl_udc.c
diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/udc/fsl_udc_pbl.c
similarity index 100%
rename from drivers/usb/gadget/fsl_udc_pbl.c
rename to drivers/usb/gadget/udc/fsl_udc_pbl.c
diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
similarity index 100%
rename from drivers/usb/gadget/pxa27x_udc.c
rename to drivers/usb/gadget/udc/pxa27x_udc.c
diff --git a/drivers/usb/gadget/pxa27x_udc.h b/drivers/usb/gadget/udc/pxa27x_udc.h
similarity index 100%
rename from drivers/usb/gadget/pxa27x_udc.h
rename to drivers/usb/gadget/udc/pxa27x_udc.h
-- 
2.30.2



