Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a9Mpx-0004tN-DN
 for barebox@lists.infradead.org; Thu, 17 Dec 2015 00:54:29 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 17 Dec 2015 00:53:59 +0000
Message-ID: <1450313640.26955.192.camel@rtred1test09.kymeta.local>
References: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
In-Reply-To: <1450313304.26955.188.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <7C8D283F0C82FA4E87E7E892361418C6@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] socfpga: Find partition with environment via device tree
To: barebox <barebox@lists.infradead.org>

socfpga would load the environment from a file named "barebox.env"
located on the device "/dev/mmc0.1".  Both those names are hard-coded
in the socfpga code and can't be changed.

Barebox supports selecting the location of the environment using a
"barebox,environment" node in device tree's "chosen" node.  And
recently supports specifying that the env should come from a file on
this device.

Change socfpga to use this mechanism by adding the appropriate device
node.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 arch/arm/configs/socfpga_defconfig |  1 +
 arch/arm/dts/socfpga.dtsi          |  8 ++++++++
 arch/arm/mach-socfpga/generic.c    | 38 --------------------------------------
 3 files changed, 9 insertions(+), 38 deletions(-)

diff --git a/arch/arm/configs/socfpga_defconfig b/arch/arm/configs/socfpga_defconfig
index 0a31de5..7fbe045 100644
--- a/arch/arm/configs/socfpga_defconfig
+++ b/arch/arm/configs/socfpga_defconfig
@@ -67,6 +67,7 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_DESIGNWARE=y
 CONFIG_MCI=y
diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index d4d498b..d16758f 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -1,4 +1,12 @@
 / {
+	chosen {
+		environment@0 {
+			compatible = "barebox,environment";
+			device-path = &mmc, "partname:1";
+			file-path = "barebox.env";
+		};
+	};
+
 	aliases {
 		mmc0 = &mmc;
 	};
diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index 2d4afd0..906bc63 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -103,41 +103,3 @@ static int socfpga_init(void)
 	return 0;
 }
 core_initcall(socfpga_init);
-
-#if defined(CONFIG_ENV_HANDLING)
-#define ENV_PATH "/boot/barebox.env"
-static int socfpga_env_init(void)
-{
-	struct stat s;
-	char *diskdev, *partname;
-	int ret;
-
-	diskdev = "mmc0";
-
-	device_detect_by_name(diskdev);
-
-	partname = asprintf("/dev/%s.1", diskdev);
-
-	ret = stat(partname, &s);
-
-	if (ret) {
-		pr_err("Failed to load environment: no device '%s'\n", diskdev);
-		goto out_free;
-	}
-
-	mkdir("/boot", 0666);
-	ret = mount(partname, "fat", "/boot", NULL);
-	if (ret) {
-		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
-		goto out_free;
-	}
-
-	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, diskdev);
-	default_environment_path_set(ENV_PATH);
-
-out_free:
-	free(partname);
-	return 0;
-}
-late_initcall(socfpga_env_init);
-#endif
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
