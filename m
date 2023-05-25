Delivery-date: Thu, 25 May 2023 20:14:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUJ-00E60p-2P
	for lore@lore.pengutronix.de; Thu, 25 May 2023 20:14:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q2FUG-0002k6-Js
	for lore@pengutronix.de; Thu, 25 May 2023 20:14:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=llhUQR9QvNMKNlxpAAmA7vG3/ARI0NkA4HeRfV0dsf8=; b=fGPxUVxBRgQy3IEr71u6mXoF8O
	aok2VTP4Y2D9f1K7Qt9b3tMmxZ88FUKb2k1iblZJIkzxcEuNo/KacO88EWjxewif0R9E5+/XEy7/P
	NTJOFXAnZn+pz4ijssSqKSBpkE98Aag+JYhNblWy5exWj5pf3rfrixi0GY3fDY+dZgKlpEzFj+iH1
	OjTDtRCJQR2TAOqaJsrWh2w9CRApczvHxPAKriNTGXT3vZDAwrdSyK6ulf9Ys4IWbKn45LEGISLx8
	KO5l6+iRtyuveTM6+RvxX2C6sQcQwoVD4U/Ewf0O817iXG5lj9CO3ZDILOr0X7/SUgpdGQ+IKCoU3
	BoxQFxyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FT6-00HLtX-0j;
	Thu, 25 May 2023 18:13:44 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2FT0-00HLqQ-0U
	for barebox@lists.infradead.org;
	Thu, 25 May 2023 18:13:40 +0000
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
X-GND-Sasl: ahmad@a3f.at
Received: by mail.gandi.net (Postfix) with ESMTPSA id 38EC91BF203;
	Thu, 25 May 2023 18:13:28 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Johannes Zink <j.zink@pengutronix.de>
Date: Thu, 25 May 2023 20:13:17 +0200
Message-Id: <20230525181320.2277320-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_111338_337707_77B22B88 
X-CRM114-Status: GOOD (  12.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/4] Revert "imx-usb-loader: add commandline option for displaying version number"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

include/generated/utsrelease.h is only generated in the prepare make
target, which is not a dependency of the scripts make target. Builds of
the scripts target, e.g. sandbox $(make hosttools_defconfig; make scripts),
may thus fail because the file had not yet been generated:

<command-line>: fatal error: /build/source/include/generated/utsrelease.h:
	No such file or directory
	compilation terminated.

That scripts doesn't depend on prepare may be due to scripts/kconfig.
The kernel may side step this issue by having tools not needed for
prepare in a separate tools/.

Until this is resolved, revert commit c1b50061f4b33482ae749f9d6d6c92aa5bf6b37a.

Cc: Johannes Zink <j.zink@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 scripts/imx/Makefile         |  2 +-
 scripts/imx/imx-usb-loader.c | 22 +---------------------
 2 files changed, 2 insertions(+), 22 deletions(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index b3be3886d8eb..dbfa82910a55 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -3,7 +3,7 @@
 hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
 hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
-HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
+HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 676f077c2557..839288f753cc 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -46,10 +46,6 @@
 #define FT_DCD	0xee
 #define FT_LOAD_ONLY	0x00
 
-#ifndef UTS_RELEASE
-#define UTS_RELEASE "unknown"
-#endif
-
 /*
  * comment from libusb:
  * As per the USB 3.0 specs, the current maximum limit for the depth is 7.
@@ -1530,15 +1526,9 @@ static void usage(const char *prgname)
 		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
 		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
-		"--version    display version number\n"
 		"-h           this help\n", prgname);
 }
 
-static void version(const char *prgname)
-{
-	fprintf(stderr, "%s %s\n", prgname, UTS_RELEASE);
-}
-
 int main(int argc, char *argv[])
 {
 	libusb_device **devs;
@@ -1554,20 +1544,10 @@ int main(int argc, char *argv[])
 	char *initfile = NULL;
 	char *devpath = NULL;
 	char *devtype = NULL;
-	int opt_version = 0;
-	struct option long_options[] = {
-		{"version", no_argument, &opt_version, 1},
-		{ }
-	};
 
 	w.do_dcd_once = 1;
 
-	while ((opt = getopt_long(argc, argv, "cvhd:i:p:s", long_options, NULL)) != -1) {
-		if (opt_version) {
-			version(argv[0]);
-			exit(EXIT_SUCCESS);
-		}
-
+	while ((opt = getopt(argc, argv, "cvhd:i:p:s")) != -1) {
 		switch (opt) {
 		case 'c':
 			verify = 1;
-- 
2.38.4



