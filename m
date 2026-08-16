Delivery-date: Sun, 16 Aug 2026 20:16:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvfPX-003qSx-0y
	for lore@lore.pengutronix.de;
	Sun, 16 Aug 2026 20:16:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E26902010BD
	for <lore@pengutronix.de>; Sun, 16 Aug 2026 20:16:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SMdSC6VW;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sK7fR94RtjyFry90ZYDEIXARTmAxzTB9cgwV1SZu7Xs=; b=SMdSC6VWEEGfUvqKunGg+VhVkO
	jYIFUNRHks5xzVRJCzwROKMkizM6OGCQAJJwnq+7NS4K2d0jlFO4qLYt7whZLVjeZsbJGR3huV/XD
	x+M5xJG9KiUrLLngnJx0m7eibznItqobqPb4PGvfoVnRU3gMkQ1/rU+ffAlMrsm7yqtHKe/AX+WNL
	S03ovKT+GUa8cTl3Fi07AVmfdw+Ei2Fiu9sJUWWcHayB53RlSzjW6zHoniS7mAdrW91qzD05frrOL
	C3wPfqaga9sofxEPdLAGlSrKbwPaDh09kp1mWIb3ng8zthEKoYU98w/PVbRpkUaCrCwHnw0KcTkH1
	OxXySMxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBS-00000004xYE-33hZ;
	Sun, 16 Aug 2026 18:02:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvfBN-00000004xNl-1FZC
	for barebox@lists.infradead.org;
	Sun, 16 Aug 2026 18:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A0C05202163;
	Sun, 16 Aug 2026 20:01:59 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvfBH-001os7-1r;
	Sun, 16 Aug 2026 20:01:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wvf5u-00000003pGc-1DqE;
	Sun, 16 Aug 2026 19:56:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 16 Aug 2026 19:56:47 +0200
Subject: [PATCH 27/27] ARM: multi_v5_v6_defconfig: enable PXA support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260816-pxa3xx-v1-27-f3c3d7a6c43f@pengutronix.de>
References: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
In-Reply-To: <20260816-pxa3xx-v1-0-f3c3d7a6c43f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786902986; l=2446;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=5Q/SV3YStNAWBuPjx/ObW5/bdw3HK4fMTjYWkmRyYLo=;
 b=OIyuimPEd1uWN1CiQveHJyVkBp6sgrmSmh/0C/okULVbQ18zc4JfzSZt5NY79QiVt2WtUbJjo
 86QZDXd0F+GAIH4KbE5RxjQ+fguQCgwTWlTuL36tCtxRG3cQg7OT7EU
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_110205_514883_86ACB42E 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Enable PXA support along with the Raumfeld Speaker board and
    PXA peripherals. Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de> ---
    arch/arm/configs/multi_v5_v6_defconfig | 18 +++++++++++------- 1 file changed,
    11 insertions(+), 7 deletions(-) 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: dfzz1f5iuhz1tadsryf9zbkc9keb7581
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: E26902010BD

Enable PXA support along with the Raumfeld Speaker board and PXA peripherals.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v5_v6_defconfig | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index bc6645b3ce..5f71ec0fd8 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_BCM283X=y
 CONFIG_ARCH_IMX=y
+CONFIG_ARCH_PXA=y
 CONFIG_ARCH_VERSATILE=y
 CONFIG_MACH_RPI=y
 CONFIG_MACH_SCB9328=y
@@ -8,15 +9,15 @@ CONFIG_MACH_PCA100=y
 CONFIG_MACH_PCM038=y
 CONFIG_IMX_IIM=y
 CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_BOARD_GENERIC_DT=y
+CONFIG_BAREBOX_UPDATE_PXA_NAND=y
+CONFIG_MACH_RAUMFELD_SPEAKER=y
 CONFIG_AEABI=y
-CONFIG_BOOT_ATAGS=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
+CONFIG_BOOT_ATAGS=y
 CONFIG_NAME="multi_v5_v6_defconfig"
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PANIC_HANG=y
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -26,10 +27,9 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+# CONFIG_BOOT_DEFAULTS is not set
 CONFIG_RESET_SOURCE=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
@@ -81,7 +81,9 @@ CONFIG_NET=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_DRIVER_SERIAL_PXA=y
 CONFIG_DRIVER_NET_FEC_IMX=y
+CONFIG_DRIVER_NET_SMC911X=y
 CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
@@ -94,6 +96,7 @@ CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_NAND=y
 CONFIG_NAND_ALLOW_ERASE_BAD=y
 CONFIG_NAND_IMX=y
+CONFIG_NAND_MRVL_NFC=y
 CONFIG_MTD_UBI=y
 CONFIG_MTD_UBI_FASTMAP=y
 CONFIG_USB_HOST=y
@@ -110,6 +113,8 @@ CONFIG_EEPROM_AT25=y
 CONFIG_EEPROM_AT24=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_IMX=y
+CONFIG_GPIO_PXA=y
+# CONFIG_PINCTRL is not set
 CONFIG_IMX_WEIM=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
@@ -120,7 +125,6 @@ CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
+CONFIG_FS_QEMU_FW_CFG=y
 CONFIG_DIGEST_SHA1_ARM=y
 CONFIG_DIGEST_SHA256_ARM=y
-CONFIG_QEMU_FW_CFG=y
-CONFIG_FS_QEMU_FW_CFG=y

-- 
2.47.3



