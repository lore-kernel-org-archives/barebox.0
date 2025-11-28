Delivery-date: Fri, 28 Nov 2025 18:22:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2B5-005rHi-0L
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:22:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2B3-0001mx-1t
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:22:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fu+aEQuRHPRJFLm0drAjydUaJmLvNimjr+y6bk5OYPQ=; b=p0v4tEFKPihXQsndnFmpcrzPhE
	tKmio0zssVY8HLN7AQdtjWVGM8uMjLLE0B7mZw0linT4vluEz8C/4Fk02FOx1cH4XLqktIdQo9kHQ
	Ty6vIVpljFHU9TPQsCPoYZ8bKx1p0/KIriu/tW5wBGV+zUyjhp+Z67XoqjtL9MEj5niFTs/qQsz/V
	HUlq3xATtVWQbQ9FwPYV99qN7veLEqcHjYsyVUsfOplo62mwYHH4Ke/TG9vMHnDE+hJ+rCutkD7W5
	8K0rhqx+PKMVMNkqBl/8nWAlchq+XL/JDIRD9uhFlIeO+L1xEKKCZns57FFnyAz2XB9u5Phfdho0U
	P7SZ2gVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2Ad-00000000j72-2QdA;
	Fri, 28 Nov 2025 17:22:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP2Aa-00000000j3S-3KYt
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:22:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AR-0001Jo-04; Fri, 28 Nov 2025 18:21:59 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-002zVS-2U;
	Fri, 28 Nov 2025 18:21:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP2AQ-000000009Su-2q0k;
	Fri, 28 Nov 2025 18:21:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:55 +0100
Message-ID: <20251128172158.36324-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251128172158.36324-1-a.fatoum@pengutronix.de>
References: <20251128172158.36324-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092208_844329_429BA0F3 
X-CRM114-Status: GOOD (  13.68  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] efi: add option to generate vfat file for barebox.efi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This can be fairly useful for testing and may in future, even be
extended to hold the state.dtb.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 efi/Kconfig       |  4 ++++
 images/.gitignore |  3 +++
 images/Makefile   | 10 ++++++++++
 scripts/mkesp     | 14 ++++++++++++++
 scripts/mkvfat    | 20 ++++++++++++++++++++
 5 files changed, 51 insertions(+)
 create mode 100755 scripts/mkesp
 create mode 100755 scripts/mkvfat

diff --git a/efi/Kconfig b/efi/Kconfig
index 35850b20ef50..49839f8466ea 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -4,6 +4,10 @@ menu "EFI (Extensible Firmware Interface) Support"
 
 source "efi/payload/Kconfig"
 
+config EFI_PAYLOAD_ESP_IMAGE
+	bool "Generate barebox.esp image from payload"
+	depends on EFI_PAYLOAD
+
 config EFI
 	bool
 
diff --git a/images/.gitignore b/images/.gitignore
index fc464ff2e3cb..0e0d2fa71859 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -43,3 +43,6 @@ barebox.sum
 *.missing-firmware
 *.k3img
 fuzz-*
+*.efi
+*.esp
+*.vfat
diff --git a/images/Makefile b/images/Makefile
index 448479ee8cf3..119e7a6e2b8e 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -215,6 +215,16 @@ FILE_barebox.img = start_pbl.pblb
 image-$(CONFIG_PBL_SINGLE_IMAGE) += barebox.img
 endif
 
+FILE_barebox.vfat = $(if CONFIG_EFI_STUB,barebox-dt-2nd.img,../barebox.efi)
+FILE_barebox.esp = barebox.vfat
+image-$(CONFIG_EFI_PAYLOAD_ESP_IMAGE) += barebox.esp barebox.vfat
+
+.SECONDEXPANSION:
+$(obj)/barebox.vfat: $(obj)/$$(FILE_$$(@F))
+	$(Q)$(srctree)/scripts/mkvfat $@ $< $(CONFIG_EFI_PAYLOAD_DEFAULT_PATH)
+$(obj)/barebox.esp: $(obj)/$$(FILE_$$(@F))
+	$(Q)$(srctree)/scripts/mkesp $@ $<
+
 ifneq ($(pblx-y)$(pblx-),)
   $(error pblx- has been removed. Please use pblb- instead.)
 endif
diff --git a/scripts/mkesp b/scripts/mkesp
new file mode 100755
index 000000000000..08772fb0f163
--- /dev/null
+++ b/scripts/mkesp
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+set -e
+
+img="$1"
+part="$2"
+
+# We operate on local files only, so sfdisk in /sbin is still ok
+export PATH="$PATH:/sbin"
+
+truncate -s 4114KiB "$img"
+dd if="/dev/zero" of="$img" seek=2048 count=1 conv=notrunc status=none
+echo ',2M,U' | sfdisk --quiet --force --label gpt "$img"
+dd if="$part" of="$img" seek=2048 conv=notrunc status=none
diff --git a/scripts/mkvfat b/scripts/mkvfat
new file mode 100755
index 000000000000..6ccbffe093ce
--- /dev/null
+++ b/scripts/mkvfat
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+set -e
+
+img="$1"
+bb="$2"
+fullpath="$3"
+
+truncate -s 2048KiB "$img"
+mkdosfs "$img" >/dev/null
+
+path="$fullpath"
+while true; do
+    path="$(dirname "$path")"
+    if [ "$path" = "." ]; then break; fi
+    components="::$path $components"
+done
+
+mmd -DsS -i "$img" $components
+mcopy -sp -D overwrite -i "$img" "$bb" "::$fullpath"
-- 
2.47.3



