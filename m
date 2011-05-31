Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QRQw0-0002Qy-Pr
	for barebox@lists.infradead.org; Tue, 31 May 2011 15:32:49 +0000
Received: by fxm14 with SMTP id 14so4172959fxm.36
	for <barebox@lists.infradead.org>; Tue, 31 May 2011 08:32:42 -0700 (PDT)
From: Dirk Behme <dirk.behme@googlemail.com>
Date: Tue, 31 May 2011 17:32:27 +0200
Message-Id: <1306855947-4725-1-git-send-email-dirk.behme@gmail.com>
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
Subject: [Patch/master v2] pr_warn() must be pr_warning()
To: barebox@lists.infradead.org

From: Dirk Behme <dirk.behme@googlemail.com>

Fix the warning/error:

drivers/mci/mci-core.c: In function 'mci_card_probe':
drivers/mci/mci-core.c:1195: warning: implicit declaration of function 'pr_warn'
...
drivers/built-in.o: In function `mci_card_probe':
mc13892.c:(.text.mci_card_probe+0x68): undefined reference to `pr_warn'

Signed-off-by: Dirk Behme <dirk.behme@googlemail.com>

---

Note: This replaces the patch

http://lists.infradead.org/pipermail/barebox/2011-May/003549.html

by using the kernel macro as proposed by Uwe Kleine-Koenig.

 include/linux/barebox-wrapper.h |    2 ++
 1 file changed, 2 insertions(+)

Index: barebox.git/include/linux/barebox-wrapper.h
===================================================================
--- barebox.git.orig/include/linux/barebox-wrapper.h
+++ barebox.git/include/linux/barebox-wrapper.h
@@ -20,6 +20,8 @@
 
 #define printk			printf
 
+#define pr_warn			pr_warning
+
 #define __init
 
 #define MODULE_AUTHOR(x)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
