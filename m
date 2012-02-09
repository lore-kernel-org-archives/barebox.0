Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvUEK-0006fp-7x
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 13:40:10 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RvUEA-0002Uf-L7
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 08:39:58 -0500
Date: Thu, 9 Feb 2012 08:39:51 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202090837370.5576@oneiric>
MIME-Version: 1.0
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
Subject: [PATCH] Add support for default env and mounting /boot to BeagleBoard
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Stealing shamelessly from the panda/board.c file, add equivalent
support for checking for the default environment and automounting the
/boot partition on the SD card.

Also, include the necessary header files for this, and fix the
filename reference at the top of the file.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  a quick and dirty theft of code from panda/board.c, it builds and
boots and appears to work.  thoughts?

diff --git a/arch/arm/boards/beagle/board.c b/arch/arm/boards/beagle/board.c
index faeaf8e..6825ef2 100644
--- a/arch/arm/boards/beagle/board.c
+++ b/arch/arm/boards/beagle/board.c
@@ -27,7 +27,7 @@
 /**
  * @page ti_beagle Texas Instruments Beagle Board
  *
- * FileName: arch/arm/boards/omap/board-beagle.c
+ * FileName: arch/arm/boards/beagle/board.c
  *
  * Beagle Board from Texas Instruments as described here:
  * http://www.beagleboard.org
@@ -55,6 +55,7 @@
 #include <common.h>
 #include <console.h>
 #include <init.h>
+#include <fs.h>
 #include <driver.h>
 #include <sizes.h>
 #include <io.h>
@@ -72,8 +73,10 @@
 #include <mach/ehci.h>
 #include <i2c/i2c.h>
 #include <linux/err.h>
+#include <linux/stat.h>
 #include <usb/ehci.h>
 #include <mach/xload.h>
+#include <environment.h>

 /******************** Board Boot Time *******************/

@@ -317,3 +320,30 @@ static int beagle_devices_init(void)
 	return 0;
 }
 device_initcall(beagle_devices_init);
+
+#ifdef CONFIG_DEFAULT_ENVIRONMENT
+static int beagle_env_init(void)
+{
+	struct stat s;
+	char *diskdev = "/dev/disk0.0";
+	int ret;
+
+	ret = stat(diskdev, &s);
+	if (ret) {
+		printf("no %s. using default env\n", diskdev);
+		return 0;
+	}
+
+	mkdir ("/boot", 0666);
+	ret = mount(diskdev, "fat", "/boot");
+	if (ret) {
+		printf("failed to mount %s\n", diskdev);
+		return 0;
+	}
+
+	default_environment_path = "/boot/bareboxenv";
+
+	return 0;
+}
+late_initcall(beagle_env_init);
+#endif

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
