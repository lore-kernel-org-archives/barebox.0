Delivery-date: Thu, 11 Dec 2025 21:31:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK4-00AQ9Q-1Q
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:31:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnK3-0006hw-RU
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:31:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3kupYxaqwFfXF1zwmn9jEtn8hi5SFVvVinU2zHCaNYI=; b=eLEjck+0LwGZenZxZrBzOJesmf
	Qh0in22zUxoRjp2LVwz4SFYP8WujlXgO+I+RH2SE7NHBjyfbfXO9/wtVnwqwgW1wjVdh8Q7TeojBw
	oCzGw07lKv4dIyGh1rdo9fDvyrDzlzp9sS/UpNCdUkU6PSYZTyZZNNjUqs5f3tVT+azRNkuBjuyWL
	ALjV7Wa/AbifUUGpqpWtFtTHbKxppwbbxUJuasm+oQZx/SPSGToEUPYXR5cByPeUgWhqHd5MyPAID
	6++eb1a9uotxkkR+qDcTQzGRjeDlgPbxkkCY4Ihg1LqSHajICnQTqRuUmJOelh0S3oAkKWsMjt9iQ
	V89GqV8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJV-0000000HE52-2mXK;
	Thu, 11 Dec 2025 20:31:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnJT-0000000HE2v-0eUl
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 20:31:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-0006J1-HF; Thu, 11 Dec 2025 21:30:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-005BQq-16;
	Thu, 11 Dec 2025 21:30:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnJR-00000008e20-0xhL;
	Thu, 11 Dec 2025 21:30:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:29:52 +0100
Message-ID: <20251211203056.2014710-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_123059_193551_56448A92 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH 01/16] efi: payload: restructure Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We will keep efi/Kconfig as entry point for the top-level Kconfig
options and make everything in the individual folders dependent on the
top-level symbol. Adopt this scheme for efi/payload/ and while at it,
clarify the symbol name and add a help text.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig        |  5 +++++
 efi/Kconfig         | 24 +++++++++++++++++++++---
 efi/payload/Kconfig | 27 ---------------------------
 3 files changed, 26 insertions(+), 30 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 55618bf896c2..5af114a6e9e5 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -101,6 +101,11 @@ config ARCH_HAS_SJLJ
 	help
 	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
 
+config HAVE_EFI_PAYLOAD
+	bool
+
+config HAVE_EFI_STUB
+	bool
 
 config PHYS_ADDR_T_64BIT
 	bool
diff --git a/efi/Kconfig b/efi/Kconfig
index 35850b20ef50..23ac601af647 100644
--- a/efi/Kconfig
+++ b/efi/Kconfig
@@ -2,14 +2,32 @@
 
 menu "EFI (Extensible Firmware Interface) Support"
 
+config EFI_PAYLOAD
+	bool "barebox as EFI payload/app (consumer)"
+	depends on HAVE_EFI_PAYLOAD || COMPILE_TEST
+	select PBL_FULLY_PIC if ARM64
+	select EFI
+	select EFI_GUID
+	select EFI_DEVICEPATH
+	select PRINTF_UUID
+	select PRINTF_WCHAR
+	select BLOCK
+	select PARTITION_DISK
+	select HW_HAS_PCI
+	select MALLOC_TLSF
+	help
+	  Select this option if you want a barebox.efi image generated that
+	  can be loaded from existing UEFI firmware and that consumes services
+	  and protocols provided by that UEFI firmware instead of having to
+	  interact directly with the hardware.
+
+if EFI_PAYLOAD
 source "efi/payload/Kconfig"
+endif
 
 config EFI
 	bool
 
-config HAVE_EFI_STUB
-	bool
-
 if EFI
 
 config EFI_GUID
diff --git a/efi/payload/Kconfig b/efi/payload/Kconfig
index 275e053ca868..01f54ee7cf10 100644
--- a/efi/payload/Kconfig
+++ b/efi/payload/Kconfig
@@ -1,30 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config HAVE_EFI_PAYLOAD
-	bool
-
-config EFI_PAYLOAD
-	bool "Build as EFI payload"
-	depends on HAVE_EFI_PAYLOAD || COMPILE_TEST
-	select PBL_FULLY_PIC if ARM64
-	select EFI
-	select EFI_GUID
-	select EFI_DEVICEPATH
-	select PRINTF_UUID
-	select PRINTF_WCHAR
-	select BLOCK
-	select PARTITION_DISK
-	select HW_HAS_PCI
-	select MALLOC_TLSF
-
-config HAVE_EFI_STUB
-	bool
-
-if EFI_PAYLOAD
-
-config EFI_STUB
-	def_bool HAVE_EFI_STUB
-
 config EFI_PAYLOAD_ESP_IMAGE
 	bool "Generate barebox.esp image from payload"
 	depends on EFI_STUB || !PBL_IMAGE
@@ -57,5 +32,3 @@ config EFI_HANDOVER_PROTOCOL
 config EFI_PAYLOAD_BOOTM
 	bool "EFI bootm protocol"
 	default !X86
-
-endif
-- 
2.47.3



