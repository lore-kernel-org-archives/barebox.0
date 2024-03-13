Delivery-date: Wed, 13 Mar 2024 11:01:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkLQd-004Diy-29
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 11:01:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkLQZ-00029R-DG
	for lore@pengutronix.de; Wed, 13 Mar 2024 11:01:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=M/xeV1LSAptHTvqsJ2PikTKjxrzalCxq0APV1RCV1Mo=; b=bORPPWS3UJYDZy1Ujzj7FkrOnC
	XVSDoa0IenTz02UhdYE5+pI2IK79LHG7IBRKo6aHEJx8bIY9WHbtQ6zQVoMdpS6upUqgJ5lMBHY7e
	TeWvBTSmrP+XXlyyYIxzb9nm0fvN+8A/CGCf3ZxU0bPI69xUC6u2ayBALoKDLtJ+OEGIA+KW636Yn
	tty6B4XEmIB5k4TXmEcVMyj65v55Eu+LGRTYj7NLe8/CkUIsoPUJO5pZOmbosA4pILwP1HPbyLrJm
	/R7WzLtR0LCHN+JpCSteGkKh+Gzg4xUjxt7X04RX764sGAf05r1H37kWGLZBiYPZ7t8fU1f4Nw8+8
	lX+JD1kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkLPq-00000009amC-1rgY;
	Wed, 13 Mar 2024 10:00:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkLPn-00000009alg-3Dxr
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 10:00:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkLPm-0001XI-CB; Wed, 13 Mar 2024 11:00:50 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkLPl-0065W0-W3; Wed, 13 Mar 2024 11:00:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkLPl-001cbh-1H;
	Wed, 13 Mar 2024 11:00:49 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Mar 2024 11:00:48 +0100
Message-Id: <20240313100048.386604-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_030051_831433_7D3D81E1 
X-CRM114-Status: GOOD (  15.64  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] console: flush consoles on newline when debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For debugging hangs, CONFIG_DEBUG_PROBES and CONFIG_DEBUG_INITCALLS are
useful tools to pinpoint where the issue is. FOr issues that lock up the
SoC, their output can be misleading if we have bigger UART FIFO and not
all output has managed to make it out.

Add a new DEBUG_FLUSH_LINE_BREAK to make debugging this easier.
The option is unnecessary outside of debugging, so for now we don't add
a prompt by default and select it as needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - rename option to contain the prefix CONSOLE_
---
 common/Kconfig   | 12 ++++++++++++
 common/console.c |  5 ++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 33903aa249b7..0000dac8740e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -840,6 +840,16 @@ config CONSOLE_ALLOW_COLOR
 	  compile time default for colored console output. After boot it
 	  can be controlled using global.allow_color.
 
+config CONSOLE_FLUSH_LINE_BREAK
+	bool "Flush consoles on new line" if COMPILE_TEST
+	help
+	  Many serial drivers configure and use hardware FIFOs as not to
+	  delay the boot. When debuging some king of bugs, such as clock
+	  issues that hang the SoC, this can falsify debugging output,
+	  because the UART doesn't output a submitted message fully, before
+	  the SoC hangs. This option will flush serial FIFOs when processing
+	  the new line feed characters.
+
 config CONSOLE_DISABLE_INPUT
 	prompt "Disable input on all consoles by default (non-interactive)"
 	def_bool CONSOLE_NONE
@@ -1705,6 +1715,7 @@ config DEBUG_AT91_UART_BASE
 
 config DEBUG_INITCALLS
 	bool "Trace initcalls"
+	select CONSOLE_FLUSH_LINE_BREAK
 	help
 	  If enabled this will print initcall traces.
 
@@ -1719,6 +1730,7 @@ config DEBUG_PBL
 
 config DEBUG_PROBES
 	bool "Trace driver probes/removes"
+	select CONSOLE_FLUSH_LINE_BREAK
 	help
 	  If enabled this will log driver probe and remove traces. If DEBUG_LL is enabled,
 	  probes will be printed even before registering consoles. If it's disabled, they
diff --git a/common/console.c b/common/console.c
index 03b76b122b2b..5a0fd66ab32d 100644
--- a/common/console.c
+++ b/common/console.c
@@ -277,8 +277,11 @@ static int __console_puts(struct console_device *cdev, const char *s,
 	size_t i;
 
 	for (i = 0; i < nbytes; i++) {
-		if (*s == '\n')
+		if (*s == '\n') {
 			cdev->putc(cdev, '\r');
+			if (IS_ENABLED(CONFIG_CONSOLE_FLUSH_LINE_BREAK) && cdev->flush)
+				cdev->flush(cdev);
+		}
 
 		cdev->putc(cdev, *s);
 		s++;
-- 
2.39.2



