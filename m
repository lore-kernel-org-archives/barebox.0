Delivery-date: Mon, 22 Nov 2021 09:49:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50u-0003Mm-Ol
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 09:49:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mp50t-0008SL-KM
	for lore@pengutronix.de; Mon, 22 Nov 2021 09:49:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IFVErV7CbxHlc9bULMxqXQP4tBzDlllIiHAwye1bO7o=; b=iQUeqTplH5caAw
	sSg5++rhdAo6aT4ymQiYvpWFGL5SXck0JuwCT8sU+FJpTWtUTQUknli8ISUylxj2b5XEP9IhJ4TPn
	7EamWcmJUvyh7yztr5ikSiEW5FRpA2iDmhOfir+sCnQnXsn2pvGQ5obBkWqt9tSFjEJa0nBrnHk/k
	t++LfDCHh4veuhmzhIbRpUBjV9DO8VgX4XXwjr4SuBsrx32IINrK0W8KO6v8nX4Lz/4yCRyUJLeFr
	uiM5nr8HhH49xfmA4fs29+WiAOL+Ubq/Js78mnDgF1+aPdzIf+LgIa2ErGTjsoYZE9EWgr1QAhY0b
	lTWJgUvxsB1k9wrjofmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp4zb-00FLCP-FW; Mon, 22 Nov 2021 08:48:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp4zE-00FKz7-9Y
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 08:47:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4zA-0007wM-UV; Mon, 22 Nov 2021 09:47:36 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mp4z9-00Atez-FZ; Mon, 22 Nov 2021 09:47:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Nov 2021 09:47:13 +0100
Message-Id: <20211122084732.2597109-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
References: <20211122084732.2597109-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_004740_351455_B82BD22A 
X-CRM114-Status: GOOD (  11.22  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/30] drivers: efi: move Kconfig options to new menu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_EFI_BOOTUP isn't really a driver option and we got a new menu now
for all things EFI, so let's move it there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/Kconfig    |  3 ---
 common/efi/Kconfig  | 10 ++++++++++
 drivers/Kconfig     |  1 -
 drivers/efi/Kconfig |  7 -------
 4 files changed, 10 insertions(+), 11 deletions(-)
 delete mode 100644 drivers/efi/Kconfig

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index bcb44b23f05a..f40b14dddc00 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -47,7 +47,4 @@ config MACH_EFI_GENERIC
 config X86_EFI
 	def_bool y
 	select EFI_BOOTUP
-	select EFI_GUID
-	select EFI_DEVICEPATH
-	select PRINTF_UUID
 	select CLOCKSOURCE_EFI_X86
diff --git a/common/efi/Kconfig b/common/efi/Kconfig
index a0565854c2f5..55939b43d684 100644
--- a/common/efi/Kconfig
+++ b/common/efi/Kconfig
@@ -2,6 +2,16 @@
 
 menu "EFI (Extensible Firmware Interface) Support"
 
+config EFI_BOOTUP
+	bool
+	select EFI
+	select EFI_GUID
+	select EFI_DEVICEPATH
+	select PRINTF_UUID
+	select BLOCK
+	select PARTITION_DISK
+	select HW_HAS_PCI
+
 config EFI
 	bool
 
diff --git a/drivers/Kconfig b/drivers/Kconfig
index dbdf3c06f552..f8d58b0697ba 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -2,7 +2,6 @@
 menu "Drivers"
 
 source "drivers/base/Kconfig"
-source "drivers/efi/Kconfig"
 source "drivers/of/Kconfig"
 source "drivers/aiodev/Kconfig"
 source "drivers/amba/Kconfig"
diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
deleted file mode 100644
index e8abc2709e26..000000000000
--- a/drivers/efi/Kconfig
+++ /dev/null
@@ -1,7 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-config EFI_BOOTUP
-	bool
-	select EFI
-	select BLOCK
-	select PARTITION_DISK
-	select HW_HAS_PCI
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

