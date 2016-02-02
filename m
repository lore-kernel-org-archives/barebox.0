Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1aQcG6-0006tb-4s
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 14:48:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Feb 2016 15:47:46 +0100
Message-Id: <1454424497-7157-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
References: <1454424497-7157-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/34] scripts: Add scripts/include to host compiler includes
To: Barebox List <barebox@lists.infradead.org>

So that host tools can use the kernel includes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/Makefile b/scripts/Makefile
index a3f6222..aeedcac 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -20,6 +20,7 @@ hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_ARCH_MXS)     += mxsimage mxsboot
+HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLOADLIBES_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_mxs-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_mxs-usb-loader  = `pkg-config --libs libusb-1.0`
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
