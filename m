Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5Lg-0002kP-Pf
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:10:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:09:54 +0200
Message-Id: <1400674196-31951-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674196-31951-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674196-31951-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] mii-tool: Fix string length
To: barebox@lists.infradead.org

media_list writes into a static string. Worst case length of this string
is 125 bytes, but the function only allocates 100 bytes. Use 256 bytes which
is long enough for some extensions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 1e5d4eb..81b5a25 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -61,7 +61,7 @@ const struct {
 
 static const char *media_list(unsigned mask, unsigned mask2, int best)
 {
-	static char buf[100];
+	static char buf[256];
 	int i;
 
 	*buf = '\0';
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
