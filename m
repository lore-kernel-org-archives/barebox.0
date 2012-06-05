Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp26.mail.ru ([94.100.176.179])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SbxYz-0000H4-9o
 for barebox@lists.infradead.org; Tue, 05 Jun 2012 17:29:02 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  5 Jun 2012 21:58:39 +0400
Message-Id: <1338919119-22581-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] PCM038: Added support for boot from NOR-flash
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/env/boot/nor |    9 +++++++++
 1 files changed, 9 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/boards/pcm038/env/boot/nor

diff --git a/arch/arm/boards/pcm038/env/boot/nor b/arch/arm/boards/pcm038/env/boot/nor
new file mode 100644
index 0000000..5dfca6f
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/boot/nor
@@ -0,0 +1,9 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "nor"
+	exit
+fi
+
+global.bootm.image="/dev/nor0.kernel"
+global.linux.bootargs.root="root=/dev/mtdblock3"
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
