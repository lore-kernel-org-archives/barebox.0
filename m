Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5uKw-0001X7-Kf
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 08:38:35 +0000
Received: from isonoe.hi.pengutronix.de ([10.1.0.76])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1U5uKu-0006ZT-TU
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:38:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 14 Feb 2013 09:37:14 +0100
References: <201302140920.39814.jbe@pengutronix.de>
In-Reply-To: <201302140920.39814.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201302140937.14718.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] arm/i.M23/chumbyfalconwing: just fix a typo
To: barebox@lists.infradead.org

Juergen Beisert wrote:
> [...]
>  	if (rc != 0)
>  		printf("Cannot create the 'env0' persistant environment storage (%d)\n", rc);
                                                     ___^
Arrghh, still two 'a' left. :(

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 0818666..a9e1c00 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -274,7 +274,7 @@ mem_initcall(falconwing_mem_init);
  * If this SD card is also the boot media, we can use the second partition
  * for our environment purpose (if present!).
  */
-static int register_persistant_environment(void)
+static int register_persistent_environment(void)
 {
 	struct cdev *cdev;
 
@@ -338,9 +338,9 @@ static int falconwing_devices_init(void)
 	armlinux_set_bootparams((void *)IMX_MEMORY_BASE + 0x100);
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
-	rc = register_persistant_environment();
+	rc = register_persistent_environment();
 	if (rc != 0)
-		printf("Cannot create the 'env0' persistant environment storage (%d)\n", rc);
+		printf("Cannot create the 'env0' persistent environment storage (%d)\n", rc);
 
 	return 0;
 }
@@ -393,7 +393,7 @@ make ARCH=arm CROSS_COMPILE=armv5compiler
 
 - Create four primary partitions on the MCI card
  - the first one for the bootlets (about 256 kiB)
- - the second one for the persistant environment (size is up to you, at least 256k)
+ - the second one for the persistent environment (size is up to you, at least 256k)
  - the third one for the kernel (2 MiB ... 4 MiB in size)
  - the 4th one for the root filesystem which can fill the rest of the available space
 


jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
