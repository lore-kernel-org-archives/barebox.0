Delivery-date: Fri, 05 May 2023 09:54:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH2-005dq6-V2
	for lore@lore.pengutronix.de; Fri, 05 May 2023 09:54:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puqH1-00037S-0s
	for lore@pengutronix.de; Fri, 05 May 2023 09:54:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wyj545zd/wqApZwLn7nycxx3YYRNHIVzxHUN5BCf2ak=; b=yQe9/aOfeVc+3kIzcHyY6S8POz
	7655inVbt8N7px+7bwV4aNfFXdIf6zJUw6ZSTPtxV2yhlrtdDW/ehvxsBR8RJc1KF+lOrnjSg+2eq
	puVaH5JvXy8FMtZN00LyqkBIpfbwFGFLVILqQYdOU+oRiMyBXT0xme9tHvkFwc5SQJV3bpPtrq6qB
	zRtaJihJ3rlHy22UJEq0kVX7LV/NQGxOeYGXihOh7OqZ4kts3FoT3p9Qs5lCfxU2sZQLG9j8305Mm
	vZs1frP2JZvDNQ8EmX62nfqVMb2JUuo/ky1yAqplzJgq1YRuj60GRrMamc71qmpz/hYejaiA3E41f
	Nsifjk/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFr-009xhO-2i;
	Fri, 05 May 2023 07:53:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puqFm-009xf0-1J
	for barebox@lists.infradead.org;
	Fri, 05 May 2023 07:53:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFh-0002ir-BU; Fri, 05 May 2023 09:53:17 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFg-001FAa-N0; Fri, 05 May 2023 09:53:16 +0200
Received: from jzi by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <jzi@pengutronix.de>)
	id 1puqFf-004GrJ-SM; Fri, 05 May 2023 09:53:15 +0200
From: Johannes Zink <j.zink@pengutronix.de>
To: barebox@lists.infradead.org
Cc: patchwork-jzi@pengutronix.de,
	kernel@pengutronix.de,
	Johannes Zink <j.zink@pengutronix.de>
Date: Fri,  5 May 2023 09:53:08 +0200
Message-Id: <20230505075308.1015157-4-j.zink@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505075308.1015157-1-j.zink@pengutronix.de>
References: <20230505075308.1015157-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_005322_471362_4D4DE58E 
X-CRM114-Status: GOOD (  14.10  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 3/3] imx-usb-loader: add commandline option for displaying version number
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For debugging purposes of the imx-usb-loader it can be helpful to
display the version number as a commandline option.

Signed-off-by: Johannes Zink <j.zink@pengutronix.de>
---
 scripts/imx/Makefile         |  2 +-
 scripts/imx/imx-usb-loader.c | 21 ++++++++++++++++++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index dbfa82910a55..43584427d27d 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -3,7 +3,7 @@
 hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
 hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
-HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
+HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -I$(objtree)/include/generated
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index e49c0bea6ca4..d4f876bb1c99 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -32,6 +32,7 @@
 #include <libusb.h>
 #include <getopt.h>
 #include <linux/kernel.h>
+#include <utsrelease.h>
 
 #include "../common.h"
 #include "../compiler.h"
@@ -1526,9 +1527,17 @@ static void usage(const char *prgname)
 		"-p <devpath> Specify device path: <bus>-<port>[.<port>]...\n"
 		"-s           skip DCD included in image\n"
 		"-v           verbose (give multiple times to increase)\n"
+		"--version    display version number\n"
 		"-h           this help\n", prgname);
 }
 
+static void version(const char *prgname)
+{
+	fprintf(stderr, "%s %s\n",
+		prgname, UTS_RELEASE);
+	exit(EXIT_SUCCESS);
+}
+
 int main(int argc, char *argv[])
 {
 	libusb_device **devs;
@@ -1544,10 +1553,20 @@ int main(int argc, char *argv[])
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



