Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpbI-0002AN-Qy
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:21:10 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 9063F10507E9
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:22:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:00:06 +0200
Message-Id: <1335787207-27838-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430115703.GD2992@game.jcrosoft.org>
References: <20120430115703.GD2992@game.jcrosoft.org>
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
Subject: [PATCH 2/3] qemu-malta: rename serial.c to init.c
To: barebox@lists.infradead.org

as the garbage collector will remove the empty function and the
add_ns16550_device is a empty inline if the driver is not enabled.

This will simplify add device adding.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/boards/qemu-malta/Makefile             |    2 +-
 arch/mips/boards/qemu-malta/{serial.c => init.c} |    0
 2 files changed, 1 insertions(+), 1 deletions(-)
 rename arch/mips/boards/qemu-malta/{serial.c => init.c} (100%)

diff --git a/arch/mips/boards/qemu-malta/Makefile b/arch/mips/boards/qemu-malta/Makefile
index ff1a655..eb072c0 100644
--- a/arch/mips/boards/qemu-malta/Makefile
+++ b/arch/mips/boards/qemu-malta/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_DRIVER_SERIAL_NS16550) += serial.o
+obj-y += init.o
diff --git a/arch/mips/boards/qemu-malta/serial.c b/arch/mips/boards/qemu-malta/init.c
similarity index 100%
rename from arch/mips/boards/qemu-malta/serial.c
rename to arch/mips/boards/qemu-malta/init.c
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
