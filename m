Delivery-date: Thu, 18 Dec 2025 12:37:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKP-00CoIw-02
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 12:37:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWCKB-0000R8-7b
	for lore@pengutronix.de; Thu, 18 Dec 2025 12:37:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8zPPtn2rtETrgoRvVv/AK3k0VFqnrjWZZx5MV7Ug+To=; b=iQOkU6iIemugiSwyCaEmpw21SK
	LJe6NxVl4igYQnP3Vw3uVuIRVHyqSqWKwUoDxhGidhlNmeZzQapWrmXuKQqzNldtBY8B5rpC8bSrK
	+YSrOS2kOKIOR2HM4dw1tFKPtH9yuTWEQNIoxyo/gGct7QkEczKGxMH4eNySJIYrVFUjzlyXHq7s9
	bsF0ChCkgVFZIhJAo5pkB8mWdhw7wTENvqV2WGXIbIxu+v7CjsfUfaEE2FZWcyTk9YEyDOh+N/thd
	G/9Y06NMvsQEc+VB0jHhGPxg+ETwDXZm8MBjJsrDPMbPkxlm+9XZBc40G3IlGQ+dlLmFyizWuOchL
	pQWg78Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJU-00000008KJv-14Hy;
	Thu, 18 Dec 2025 11:36:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWCJN-00000008KBF-3JXa
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 11:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-00089J-A7; Thu, 18 Dec 2025 12:36:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWCJM-006Gus-0O;
	Thu, 18 Dec 2025 12:36:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWBw5-0000000AVre-2Y4R;
	Thu, 18 Dec 2025 12:12:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 11:38:14 +0100
Message-ID: <20251218111242.1527495-55-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
References: <20251218111242.1527495-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_033649_832929_EC8A9EDD 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v1 54/54] ARM: configs: add multi_v7/8_efiloader_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We won't enable this in the defconfigs yet, until this gets wider
testing, but let's provide a fragment and a pattern rule to generate
efiloader enabled defconfigs.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile                                | 3 +++
 arch/arm/Makefile                       | 4 ++++
 common/boards/configs/efi-loader.config | 2 ++
 3 files changed, 9 insertions(+)
 create mode 100644 common/boards/configs/efi-loader.config

diff --git a/Makefile b/Makefile
index d74c57da2a99..c4a758493abc 100644
--- a/Makefile
+++ b/Makefile
@@ -618,6 +618,9 @@ include $(srctree)/arch/$(SRCARCH)/Makefile
 export KBUILD_DEFCONFIG CC_VERSION_TEXT
 endif
 
+%_efiloader_defconfig: FORCE
+	$(call merge_into_defconfig,$*_defconfig,efi-loader)
+
 config: outputmakefile scripts_basic FORCE
 	$(Q)$(MAKE) $(build)=scripts/kconfig KCONFIG_DEFCONFIG_LIST= $@
 
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 4d84f3bf9c72..5efc4c3457db 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -12,6 +12,10 @@ multi_v8_efi_defconfig:
 	$(call merge_into_defconfig,multi_v8_defconfig,efi-payload)
 generated_configs += multi_v8_efi_defconfig
 
+# Generic rule applying the fragment is in top-level Makefile
+generated_configs += $(patsubst %_defconfig,%_efiloader_defconfig, \
+		     multi_v7_defconfig multi_v8_defconfig)
+
 KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
 ifeq ($(CONFIG_CPU_64),y)
diff --git a/common/boards/configs/efi-loader.config b/common/boards/configs/efi-loader.config
new file mode 100644
index 000000000000..7fadc60e41a8
--- /dev/null
+++ b/common/boards/configs/efi-loader.config
@@ -0,0 +1,2 @@
+CONFIG_EFI_LOADER=y
+CONFIG_FS_EFIVARFS=y
-- 
2.47.3



