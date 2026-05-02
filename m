Delivery-date: Sat, 02 May 2026 13:30:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJ8YR-000ATp-2b
	for lore@lore.pengutronix.de;
	Sat, 02 May 2026 13:30:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wJ8YN-000831-2s
	for lore@pengutronix.de; Sat, 02 May 2026 13:30:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VSj/OWSGaHCo0KjLz4gOMwPxSp9w6Llyie4x1p7/+hM=; b=l3bUqt0TDjfsMk8bbflJVNTopn
	GOd+4lsqz45brC5fPR5rFtpBdxjcDdhi07mR9mtQhKcdyih6Xl4N7mq6aDi079vTRJFFYF8FqTKAm
	/C4oL4z3Ege9rnyj1BTamzTJcggDiocRCQCvhnuKhM0Ib9aM0z0ZS4CjRBw/+aAbZ8eGLOAJQa3b7
	F34nnr7IYWeJP3McACSz+WNjfUmEyUM7mJKQD2arhQkfH5v34ye4ESbT0EnomMZoKPDajlGzI7Xi6
	YWzjiremiyvxyVa1LXhDLvb4GR+PRE5vf3P8otUc+huoEoOQxFo+gu8JQSjwwBATi6iYI4lP+jP/4
	xZKCxnyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ8Xf-00000008uG6-3geo;
	Sat, 02 May 2026 11:29:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ8Xc-00000008uFI-200R
	for barebox@lists.infradead.org;
	Sat, 02 May 2026 11:29:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wJ8XY-0007UI-0Y; Sat, 02 May 2026 13:29:44 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Sat,  2 May 2026 13:29:40 +0200
Message-ID: <20260502112941.1829273-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260502_042948_558334_AC40E4DC 
X-CRM114-Status: GOOD (  16.22  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fbconsole: make UTF-8 the default encoding instead of CP437
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux kernel fonts that were ported to barebox were all (and still
are in Linux) CP437 fonts.

This doesn't matter when the framebuffer console is only displaying
barebox' own 7-bit ASCII output, but in combination with barebox running
as EFI loader, the framebuffer console may end up being EFI stdout:

- EFI applications like GRUB output UTF-16
- barebox' efi/loader/protocols/console.c duly converts it into UTF-8
- barebox' Framebuffer console processes that thinking it's CP437

To be able to use e.g. the box drawing characters that we already have
in the CP437, let's change the framebuffer console default to expect
UTF-8. This will increase code size a bit, but is the appropriate thing
to do nowadays. Still gate it behind an option that allows restoring the
old behavior.

Reported-by: Lucie L. Hartmann
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/video/Kconfig     | 14 ++++++++++++++
 drivers/video/fbconsole.c | 24 ++++++++++++++++++++++--
 2 files changed, 36 insertions(+), 2 deletions(-)

diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
index d9f49724c819..ce1023722142 100644
--- a/drivers/video/Kconfig
+++ b/drivers/video/Kconfig
@@ -13,6 +13,20 @@ config FRAMEBUFFER_CONSOLE
 	select FONTS
 	prompt "framebuffer console support"
 
+config FRAMEBUFFER_CONSOLE_UTF8
+	bool "UTF-8 output for framebuffer console"
+	depends on FRAMEBUFFER_CONSOLE
+	select CHARSET
+	default y
+	help
+	  Maps UTF-8 console output to CP437 font positions, enabling
+	  the framebuffer console to render accented Latin characters,
+	  mathematical symbols, and additional box-drawing characters
+	  using the existing bitmap fonts.
+
+	  Say n here if your own output is intentionally CP437 or you want
+	  to save the few hundred bytes needed to do UTF-8 decoding.
+
 config DRIVER_VIDEO_FB_SSD1307
 	bool "Solomon SSD1307 framebuffer support"
 	depends on (I2C || SPI) && GPIOLIB
diff --git a/drivers/video/fbconsole.c b/drivers/video/fbconsole.c
index ab1c4dfed0a4..f44a3e0636ab 100644
--- a/drivers/video/fbconsole.c
+++ b/drivers/video/fbconsole.c
@@ -10,6 +10,8 @@
 #include <gui/image_renderer.h>
 #include <gui/graphic_utils.h>
 #include <linux/font.h>
+#include <linux/ctype.h>
+#include <charset.h>
 
 enum state_t {
 	LIT,				/* Literal input */
@@ -76,6 +78,8 @@ struct fbc_priv {
 
 	int active;
 	int in_console;
+
+	char utf8_buf[5];	/* UTF-8 stream decoder buffer */
 };
 
 static int fbc_getc(struct console_device *cdev)
@@ -630,10 +634,26 @@ static void fbc_putc(struct console_device *cdev, char c)
 	case LIT:
 		switch (c) {
 		case '\033':
+			priv->utf8_buf[0] = '\0';
 			priv->state = ESC;
 			break;
-		default:
-			printchar(priv, c);
+		case '\0':
+			break;
+		default: {
+			int cp = c;
+
+			if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE_UTF8)) {
+				/* All our fonts are CP437, so convert it
+				 * directly to that code page.
+				 */
+				cp = utf8_to_cp437_stream(c, priv->utf8_buf);
+				if (!cp)
+					break;
+			}
+
+			printchar(priv, cp);
+			break;
+		}
 		}
 		break;
 	case ESC:
-- 
2.47.3



