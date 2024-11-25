Delivery-date: Mon, 25 Nov 2024 16:36:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb83-000GIC-36
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb82-00051i-Tf
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=roc0HaDTpCMDdekTjEPDLAoQyxa4vnOAaeAuMgrf+nw=; b=frEzcIhTkX4Jw0UvtJHDDBHt7a
	ESA3qsEFYvW4nHURqqtrQJD5YFhoVRZgGOjdTxTg3vfmTSqZHDK03npqH1+kqhV7HvW7Flt7my8l2
	E+Hj60XmxRHgw3sGQWbFyMHcmli5QUAMQdlKVG9yfnx+UNGA9xzNZDCCotyTOx7T3udh08JK+wBfO
	a9v0I6lAWldag8j/v7OhBjhDd2Q0tpWnIJwTbn70o8KprEGlgyLwdkLkwG8f6iyngUVdXRhxtS66b
	TeU32vX/ANuz1WYrxKjTUnK88mZZtD7NLAg2WKZG5zdYEEBO37i94seECQRgSRFVXbpQzxkzhKGFj
	Kk0a2OFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7a-00000008VwV-23nG;
	Mon, 25 Nov 2024 15:35:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsh-1529
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0004YD-Vc; Mon, 25 Nov 2024 16:35:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7T-0006VC-3D;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-0C;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:17 +0100
Message-Id: <20241125153523.1411849-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_312046_A59C6B35 
X-CRM114-Status: GOOD (  14.65  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/9] sandbox: source/invoke um Makefiles provided by host architecture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can make sense to use an existing arch's implementation for low-level
things like setjmp/longjmp. Copy the Linux scheme that enables this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                |  2 ++
 arch/sandbox/Makefile   |  9 +++++++++
 scripts/subarch.include | 11 +++++++++++
 3 files changed, 22 insertions(+)
 create mode 100644 scripts/subarch.include

diff --git a/Makefile b/Makefile
index aa66d0cf3b38..bc75c6335177 100644
--- a/Makefile
+++ b/Makefile
@@ -321,6 +321,8 @@ KERNELVERSION = $(VERSION)$(if $(PATCHLEVEL),.$(PATCHLEVEL)$(if $(SUBLEVEL),.$(S
 BUILDSYSTEM_VERSION =
 export VERSION PATCHLEVEL SUBLEVEL KERNELRELEASE KERNELVERSION BUILDSYSTEM_VERSION
 
+include $(srctree)/scripts/subarch.include
+
 # Cross compiling and selecting different set of gcc/bin-utils
 # ---------------------------------------------------------------------------
 #
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 8f6425760619..157e856c59b1 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -19,6 +19,14 @@ board-y := arch/sandbox/board
 BOARD	:= $(board-y)/
 lds-y   := $(BOARD)/barebox.lds
 
+HEADER_ARCH 	:= $(SUBARCH)
+HOST_DIR := arch/$(HEADER_ARCH)
+
+-include $(srctree)/$(HOST_DIR)/Makefile.um
+
+common-y += $(HOST_DIR)/um/
+
+KBUILD_CPPFLAGS += -I$(srctree)/$(HOST_DIR)/include
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
@@ -49,6 +57,7 @@ machdirs := $(patsubst %,arch/sandbox/mach-%/,$(machine-y))
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 
 archprepare: maketools
+	$(Q)$(MAKE) $(build)=$(HOST_DIR)/um
 
 PHONY += maketools
 
diff --git a/scripts/subarch.include b/scripts/subarch.include
new file mode 100644
index 000000000000..caf3c641b52a
--- /dev/null
+++ b/scripts/subarch.include
@@ -0,0 +1,11 @@
+# SUBARCH tells the usermode build what the underlying arch is.  That is set
+# first, and if a usermode build is happening, the "ARCH=sandbox" on the command
+# line overrides the setting of ARCH below.  If a native build is happening,
+# then ARCH is assigned, getting whatever value it gets normally, and
+# SUBARCH is subsequently ignored.
+
+SUBARCH := $(shell uname -m | sed -e s/i.86/x86/ -e s/x86_64/x86/ \
+				  -e s/arm.*/arm/ -e s/sa110/arm/ \
+				  -e s/aarch64.*/arm/ \
+				  -e s/ppc.*/powerpc/ -e s/mips.*/mips/ \
+				  -e s/riscv.*/riscv/)
-- 
2.39.5



