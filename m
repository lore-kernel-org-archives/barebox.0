Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X5Zxe-0003On-2L
 for barebox@lists.infradead.org; Fri, 11 Jul 2014 12:29:59 +0000
Received: by mail-lb0-f179.google.com with SMTP id z11so800453lbi.38
 for <barebox@lists.infradead.org>; Fri, 11 Jul 2014 05:29:35 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 11 Jul 2014 16:29:19 +0400
Message-Id: <1405081759-15028-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1405081759-15028-1-git-send-email-antonynpavlov@gmail.com>
References: <1405081759-15028-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] fixup! i2c: import SMBus stuff from linux
To: barebox@lists.infradead.org

---
 drivers/i2c/Kconfig  | 3 ---
 drivers/i2c/Makefile | 3 +--
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/i2c/Kconfig b/drivers/i2c/Kconfig
index 8b5ad50..0c6aec3 100644
--- a/drivers/i2c/Kconfig
+++ b/drivers/i2c/Kconfig
@@ -3,9 +3,6 @@ menuconfig I2C
 
 if I2C
 
-config I2C_SMBUS
-	bool
-
 source drivers/i2c/algos/Kconfig
 source drivers/i2c/busses/Kconfig
 
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index 0f8fe84..648d844 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,2 +1 @@
-obj-$(CONFIG_I2C) += i2c.o busses/ algos/
-obj-$(CONFIG_I2C_SMBUS) += i2c-smbus.o
+obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o busses/ algos/
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
