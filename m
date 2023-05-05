Delivery-date: Fri, 05 May 2023 17:54:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlS-006IJn-Bt
	for lore@lore.pengutronix.de; Fri, 05 May 2023 17:54:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puxlQ-0002UB-EZ
	for lore@pengutronix.de; Fri, 05 May 2023 17:54:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k1FlJKzRKRluLuREA90Wsor+yT7DKodgdQIEmb0oXHM=; b=prlBvpWmc1sGHdX06KptZ77YlP
	rC5UiyQUZ4ZoMp//z8wd9nSSo9d+jzTyd9KJVxJujHfyyCPy6NWmxZG8tx4Ce16G8R7gzW1AxJFd9
	3OwE9K661EcCwBq+gsiGxT5sUKYXXG7fjJMjl1CNipR2Rw6xSPwBn3nwaFRg3LJJWywHBhkFbPS9U
	XnjJvf5fpjstqSfPucYPOWBmOhyVvV8emOTa7cqNUhxHXWzR/uaXrjB1cKndJv1i28iQbmt1UaOKi
	/IGwvGvFJCCaocUQA+uxCcmcAg4q1xgcbXIk5FXkRnPquy0oYCTZfQm1AiqXlZfxV1o+tDoE6Ji+e
	1Cbwq99A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk8-00BFKC-1O;
	Fri, 05 May 2023 15:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puxk0-00BFHd-28
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 15:53:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjw-0002Hx-MS; Fri, 05 May 2023 17:53:00 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjw-001KX9-0V; Fri, 05 May 2023 17:53:00 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puxjv-009Vyr-2H; Fri, 05 May 2023 17:52:59 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 17:52:48 +0200
Message-Id: <20230505155248.2261867-4-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505155248.2261867-1-j.zink@pengutronix.de>
References: <20230505155248.2261867-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_085304_703231_AFDE1709 
X-CRM114-Status: GOOD (  17.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] imx-usb-loader: add commandline option for displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For debugging purposes of the imx-usb-loader it can be helpful to
display the version number as a commandline option.

If built from outside the KBuild infrastructure, the version string
cannot be fetched from the generated utsrelease.h header the version
number needs to be defined by setting the UTS_VERSION macro. If the
macro is not set on an out-of-KBuild build, the version number "unknown"
is displayed.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
Changelog:

v1 -> v2: - fixed tool relying on KBuild-infrastructure-generated header
            file to allow build outside of a KBuild environment
	  - remove unneeded double exit() call when displaying the
	    version number

 scripts/imx/Makefile         |  2 +-
 scripts/imx/imx-usb-loader.c | 22 +++++++++++++++++++++-
 2 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index dbfa82910a55..b3be3886d8eb 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -3,7 +3,7 @@
 hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
 hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
-HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
+HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index e49c0bea6ca4..5f9c7ff3a458 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -46,6 +46,10 @@
 #define FT_DCD	0xee
 #define FT_LOAD_ONLY	0x00
 
+#ifndef UTS_RELEASE
+#define UTS_RELEASE "unknown"
+#endif
+
 /*
  * comment from libusb:
  * As per the USB 3.0 specs, the current maximum limit for the depth is 7.
@@ -1526,9 +1530,15 @@ static void usage(const char *prgname)
 		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
 		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
+		"--version    display version number\n"
 		"-h           this help\n", prgname);
 }
 
+static void version(const char *prgname)
+{
+	fprintf(stderr, "%s %s\n", prgname, UTS_RELEASE);
+}
+
 int main(int argc, char *argv[])
 {
 	libusb_device **devs;
@@ -1544,10 +1554,20 @@ int main(int argc, char *argv[])
 	char *initfile = NULL;
 	char *devpath = NULL;
 	char *devtype = NULL;
+	int opt_version = 0;
+	struct option long_options[] = {
+		{"version", no_argument, &opt_version, 1},
+		{ }
+	};
 
 	w.do_dcd_once = 1;
 
-	while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
+	while ((opt = getopt_long(argc, argv, "cvhd:i:p:s", long_options, NULL)) != -1) {
+		if (opt_version) {
+			version(argv[0]);
+			exit(EXIT_SUCCESS);
+		}
+
 		switch (opt) {
 		case 'c':
 			verify = 1;
-- 
2.39.2



