Delivery-date: Wed, 18 Oct 2023 16:41:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7k7-00D5KE-PF
	for lore@lore.pengutronix.de; Wed, 18 Oct 2023 16:41:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qt7k6-00060n-A4
	for lore@pengutronix.de; Wed, 18 Oct 2023 16:41:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=isxI6bZ2SUFj67rMH4tj68Hjiju/fJpSmIxp2C0S8fE=; b=NA4GAqU3udwu2hUHmh5A3n4xUY
	yht82m/r5PBXdoNNL+E9adLgxZVAOevsbv45LA5TT0jP5gqYG8g5HDFvALRK95SYvtk0CgANae56i
	P1IRpe2Be7lCtqlEH23JfYX0YaJrBEGh0BafVU/IW9H7voUeQyRjE+rK7q3REgBZMWhHX0D4N6j2o
	Nr8ybYC4kfMTnwiuLJ1N2oZ7+IBEdEvOVShNHJhtU2CcL7JckCqWkWKM/IM9baomXiD9lDfSQKCoG
	hlcBxxtwczHKlYLXtDWiOkWm0BoVpTyxFvPMHanDPALETj6fnI3Nu7LwKj3Vh1uojHhd8J5EcAsTs
	wTR+S7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7j3-00EwFZ-1Y;
	Wed, 18 Oct 2023 14:40:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt7iz-00EwEY-2M
	for barebox@lists.infradead.org;
	Wed, 18 Oct 2023 14:40:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qt7iy-0005pS-DC
	for barebox@lists.infradead.org; Wed, 18 Oct 2023 16:40:40 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Oct 2023 16:40:38 +0200
Message-Id: <20231018144038.504641-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_074041_768924_416B5BAB 
X-CRM114-Status: GOOD (  11.14  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: imx: add Makefile.mingw64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a small Makfile for building the imx-usb-loader.exe outside the
Kbuild system. The user can compile the tool for windows by:

  make -f scripts/imx/Makfile.mingw64 LIBUSB_DIR=~/libusb-1.0.26

or by

  make -f scripts/imx/Makfile.mingw64 LIBUSB_DIR=~/libusb-1.0.26 O=win

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 scripts/imx/Makefile.mingw64 | 48 ++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 scripts/imx/Makefile.mingw64

diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
new file mode 100644
index 000000000000..e012d833f1b4
--- /dev/null
+++ b/scripts/imx/Makefile.mingw64
@@ -0,0 +1,48 @@
+ifeq ($(strip $(LIBUSB_DIR)),)
+$(error Please specify LIBUSB_DIR e.g. LIBUSB_DIR=~/libusb-1.0.26-binaries)
+endif
+
+CC := x86_64-w64-mingw32-gcc
+ifeq ($(shell which $(CC)),)
+$(error "No $(CC) in $(PATH) found")
+endif
+
+LIBUSB_MINGW := $(LIBUSB_DIR)/libusb-MinGW-x64
+ifeq ($(wildcard $(strip $(LIBUSB_MINGW))),)
+$(error "$(LIBUSB_MINGW) not found")
+endif
+
+src := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
+
+# Do we want to change the working directory?
+ifeq ("$(origin O)", "command line")
+  OUTPUT := $(O)
+else
+  OUTPUT := $(src)/imx-usb-loader-windows
+endif # ifneq ($(OUTPUT),)
+
+# Make's built-in functions such as $(abspath ...), $(realpath ...) cannot
+# expand a shell special character '~'. We use a somewhat tedious way here.
+obj := $(shell mkdir -p $(OUTPUT) && cd $(OUTPUT) && pwd)
+$(if $(obj),, \
+     $(error failed to create output directory "$(OUTPUT)"))
+
+# $(realpath ...) resolves symlinks
+obj := $(realpath $(obj))
+
+CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/
+LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
+
+OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
+
+$(obj)/%.o: $(src)/%.c
+	@$(CC) -c -o $@ $< $(CPPFLAGS)
+
+$(obj)/imx-usb-loader.exe: $(OBJECTS)
+	@$(CC) -o $@ $(OBJECTS) $(LDFLAGS)
+
+all: $(obj)/imx-usb-loader.exe
+
+.PHONY: clean
+clean:
+	@rm -rf $(obj)
-- 
2.39.2



