Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIgF2-0003Aj-GB
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 13:08:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 15:08:37 +0200
Message-Id: <1334322517-18705-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: be more informative with oftrees
To: barebox@lists.infradead.org

- print error message when the specified oftree cannot be opened
- move verbose info to top of function so that the information is
  printed before something else fails.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 4f174db..1e1dc52 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -154,9 +154,14 @@ static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 	int ret;
 	size_t size;
 
+	if (bootm_verbose(data))
+		printf("Loading oftree from '%s'\n", oftree);
+
 	ft = file_name_detect_type(oftree);
-	if ((int)ft < 0)
+	if ((int)ft < 0) {
+		printf("failed to open %s: %s\n", oftree, strerror(-(int)ft));
 		return ft;
+	}
 
 	if (ft == filetype_uimage) {
 #ifdef CONFIG_CMD_BOOTM_OFTREE_UIMAGE
@@ -196,9 +201,6 @@ static int bootm_open_oftree(struct image_data *data, char *oftree, int num)
 				file_type_to_string(ft));
 	}
 
-	if (bootm_verbose(data))
-		printf("Loading oftree from '%s'\n", oftree);
-
 	fdt = xrealloc(fdt, size + 0x8000);
 	fdt_open_into(fdt, fdt, size + 0x8000);
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
