Delivery-date: Sat, 08 Apr 2023 10:08:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pl3cU-00E3nh-N1
	for lore@lore.pengutronix.de; Sat, 08 Apr 2023 10:08:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pl3cU-0004Nz-Fl
	for lore@pengutronix.de; Sat, 08 Apr 2023 10:08:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZSwUvlO6PwTaD7AuuQ7Oe7hcQJOIF3ovpzKR+7cJ9K4=; b=lqGf77ALeTAlN42Hlk5tZG9C+8
	bfYu6eaw3pHeWGBwiqx5vux/EBs8lhfGN1Bl5T0CIWypLOLB/ktcJSzPfuzdnVzyfN/Tii0fEJHv0
	aFOI9oxT/Q4FR30HGmH2LF97KrP7jg79oCmUwLwLxNf7zcUud+h07JXPLwKvIkn+VD4F04lTGd7sk
	hokN5OPo7NPWt4ypnhaRvYcCCiVcSHAkYG/H4S9xfz0P7GOc4Oe32nzfkeHjpTMLVGu3XbAKBaqKd
	ZOgwFLzk28akWRcHM12LflN1y7ZGJj4psFRD/pMu38gtKG5p9rjrUYLbtfBU810d5KSR42Lo9mY4T
	UbdncL5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pl3ay-00BvLX-0i;
	Sat, 08 Apr 2023 08:06:48 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pl3au-00BvKT-1s
	for barebox@lists.infradead.org;
	Sat, 08 Apr 2023 08:06:46 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 3672B240003;
	Sat,  8 Apr 2023 08:06:31 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  8 Apr 2023 10:06:16 +0200
Message-Id: <20230408080616.938638-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230408_010644_817145_D4ADE06D 
X-CRM114-Status: UNSURE (   6.97  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] treewide: add missing device tree artifact cleanup where needed
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The DTs in arch/$ARCH/dts are all cleaned up when invoking the make
target, but we have a few DTs outside these directories.

Clean those up as well and add a clean line for the overlay too.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/boards/riscvemu/Makefile | 3 +++
 common/boards/qemu-virt/Makefile    | 3 +++
 test/self/Makefile                  | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/riscv/boards/riscvemu/Makefile b/arch/riscv/boards/riscvemu/Makefile
index 56949c2357c8..ec7e89479e77 100644
--- a/arch/riscv/boards/riscvemu/Makefile
+++ b/arch/riscv/boards/riscvemu/Makefile
@@ -3,3 +3,6 @@
 obj-y += board.o
 obj-y += overlay-of-sram.dtb.o
 bbenv-$(CONFIG_CMD_TUTORIAL) += defaultenv-riscvemu
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/common/boards/qemu-virt/Makefile b/common/boards/qemu-virt/Makefile
index 88184e9a7969..8cacfafee734 100644
--- a/common/boards/qemu-virt/Makefile
+++ b/common/boards/qemu-virt/Makefile
@@ -5,3 +5,6 @@ obj-y += overlay-of-flash.dtb.o
 ifeq ($(CONFIG_RISCV),y)
 DTC_CPP_FLAGS_overlay-of-flash.dtb := -DRISCV_VIRT=1
 endif
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
diff --git a/test/self/Makefile b/test/self/Makefile
index 4d2c0374c9c3..d55d9133be23 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -8,3 +8,6 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_JSON) += json.o
+
+clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
+clean-files += *.dtbo *.dtbo.S .*.dtso
-- 
2.38.4



