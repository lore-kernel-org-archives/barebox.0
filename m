Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jad9Q-0004A2-N1
 for barebox@lists.infradead.org; Mon, 18 May 2020 10:37:42 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Mon, 18 May 2020 12:37:35 +0200
Message-Id: <1589798255-359359-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [PATCH] blspec: Allow the "options" key to be given multiple times
To: barebox@lists.infradead.org

The Boot Loader Spec says:
"This key is optional and may appear more than once in which case all
specified parameters are used in the order they are listed."

Signed-off-by: Robert Karszniewicz <r.karszniewicz@phytec.de>
---
 common/blspec.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index 1a6d581..3be26d0 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -298,6 +298,18 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
 
 		val = end;
 
+		if (!strcmp(name, "options")) {
+			/* If there was a previous "options" key given, prepend its value
+			 * (as per spec). */
+			char *prev_val = blspec_entry_var_get(entry, name);
+			if (prev_val) {
+				char *opts = xasprintf("%s %s", prev_val, val);
+				blspec_entry_var_set(entry, name, opts);
+				free(opts);
+				continue;
+			}
+		}
+
 		blspec_entry_var_set(entry, name, val);
 	}
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
