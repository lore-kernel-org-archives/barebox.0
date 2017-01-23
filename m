Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVi1K-0002jw-TX
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 17:03:08 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: [PATCH 1/5] readkey: keys are unsigned char
Date: Mon, 23 Jan 2017 18:02:14 +0100
Message-Id: <20170123170218.25139-2-m.olbrich@pengutronix.de>
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Otherwise values > 127 will become negative and are dropped.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 lib/readkey.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/readkey.c b/lib/readkey.c
index 2870a5a9fee5..e72da0066bdc 100644
--- a/lib/readkey.c
+++ b/lib/readkey.c
@@ -51,8 +51,8 @@ static const struct esc_cmds esccmds[] = {
 
 int read_key(void)
 {
-	char c;
-	char esc[5];
+	unsigned char c;
+	unsigned char esc[5];
 	c = getchar();
 
 	if (c == 27) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
