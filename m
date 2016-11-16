Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6wGG-0006wZ-IG
 for barebox@lists.infradead.org; Wed, 16 Nov 2016 09:12:10 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 16 Nov 2016 10:11:37 +0100
Message-Id: <20161116091139.15674-1-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 1/3] scripts/kwbimage: fix typo
To: barebox@lists.infradead.org

---
 scripts/kwbimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index eabd09f45d42..15726e066a01 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -524,7 +524,7 @@ static int image_extract_v1(void *fdimap, const char *output, FILE *focfg)
 	int opthdrid;
 
 	/*
-	 * Verify the checkum. We have to substract the checksum
+	 * Verify the checksum. We have to subtract the checksum
 	 * itself, because when the checksum is calculated, the
 	 * checksum field is 0.
 	 */
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
