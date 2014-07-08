Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006VW-Us
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:49:58 +0200
Message-Id: <1404809417-21477-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/21] oftree command: Use size_t for size
To: barebox@lists.infradead.org

read_file takes a size_t argument as size, so use this type for the
size variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/oftree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/oftree.c b/commands/oftree.c
index 983a0a5..49976bc 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -42,7 +42,7 @@
 static int do_oftree(int argc, char *argv[])
 {
 	struct fdt_header *fdt = NULL;
-	int size;
+	size_t size;
 	int opt;
 	int probe = 0;
 	char *load = NULL;
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
