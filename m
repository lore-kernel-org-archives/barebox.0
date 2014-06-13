Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvML2-00006T-Ep
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:57 +0000
Received: by mail-la0-f52.google.com with SMTP id s18so1259746lam.11
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:30 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.29
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:29 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:26 +0200
Message-Id: <1402646075-22747-10-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/18] musb: adapt Kconfig and Makefiles
To: barebox@lists.infradead.org

---
 drivers/usb/Kconfig       |    2 ++
 drivers/usb/Makefile      |    1 +
 drivers/usb/musb/Kconfig  |   21 +++++++++++++++++++++
 drivers/usb/musb/Makefile |    5 -----
 4 files changed, 24 insertions(+), 5 deletions(-)
 create mode 100644 drivers/usb/musb/Kconfig

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index 0b349bf..15010f5 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -7,6 +7,8 @@ source drivers/usb/imx/Kconfig
 
 source drivers/usb/host/Kconfig
 
+source drivers/usb/musb/Kconfig
+
 source drivers/usb/otg/Kconfig
 
 source drivers/usb/storage/Kconfig
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 3cefab7..25820eb 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -4,4 +4,5 @@ obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
 obj-y += otg/
+obj-y += musb/
 
diff --git a/drivers/usb/musb/Kconfig b/drivers/usb/musb/Kconfig
new file mode 100644
index 0000000..0a88355
--- /dev/null
+++ b/drivers/usb/musb/Kconfig
@@ -0,0 +1,21 @@
+config USB_MUSB_HOST
+	tristate 'Inventra Highspeed Dual Role Controller (TI, ADI, ...)'
+	depends on USB
+	select MUSB_PIO_ONLY
+	select USB_MUSB_DSPS
+	help
+	  Say Y here if your system has a dual role high speed USB
+	  controller based on the Mentor Graphics silicon IP.  Then
+	  configure options to match your silicon and the board
+	  it's being used with, including the USB peripheral role,
+	  or the USB host role, or both.
+
+if USB_MUSB_HOST
+
+config USB_MUSB_DSPS
+	bool USB_MUSB_DSPS
+
+config MUSB_PIO_ONLY
+	bool MUSB_PIO_ONLY
+
+endif # USB_MUSB_HOST
diff --git a/drivers/usb/musb/Makefile b/drivers/usb/musb/Makefile
index 64ebe06..e6cc408 100644
--- a/drivers/usb/musb/Makefile
+++ b/drivers/usb/musb/Makefile
@@ -4,8 +4,3 @@
 
 obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o musb_core.o
 obj-$(CONFIG_USB_MUSB_DSPS) += musb_dsps.o
-
-CFLAGS_NO_WARN := $(call cc-option,-Wno-unused-variable) \
-			$(call cc-option,-Wno-unused-but-set-variable) \
-			$(call cc-option,-Wno-unused-label)
-CFLAGS += $(CFLAGS_NO_WARN)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
