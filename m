Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUYi4-0004d6-IC
 for barebox@lists.infradead.org; Wed, 26 Aug 2015 11:17:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Aug 2015 13:17:13 +0200
Message-Id: <1440587836-22105-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
References: <1440587836-22105-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] reset-source: Use globalvar_add_simple_enum
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/reset_source.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 80002a9..f9ee99b 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -40,15 +40,13 @@ EXPORT_SYMBOL(reset_source_get);
 void reset_source_set(enum reset_src_type st)
 {
 	reset_source = st;
-
-	globalvar_add_simple("system.reset", reset_src_names[reset_source]);
 }
 EXPORT_SYMBOL(reset_source_set);
 
-/* ensure this runs after the 'global' device is already registerd */
 static int reset_source_init(void)
 {
-	reset_source_set(reset_source);
+	globalvar_add_simple_enum("system.reset", (unsigned int *)&reset_source,
+			reset_src_names, ARRAY_SIZE(reset_src_names));
 
 	return 0;
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
