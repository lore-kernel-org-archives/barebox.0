Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp31.i.mail.ru ([94.100.177.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3r9h-0008E9-Ri
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 16:50:31 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 20:50:24 +0400
Message-Id: <1360342224-30331-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] net: CPSW: Fix non-OMAP barebox building with DRIVER_NET_CPSW
 option
To: barebox@lists.infradead.org

  CC      drivers/net/cpsw.o
  drivers/net/cpsw.c:34:23: error: mach/cpsw.h: No such file or directory
  drivers/net/cpsw.c:203: error: field 'data' has incomplete type
  drivers/net/cpsw.c: In function 'cpsw_open':
  drivers/net/cpsw.c:773: error: invalid use of undefined type 'struct cpsw_slave_data'
  drivers/net/cpsw.c:773: error: dereferencing pointer to incomplete type
  drivers/net/cpsw.c:774: error: invalid use of undefined type 'struct cpsw_slave_data'
  drivers/net/cpsw.c:774: error: dereferencing pointer to incomplete type
  drivers/net/cpsw.c: In function 'cpsw_probe':
  drivers/net/cpsw.c:967: error: dereferencing pointer to incomplete type
  drivers/net/cpsw.c:969: error: dereferencing pointer to incomplete type
  make[2]: *** [drivers/net/cpsw.o] Error 1
  make[1]: *** [drivers/net] Error 2
  make: *** [drivers] Error 2

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/net/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index cf6ceee..2b7decd 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -33,6 +33,7 @@ config DRIVER_NET_CS8900
 
 config DRIVER_NET_CPSW
 	bool "CPSW ethernet driver"
+	depends on ARCH_OMAP
 	select PHYLIB
 
 config DRIVER_NET_SMC911X
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
