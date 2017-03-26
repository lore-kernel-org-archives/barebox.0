Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5H-00051T-P4
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:16 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id D7143B9B0B
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:48 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:58 +0200
Message-Id: <1490496304-30850-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 07/13] go: only use it if boot signature is not required
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/go.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/commands/go.c b/commands/go.c
index fb319b320..e0385a977 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -26,6 +26,7 @@
 #include <fcntl.h>
 #include <linux/ctype.h>
 #include <errno.h>
+#include <boot_verify.h>
 
 static int do_go(int argc, char *argv[])
 {
@@ -37,6 +38,9 @@ static int do_go(int argc, char *argv[])
 	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
+	if (boot_get_verify_mode() < BOOT_VERIFY_AVAILABLE)
+		return -ESECVIOLATION;
+
 	if (!isdigit(*argv[1])) {
 		fd = open(argv[1], O_RDONLY);
 		if (fd < 0) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
