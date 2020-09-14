Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqNw-0008So-7k
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 15:27:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 17:27:11 +0200
Message-Id: <20200914152711.3693-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200914152711.3693-1-a.fatoum@pengutronix.de>
References: <20200914152711.3693-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] blspec: devicetree-overlay: don't warn on multiple
 delimiting spaces
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Michael Tretter <m.tretter@pengutronix.de>

strsep unlike strtok(_r) returns an empty string for each pair of
consecutive delimiters.
blspec_apply_oftree_overlay is not equipped to handle an empty
string and will attempt treating "abspath/" as device tree file.

Explicitly check for empty strings, so this doesn't happen.

Cc: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Change is untested
---
 common/blspec.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 9e1036c8342c..ed66352d1107 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -109,8 +109,11 @@ static void blspec_apply_oftree_overlays(const char *overlays,
 
 	sep = freep = xstrdup(overlays);
 
-	while ((overlay = strsep(&sep, " ")))
+	while ((overlay = strsep(&sep, " "))) {
+		if (!*overlay)
+			continue;
 		blspec_apply_oftree_overlay(overlay, abspath, dryrun);
+	}
 
 	free(freep);
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
