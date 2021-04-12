Delivery-date: Tue, 13 Apr 2021 00:36:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ad-0006Ck-FA
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 00:36:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lW5Ab-0006wR-Uk
	for lore@pengutronix.de; Tue, 13 Apr 2021 00:36:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rmgclAi+EcPgvUCCxFrWqn68KlcEAI/Gm8kSEJPUCsA=; b=Qjzbd5CcvkqBXFpTF3oMvX0Y7
	c8DOrg3qMMUyEhRNlNx0LP0zzX7XPQmk6oMGlwCu0xdDUbOObPAnuWbhZRalpZ3jIOXKc+kBkw1hr
	q9YkVPKjXk7c3OJsruiyriMzlBH63FZ/NxToy9459AHOKBWRDVuZB4ipI7nhvm0kxNkGNv/CN/fe/
	f2/vRMawaoVmibDtkPRWYxv/b1l/skNn4RRoANtJHPnv6haY3O8tNnwkIv6OAZR/eMV6aJiyPBByK
	AXgS7d1pCMomm85SkUwqkAI7Wxi6EI7KUcIwOtU/MFHtKXco6JhaLROaCvCwqDm15hZZ0ZBP7gp+r
	psj4Iafcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW59W-007n9c-Jx; Mon, 12 Apr 2021 22:35:30 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW59D-007n6u-S4
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 22:35:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=qIeGLOsqgoGBYAd4rfpSmhHy2hLftfc9Ce0lx2A3FVM=; b=yfiu5M+tJh8gNceKLHPlBxiNeo
 /8Ijiv987DZGnbTf/7nG5GGwegqsHvwuKaq2+iOaKiqYeuXOnAzG3Y99h7zOVXrx5DJsxxDDyLs5V
 I9zmI0+kHMQm+UJbYqF7XI/rchnRzRTtafImR5Ho2VCxhb6E2WJyl9lOMbHpric5nmnWBQn2PsVPX
 xWdukjmiKEjYfPX6xaoGPKBwtqAkOJt2zfK9afHU7ZcHmN0sXloK6l5MlkdT1iZvV6DfhgYE/J8/4
 YpCJ/9YKJkNzQPyrNuLA3ZNCST+jLA6RxTPfL6uEFkF3iBxkHPGtVgRBj93khBMWg8OKIx/uYUIwM
 anrGIyVw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW598-006ap5-IO
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 22:35:10 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lW597-0006BU-BE
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 00:35:05 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1lW596-0003u3-HE
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 00:35:04 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 13 Apr 2021 00:35:02 +0200
Message-Id: <20210412223502.29691-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412223502.29691-1-a.fatoum@pengutronix.de>
References: <20210412223502.29691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_153506_716758_EC532618 
X-CRM114-Status: GOOD (  10.82  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 14/14] common: make FILE_LIST feature unconditional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

CONFIG_FILE_LIST controls whether the file_list_* family of functions
are compiled. common/file-list.o does not register any initcalls and
there is no code that is dependent on it being available: it's selected
as required. This means linker GC can completely get rid of it if
required, so drop the symbol.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig             | 4 ----
 common/Makefile            | 2 +-
 drivers/usb/gadget/Kconfig | 2 --
 net/Kconfig                | 1 -
 4 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index f9803dbb5219..8e14649ee27b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -80,9 +80,6 @@ config EFI_GUID
 config EFI_DEVICEPATH
 	bool
 
-config FILE_LIST
-	bool
-
 config ARCH_DMA_ADDR_T_64BIT
 	bool
 
@@ -106,7 +103,6 @@ config USBGADGET_START
 	bool
 	depends on CMD_USBGADGET || USB_GADGET_AUTOSTART
 	select ENVIRONMENT_VARIABLES
-	select FILE_LIST
 	default y
 
 config BOOT
diff --git a/common/Makefile b/common/Makefile
index 8d5a3a20b79a..181c27a59e98 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -65,7 +65,7 @@ obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
 obj-$(CONFIG_EFI_DEVICEPATH)	+= efi-devicepath.o
 lwl-$(CONFIG_IMD)		+= imd-barebox.o
 obj-$(CONFIG_IMD)		+= imd.o
-obj-$(CONFIG_FILE_LIST)		+= file-list.o
+obj-y				+= file-list.o
 obj-$(CONFIG_FIRMWARE)		+= firmware.o
 obj-$(CONFIG_UBIFORMAT)		+= ubiformat.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_NAND_FCB) += imx-bbu-nand-fcb.o
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 7e0c570914d7..4ed6cbbee1b9 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -45,7 +45,6 @@ comment "USB Gadget drivers"
 
 config USB_GADGET_DFU
 	bool
-	select FILE_LIST
 	prompt "Device Firmware Update Gadget"
 
 config USB_GADGET_SERIAL
@@ -56,7 +55,6 @@ config USB_GADGET_SERIAL
 config USB_GADGET_FASTBOOT
 	bool
 	select BANNER
-	select FILE_LIST
 	select FASTBOOT_BASE
 	prompt "Android Fastboot USB Gadget"
 endif
diff --git a/net/Kconfig b/net/Kconfig
index 1549c9af6bc1..3512055c456a 100644
--- a/net/Kconfig
+++ b/net/Kconfig
@@ -35,7 +35,6 @@ config NET_SNTP
 config NET_FASTBOOT
 	bool
 	select BANNER
-	select FILE_LIST
 	select FASTBOOT_BASE
 	prompt "Android Fastboot support"
 	help
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

