Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T72hl-0000eg-5c
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 11:14:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 13:14:00 +0200
Message-Id: <1346325240-6037-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346325240-6037-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346325240-6037-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/2] trivial: bootm: correct grammar in error message
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 commands/bootm.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 5f858e8..2d9f7f2 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -180,7 +180,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 
 	ft = file_detect_type(fdt);
 	if (ft != filetype_oftree) {
-		printf("%s is not a oftree but %s\n", oftree,
+		printf("%s is not an oftree but %s\n", oftree,
 				file_type_to_string(ft));
 	}
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
