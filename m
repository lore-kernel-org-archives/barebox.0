Delivery-date: Mon, 12 Apr 2021 09:18:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqF-0003dn-AU
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:39 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqE-0004jh-1S
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dqff7cm6Iozog0fZ9ECdNfU68XwxIhCmd2hpxV/wgHE=; b=hwUZf7Ks5YdgREsPdNQ+9veND
	6kUtuKXORzhaSd0VlhZ6rq6LHNN/UrKcC/uIRsC0eJ40UnuDDNgoJSWCwfqlKILNsmImmhnk7ARTg
	/3YHUIo5TJpg86fxDu2ApbB4S8SJehEKtqYfmD6Dgi/KdqVzB6DnEatjr+3heI37cFBK40wejKaHH
	OZJyg0m0yyfrQDQqgFuqW341py2JOarapHGK7c66h9HfkuDnTgbpBqxdsWTifXi8Iv9IFciM4I7Zf
	1QNvgf8wPPsxEBFHGAv+YmEw5u8cYQ1m5WmeriBOb1lpA7Q3yDnrD6rehYfUszUKKX8j2jYoI6oPa
	nt34/pGCg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqos-005vuZ-B1; Mon, 12 Apr 2021 07:17:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqog-005vu3-93
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=XkkyppRMFrekIFZqhkcXoY2q3OpNUjsrIiA44SyEjAA=; b=18HXWHnLEl1nSTCAtLpcQR0tqT
 kAs8joi3ExsIqzrLd9Ofr6WVHRiVFk9Q88wGFn+EWqHuK19FS5nvQ7jf6NJPJyl20j0Y2CXPecwzq
 YJRx7FYpWeb6rq/D8ej9r7LuDCLaEitVshbti4hycqjCNHGJtQ42uq/R0tz3Y14GZyuVFM8y/JO+A
 3rYUXRWvkZRPRsnCOSyEnc0qjEXWEWaXGnoBscY4cn8cfCs7PaZIj2EWFgK46rJke2hpP+OhYoukk
 qTEAxD6YcVoPfbgBLFdjlpNBQM/LyzOUwQbqG/TPJM3khTMSXFhya4F8WsOcFQMUd6QOpwuYkTbZi
 tSPpNYvw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEo-KY
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HI-Iz; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fb-92; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:40 +0200
Message-Id: <20210412071651.8769-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001659_691343_CD523F35 
X-CRM114-Status: UNSURE (   9.84  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/17] MIPS: configs: qemu-malta: enable Virt I/O
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Virt I/O over PCI is usable on both the MIPS little- and big-endian
Malta boards emulated by QEMU. Enable Virt I/O PCI and their
dependencies.

Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/configs/qemu-malta_defconfig | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index b9994f392c47..3ef2fc302a20 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,5 +1,6 @@
 CONFIG_BOARD_QEMU_MALTA=y
 CONFIG_IMAGE_COMPRESSION_XZKERN=y
+CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x400000
 CONFIG_STACK_SIZE=0x7000
 CONFIG_EXPERIMENTAL=y
@@ -10,13 +11,14 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
-CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_BTHREAD=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
 CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BTHREAD=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
@@ -59,6 +61,7 @@ CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_RTL8139=y
 # CONFIG_SPI is not set
 CONFIG_I2C=y
@@ -69,12 +72,19 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_VIDEO=y
 CONFIG_FRAMEBUFFER_CONSOLE=y
 CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
+CONFIG_VIRTIO_INPUT=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_PCI=y
 CONFIG_PCI_DEBUG=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

