Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg1ne-0001cV-1G
 for barebox@lists.infradead.org; Tue, 02 Jun 2020 07:57:31 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  2 Jun 2020 09:57:25 +0200
Message-Id: <20200602075725.3979-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! blspec: Allow the "options" key to be given multiple
 times
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

constness was erroneously cast away. Reinstate const safety.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 3be26d0a7a14..9e1036c8342c 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -301,7 +301,7 @@ static struct blspec_entry *blspec_entry_open(struct bootentries *bootentries,
 		if (!strcmp(name, "options")) {
 			/* If there was a previous "options" key given, prepend its value
 			 * (as per spec). */
-			char *prev_val = blspec_entry_var_get(entry, name);
+			const char *prev_val = blspec_entry_var_get(entry, name);
 			if (prev_val) {
 				char *opts = xasprintf("%s %s", prev_val, val);
 				blspec_entry_var_set(entry, name, opts);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
