Delivery-date: Mon, 03 May 2021 13:51:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6e-000316-2X
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:51:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldX6c-0000Kr-V4
	for lore@pengutronix.de; Mon, 03 May 2021 13:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nrtRcU4OLAjgIGKul1//JAMSzL8p+1hufMmyFMznLEk=; b=Ag77fKi+wQWjJsRv2vqXKqzNY
	Hh4FlL+6avX7NClzwo3MLhNGJ9hXYD3oJy8euxZljHN88NLW6bucJ7rIQGgfkNUeKkv1QK8/+Avon
	bQ3xu6gNG/7oRFFEws9j379uS/rqcoPBESPYGyt9SUp0SUJKBhEJVkcpdVcrUugyqklhqPrlpur1k
	dGVPC/XtqaxMDw96fI78R4W6ASOGOdBTigsu47qmaF5RDzc5UJ5bygazfSfQvspXqBsS+KSJH5rS2
	c6CQ9w5/XLk6AQeuegIrcrQDCLvjRuM2JZAyTBWCO4T6noqschmdDXFsTtgFxtEXMAZii7hGXmcSW
	/N3aCdD2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldX5Z-00Dmoj-1e; Mon, 03 May 2021 11:50:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4k-00Dmey-Jq
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:49:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=0w7OhkWaRrpxnYIp2JqVohSt14A8J2eSxouK5Y7LgJ8=; b=a9BxiIkooVF5wDZPhRu+AidOu3
 3qzJu7c9rzfm9//VjV4EJCqwK736ERogobHEZWXYc99O24ctKkthD/wXIsqV0J0nEacvLJrJ9wGPg
 Z4JdfL947np+IYCHEercsr+2KtKzNKILoj1NCOHvUaqHfysRAcAFJJjrxVqLDCRkTH+Dqx5bR++Do
 c4CF62b45IRI0S5bQTuCGuyXOPfmwRcwbJWPUJZzrz4ijy4aLvjPZQloYRyFRvtVGrpHVxW2hR+iy
 5U/FwpctAmE6Hxgv2siXTTJpd4hiUbgTk/37GYmSafOR9nQsL+1fXKjWN3AK0GfjjHjVqiIn3yzG4
 1lWu5Xgg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldX4g-0031aI-LW
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:49:21 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4d-0007pr-Ni; Mon, 03 May 2021 13:49:15 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1ldX4c-0003bx-Jj; Mon, 03 May 2021 13:49:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 May 2021 13:49:00 +0200
Message-Id: <20210503114901.13095-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210503114901.13095-1-a.fatoum@pengutronix.de>
References: <20210503114901.13095-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_044918_776730_A578A57C 
X-CRM114-Status: GOOD (  10.99  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 15/16] common: make FILE_LIST feature unconditional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_FILE_LIST controls whether the file_list_* family of functions
are compiled. common/file-list.o does not register any initcalls and
there is no code that is dependent on it being available: it's selected
as required. This means linker GC can completely get rid of it if
required, so drop the symbol.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig             | 4 ----
 common/Makefile            | 2 +-
 drivers/usb/gadget/Kconfig | 2 --
 net/Kconfig                | 1 -
 4 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 1ec221dbfccd..6a01b3c06b70 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -91,9 +91,6 @@ config EFI_GUID
 config EFI_DEVICEPATH
 	bool
 
-config FILE_LIST
-	bool
-
 config ARCH_DMA_ADDR_T_64BIT
 	bool
 
@@ -117,7 +114,6 @@ config USBGADGET_START
 	bool
 	depends on CMD_USBGADGET || USB_GADGET_AUTOSTART
 	select ENVIRONMENT_VARIABLES
-	select FILE_LIST
 	default y
 
 config BOOT
diff --git a/common/Makefile b/common/Makefile
index dc1c6b9afdd7..c2c15817badf 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -66,7 +66,7 @@ obj-$(CONFIG_EFI_GUID)		+= efi-guid.o
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

