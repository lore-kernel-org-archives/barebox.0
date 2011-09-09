Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R1zvO-00018c-3g
	for barebox@lists.infradead.org; Fri, 09 Sep 2011 12:11:15 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id A0A38BF0E7
	for <barebox@lists.infradead.org>;
	Fri,  9 Sep 2011 14:15:18 +0200 (CEST)
From: Juergen Kilb <J.Kilb@phytec.de>
Date: Fri, 9 Sep 2011 14:10:56 +0200
Message-Id: <1315570256-28614-4-git-send-email-J.Kilb@phytec.de>
In-Reply-To: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
References: <1315570256-28614-1-git-send-email-J.Kilb@phytec.de>
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
Subject: [PATCH] Corrected ns16550 access at all omap based boards.
To: barebox@lists.infradead.org
Cc: Juergen Kilb <J.Kilb@phytec.de>

Commit c71a77ab8 (ns16550: switch to resource) has introduced generic
read/write access to 16550 register and a 'shift' parameter to allign
register index to physicall registers.
The correct 'shift' value was missing in all omap based boards.
Corrected this to 2 which has fixed the problem.

Tested on a PCM-049 phyCORE-OMAP4 board.

Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
Tested-by: Jan Weitzel <J.Weitzel@phytec.de>
---
 arch/arm/boards/omap/board-beagle.c   |    1 +
 arch/arm/boards/omap/board-omap3evm.c |    1 +
 arch/arm/boards/omap/board-sdp343x.c  |    1 +
 arch/arm/boards/panda/board.c         |    1 +
 arch/arm/boards/pcm049/board.c        |    1 +
 5 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
index 49af40c..4e7f179 100644
--- a/arch/arm/boards/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -237,6 +237,7 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
 };
 
 /**
diff --git a/arch/arm/boards/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
index a2532d5..71d6ca9 100644
--- a/arch/arm/boards/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -213,6 +213,7 @@ void board_init(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock		= 48000000,      /* 48MHz (APLL96/2) */
+	.shift		= 2,
 };
 
 /**
diff --git a/arch/arm/boards/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
index 82fc16d..83efe62 100644
--- a/arch/arm/boards/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -605,6 +605,7 @@ static void mux_config(void)
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,	/* 48MHz (APLL96/2) */
+	.shift = 2,
 };
 
 /**
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 1303c47..33ec144 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -32,6 +32,7 @@ static int board_revision;
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
 };
 
 static int panda_console_init(void)
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 502e121..3d02779 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -43,6 +43,7 @@
 
 static struct NS16550_plat serial_plat = {
 	.clock = 48000000,      /* 48MHz (APLL96/2) */
+	.shift = 2,
 };
 
 static int pcm049_console_init(void)
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
