Delivery-date: Tue, 09 Mar 2021 09:03:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJXKd-00085X-21
	for lore@lore.pengutronix.de; Tue, 09 Mar 2021 09:03:07 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJXKY-0001OY-Ds
	for lore@pengutronix.de; Tue, 09 Mar 2021 09:03:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=th42zjFxHXeo9nmaXm22a3U+qid8tQ8Xaf+bLOdjIFA=; b=J8yedlQXUE3VMHQzf1KOZJz0sE
	F392cvltPKwBNzW4pPxsWBKZOJvFxl3xUbkMR4oOvVag6K5coH2dCoi7U4jH8Hc4yyZ7XXPlDjm9L
	p4zrQc/WhYEP/kbSFBgFf/jizlbYAttyvQvNoxEmcDnS/QsltEd/3miydJo9gX2mRhNeRt7Bi/Kzm
	teTHsOw1vKtaceLQltDpZZtQEFLKY5oMDAvfa+Ejei/Xx6ngnKHoRiYilmGtEtNZ7BotI3uU+ZkCu
	sPwS41z0pprpqTFZM0s7euAum22HEQjeSseLTRumYRU4YeA6rBLHbgM9vIMH7nFqXTxMf+yzGs1Gv
	QbrN1gzQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJXJN-003zvf-6T; Tue, 09 Mar 2021 08:01:49 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJXJC-003zuD-Qk
 for barebox@lists.infradead.org; Tue, 09 Mar 2021 08:01:41 +0000
X-Originating-IP: 83.135.91.161
Received: from geraet.fritz.box (unknown [83.135.91.161])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 7C07EE0007;
 Tue,  9 Mar 2021 08:01:36 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  9 Mar 2021 09:01:31 +0100
Message-Id: <20210309080131.902862-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210309_080139_007307_10FE78B4 
X-CRM114-Status: GOOD (  15.46  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] sandbox: add Xterm escape sequence backed LED driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is value in testing LED trigger conditions in sandbox,
especially with the coming bthread work that should replace pollers,
like the one used by the heartbeat trigger.

To make this testable on sandbox as well, add a simple LED driver.
It supports 5 brightness levels, which are reflected as dots in
the terminal title. This requires a Xterm compatible terminal,
but the LED is inactive by default, so other terminals aren't
affected if they lack support.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/Makefile  |  1 +
 arch/sandbox/board/led.c     | 67 ++++++++++++++++++++++++++++++++++++
 arch/sandbox/dts/sandbox.dts |  4 +++
 3 files changed, 72 insertions(+)
 create mode 100644 arch/sandbox/board/led.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index c504c967decd..ffb1dbc21ebf 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -7,5 +7,6 @@ obj-y += dtb.o
 obj-y += power.o
 obj-y += dev-random.o
 obj-y += watchdog.o
+obj-$(CONFIG_LED) += led.o
 
 extra-y += barebox.lds
diff --git a/arch/sandbox/board/led.c b/arch/sandbox/board/led.c
new file mode 100644
index 000000000000..b7ab81112baf
--- /dev/null
+++ b/arch/sandbox/board/led.c
@@ -0,0 +1,67 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#include <common.h>
+#include <init.h>
+#include <led.h>
+#include <mach/linux.h>
+#include <of.h>
+
+static struct sandbox_led {
+	struct led led;
+	bool active;
+} sandbox_led;
+
+static inline void terminal_puts(const char *s)
+{
+	linux_write(1, s, strlen(s));
+}
+
+static void sandbox_led_set(struct led *led, unsigned int brightness)
+{
+	terminal_puts("\x1b]2;barebox ");
+	while (brightness--)
+		terminal_puts(".");
+	terminal_puts("\a");
+
+	sandbox_led.active = true;
+}
+
+static int sandbox_led_of_probe(struct device_d *dev)
+{
+	struct device_node *np = dev->device_node;
+	int ret;
+
+	if (sandbox_led.led.set)
+		return -EBUSY;
+
+	sandbox_led.led.name = xstrdup(np->name);
+	sandbox_led.led.max_value = 5;
+	sandbox_led.led.set = sandbox_led_set;
+
+	ret = led_register(&sandbox_led.led);
+	if (ret)
+		return ret;
+
+	led_of_parse_trigger(&sandbox_led.led, np);
+
+	return 0;
+}
+
+static void sandbox_led_of_remove(struct device_d *dev)
+{
+	if (sandbox_led.active)
+		sandbox_led_set(NULL, 0);
+}
+
+static struct of_device_id sandbox_led_of_ids[] = {
+	{ .compatible = "barebox,sandbox-led", },
+	{ }
+};
+
+static struct driver_d sandbox_led_of_driver = {
+	.name  = "sandbox-led",
+	.probe = sandbox_led_of_probe,
+	.remove = sandbox_led_of_remove,
+	.of_compatible = sandbox_led_of_ids,
+};
+device_platform_driver(sandbox_led_of_driver);
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index ef1fa7b8661f..e99986bb9062 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -98,4 +98,8 @@ barebox,sandbox-watchdog
 	sound {
 		compatible = "barebox,sandbox-sound";
 	};
+
+	led {
+		compatible = "barebox,sandbox-led";
+	};
 };
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

