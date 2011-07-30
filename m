Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KG-0001jA-FE
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:34:59 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id C67C2FF9FAF
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:45 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:02 +0200
Message-Id: <1311995831-25350-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 14/23] ns16550: if not specific f_caps defined use default
	stdin, stdout, stderr
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    1 -
 arch/arm/boards/omap/board-beagle.c               |    1 -
 arch/arm/boards/omap/board-omap3evm.c             |    1 -
 arch/arm/boards/omap/board-sdp343x.c              |    1 -
 arch/arm/boards/panda/board.c                     |    1 -
 arch/arm/boards/pcm049/board.c                    |    1 -
 arch/x86/boards/x86_generic/generic_pc.c          |    1 -
 drivers/serial/serial_ns16550.c                   |    5 ++++-
 8 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index fa910b9..65cf6d8 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -85,7 +85,6 @@ EXPORT_SYMBOL(quad_uart_write);
 
 static struct NS16550_plat quad_uart_serial_plat = {
 	.clock = 14745600,
-	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read = quad_uart_read,
 	.reg_write = quad_uart_write,
 };
diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 899c34b..49e95d9 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -237,7 +237,6 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read = omap_uart_read,
 	.reg_write = omap_uart_write,
 };
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index 071e374..0c243f3 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -213,7 +213,6 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock		= 48000000,      /* 48MHz (APLL96/2) */
-	.f_caps		= CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read	= omap_uart_read,
 	.reg_write	= omap_uart_write,
 };
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 010fbd7..36f226c 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -605,7 +605,6 @@ static void mux_config(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,	/* 48MHz (APLL96/2) */
-	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read = omap_uart_read,
 	.reg_write = omap_uart_write,
 };
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 4c9d8ee..4164c1f 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -32,7 +32,6 @@ static int board_revision;
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read = omap_uart_read,
 	.reg_write = omap_uart_write,
 };
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index ec0d0b8..d6de29b 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -43,7 +43,6 @@
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
 	.reg_read = omap_uart_read,
 	.reg_write = omap_uart_write,
 };
diff --git a/arch/x86/boards/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
index d031c52..b35d26f 100644
--- a/arch/x86/boards/x86_generic/generic_pc.c
+++ b/arch/x86/boards/x86_generic/generic_pc.c
@@ -78,7 +78,6 @@ device_initcall(devices_init);
 
 static struct NS16550_plat serial_plat = {
        .clock = 1843200,
-       .f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR,
        .reg_read = x86_uart_read,
        .reg_write = x86_uart_write,
 };
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 9a4b4dc..1dea736 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -196,7 +196,10 @@ static int ns16550_probe(struct device_d *dev)
 
 	dev->type_data = cdev;
 	cdev->dev = dev;
-	cdev->f_caps = plat->f_caps;
+	if (plat->f_caps)
+		cdev->f_caps = plat->f_caps;
+	else
+		cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = ns16550_tstc;
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
