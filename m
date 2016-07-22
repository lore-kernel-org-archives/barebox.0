Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZoz-0003fw-St
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:44:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:30 +0200
Message-Id: <1469191472-14491-17-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/18] boot command: Explicitly complain when boot target list
 is empty
To: Barebox List <barebox@lists.infradead.org>

When no targets to boot are found it can happen that the boot command
just returns silently. Explicitly print a message in this case to give
a clue what might went wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/commands/boot.c b/commands/boot.c
index e757011..b774ddc 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -77,6 +77,11 @@ static int do_boot(int argc, char *argv[])
 		free(freep);
 	}
 
+	if (list_empty(&entries->entries)) {
+		printf("Nothing bootable found\n");
+		return COMMAND_ERROR;
+	}
+
 	if (do_list) {
 		bootsources_list(entries);
 		goto out;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
