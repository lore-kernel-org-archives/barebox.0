Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMe8x-0005vV-OF
 for barebox@lists.infradead.org; Thu, 19 Sep 2013 13:19:40 +0000
Received: from mail616.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id E5825DC87CF
 for <barebox@lists.infradead.org>; Thu, 19 Sep 2013 15:19:18 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 19 Sep 2013 15:20:26 +0200
Message-Id: <1379596826-5743-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130919131929.GA1137@ns203013.ovh.net>
 <1379596826-5743-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] Animeo IP: add rs485 crossing detection support
To: barebox@lists.infradead.org

this will be used to force the update or the start test mode

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c     | 88 ++++++++++++++++++++++++++++++++++--
 arch/arm/configs/animeo_ip_defconfig |  1 -
 2 files changed, 83 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 56b8df2..d46f645 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -239,20 +239,37 @@ static int animeo_ip_devices_init(void)
 
 device_initcall(animeo_ip_devices_init);
 
-static int animeo_ip_console_init(void)
+static struct device_d *usart0, *usart1;
+
+static void animeo_ip_shutdown_uart(void *base)
+{
+#define ATMEL_US_BRGR	0x0020
+	writel(0, base + ATMEL_US_BRGR);
+}
+
+static void animeo_ip_shutdown(void)
 {
 	/*
-	 * disable the dbgu enable by the bootstrap
+	 * disable the dbgu and others enable by the bootstrap
 	 * so linux can detect that we only enable the uart2
 	 * and use it for decompress
 	 */
-#define ATMEL_US_BRGR	0x0020
-	at91_sys_write(AT91_DBGU + ATMEL_US_BRGR, 0);
+	animeo_ip_shutdown_uart(IOMEM(AT91_DBGU + AT91_BASE_SYS));
+	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US0));
+	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US1));
+}
+
+static int animeo_ip_console_init(void)
+{
+	at91_register_uart(3, 0);
+
+	usart0 = at91_register_uart(1, ATMEL_UART_RTS);
+	usart1 = at91_register_uart(2, ATMEL_UART_RTS);
+	board_shutdown = animeo_ip_shutdown;
 
 	barebox_set_model("Somfy Animeo IP");
 	barebox_set_hostname("animeoip");
 
-	at91_register_uart(3, 0);
 	return 0;
 }
 console_initcall(animeo_ip_console_init);
@@ -263,3 +280,64 @@ static int animeo_ip_main_clock(void)
 	return 0;
 }
 pure_initcall(animeo_ip_main_clock);
+
+static unsigned int get_char_timeout(struct console_device *cs, int timeout)
+{
+	uint64_t start = get_time_ns();
+
+	do {
+		if (!cs->tstc(cs))
+			continue;
+		return cs->getc(cs);
+	} while (!is_timeout(start, timeout));
+
+	return -1;
+}
+
+static int animeo_ip_cross_detect_init(void)
+{
+	struct console_device *cs0, *cs1;
+	int i;
+	char *s = "loop";
+	int crossed = 0;
+
+	cs0 = console_get_by_dev(usart0);
+	if (!cs0)
+		return -EINVAL;
+	cs1 = console_get_by_dev(usart1);
+	if (!cs1)
+		return -EINVAL;
+
+	at91_set_gpio_input(AT91_PIN_PC16, 0);
+	cs0->set_mode(cs0, CONSOLE_MODE_RS485);
+	cs0->setbrg(cs0, 38400);
+	cs1->set_mode(cs1, CONSOLE_MODE_RS485);
+	cs1->setbrg(cs1, 38400);
+
+	/* empty the bus */
+	while (cs1->tstc(cs1))
+		cs1->getc(cs1);
+
+	for (i = 0; i < strlen(s); i++) {
+		unsigned int ch = s[i];
+		unsigned int c;
+
+resend:
+		cs0->putc(cs0, ch);
+		c = get_char_timeout(cs1, 10 * MSECOND);
+		if (c == 0)
+			goto resend;
+		else if (c != ch)
+			goto err;
+	}
+
+	crossed = 1;
+
+err:
+	export_env_ull("rs485_crossed", crossed);
+
+	pr_info("rs485 ports %scrossed\n", crossed ? "" : "not ");
+
+	return 0;
+}
+late_initcall(animeo_ip_cross_detect_init);
diff --git a/arch/arm/configs/animeo_ip_defconfig b/arch/arm/configs/animeo_ip_defconfig
index 23e7278..b2d7340 100644
--- a/arch/arm/configs/animeo_ip_defconfig
+++ b/arch/arm/configs/animeo_ip_defconfig
@@ -16,7 +16,6 @@ CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
 CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/animeo_ip/env"
 CONFIG_CMD_EDIT=y
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
