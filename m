Delivery-date: Tue, 10 Nov 2026 22:30:10 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQtPu-009UK1-0a
	for lore@lore.pengutronix.de;
	Tue, 10 Nov 2026 22:30:10 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5C0322017D7
	for <lore@pengutronix.de>; Tue, 10 Nov 2026 22:30:06 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H2HurFjU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794346206;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=kuCCiVFb0J71vmpufIbG/BsXYCxyPMX3vf9wF4qSp08=;
	b=CSKGXUTm5eVzYzQi96QgfYit/U2A4neGA6ZTJ0uUZ1M3h0I1C7tC8W+EBfjqdkpBH8n0/+
	VUby4jel5fhZqgUkCUDCCN0E6qDKqZxki/FUXFwss42TTr0JAlhNaoNImb1ujUHCsRKyxf
	Revoh38EmnNIfmMsEXYpkOPf558dAEnW6u+zovqI+hqzdSXI8cIhO0dQo7dMbwtIrAP4sn
	YUP4qH9tFYOkXjJnd2nWv/bbTHR+iPw5kjNnrP7keDNNGY/jW6U0zzkrwSXKMiT9RzxYgT
	VK8kqYct6n2/zMy9MFbbUy5GSs+6RIbGXhi1MtQwg987f87ol30OtE2bgnq2eg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794346206; a=rsa-sha256;
	cv=none;
	b=LP8r5+Eev3yKWJBKI5cZDLyktx9mofplcAvODYzb1TqA+eADR8u6G4Hhv0r3HuxQm6c6D7
	1VTwfxziY1kbUySpv2IX20VAevNBZD5u3kxXLZYssGQGBLquaOsBfl+0JPy8m9fhmPfXS4
	kF8AscXWUNQGPuYXPpITY2wegabEbtmXu8LrQbXpNnU6SUMA01RdtX6G8PHHaBQJL92K8v
	m9vulKKM7MIIpnb/H27gtA7h0DKUXnwLJDFNq0bf1U8BzxbMTP5r015QfPc2VOXlIkL+XE
	rkwItTSAexTP8x9+hDqX1j5LHpxvlGUtQWv8ItNQ1Cb6L647kLWwwPfNeiQkmg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=H2HurFjU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=kuCCiVFb0J71vmpufIbG/BsXYCxyPMX3vf9wF4qSp08=; b=H2HurFjUWISTbR
	yZPpI1smilF4mUiQA7X2Fjj0CAHSoNkkplfAfJfZ1QXXjQCrHjgJykyS0UWsFimWAaVHzN2IJBaev
	1H19JDcd6EwIZ2XWETTVCCLCTp0xLPtvBv7DdsMzLHgBgNecLbwrmBjBezXRst/9ICzJkYYVBwrzi
	qLvZR7bVy/8/+X4FMqiq4h1eZCjVqsLnmPu4Me4JPa9BvAxwNMyI2GQVkb1NzxgxK2LEP4rjJ4MH1
	q0ZFPogqqea8lRvb8vqCpQ3T/GzAHpjd8IfI70RKfoz6G1ffgAlCCjiRbaZUPovO3yxUXelIsZfTa
	0k6syh++VOv1EiC23AdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOd-000000053Je-27sT;
	Tue, 10 Nov 2026 21:28:51 +0000
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65] helo=vs81.iboxed.net)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQtOX-000000053Hu-2sGP
	for barebox@lists.infradead.org;
	Tue, 10 Nov 2026 21:28:47 +0000
Received: from blala.de (localhost [127.0.0.1])
	by vs81.iboxed.net (8.18.1/8.18.1/Debian-6) with ESMTP id 6AALSjBw029752;
	Tue, 10 Nov 2026 21:28:45 GMT
Received: (from akurz@localhost)
	by blala.de (8.18.1/8.18.1/Submit) id 6AALSjnN029751;
	Tue, 10 Nov 2026 21:28:45 GMT
From: Alexander Kurz <akurz@blala.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>
Subject: [PATCH v2 2/2] ARM: i.MX: do kindle-mx50 defconfig maintenance
Date: Tue, 10 Nov 2026 21:28:42 +0000
Message-ID: <20261110212842.29724-3-akurz@blala.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261110212842.29724-1-akurz@blala.de>
References: <20261110212842.29724-1-akurz@blala.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_132846_037161_0355F99D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The sleep command is used in the D01200 boot script, bootz
    and go commands are handy tools to have. Add them to the defconfig. Furthermore,
    remove DEBUG_BUGVERBOSE and USB_GADGET_FASTBOOT to reduce th [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 UPPERCASE_50_75        message body is 50-75% uppercase
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[blala.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	FORGED_SENDER(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akurz@blala.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5C0322017D7
X-Stat-Signature: byb7aggm6if3jokm7om6tuxpgr6mixbb
X-Rspamd-Action: no action

The sleep command is used in the D01200 boot script, bootz and go commands
are handy tools to have. Add them to the defconfig.
Furthermore, remove DEBUG_BUGVERBOSE and USB_GADGET_FASTBOOT to reduce the
image size, giving some additional margin below the maximum compatible
258048 byte image size.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/configs/kindle-mx50_defconfig | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/configs/kindle-mx50_defconfig b/arch/arm/configs/kindle-mx50_defconfig
index 331e0eae6d..e3111683dc 100644
--- a/arch/arm/configs/kindle-mx50_defconfig
+++ b/arch/arm/configs/kindle-mx50_defconfig
@@ -1,14 +1,12 @@
 CONFIG_ARCH_IMX=y
 CONFIG_MACH_KINDLE_MX50=y
 CONFIG_THUMB2_BAREBOX=y
-CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_NAME="kindle-mx50_defconfig"
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -16,21 +14,23 @@ CONFIG_AUTO_COMPLETE=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
+# CONFIG_DEBUG_BUGVERBOSE is not set
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_FASTBOOT_CMD_OEM=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_REGULATOR=y
+CONFIG_CMD_BOOTZ=y
+CONFIG_CMD_GO=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_MAGICVAR=y
 CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SLEEP=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MEMTEST=y
 CONFIG_CMD_CLK=y
@@ -41,7 +41,6 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_USBGADGET=y
 CONFIG_CMD_OFTREE=y
-CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_MTD=y
 CONFIG_MTD_M25P80=y
@@ -50,7 +49,6 @@ CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_EHCI=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_GADGET_SERIAL=y
-CONFIG_USB_GADGET_FASTBOOT=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_MMC_BOOT_PARTITIONS=y
@@ -62,4 +60,3 @@ CONFIG_USB_NOP_XCEIV=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-- 
2.39.5



