Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076Z-I3
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:55 +0100
Message-Id: <20180130084657.31943-5-s.hauer@pengutronix.de>
In-Reply-To: <20180130084657.31943-1-s.hauer@pengutronix.de>
References: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] bbu: Make pointer to image const
To: Barebox List <barebox@lists.infradead.org>

Make pointer to image in bbu data const so that we can put
const pointers into that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/bbu.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/bbu.h b/include/bbu.h
index a3824e11cf..def568e498 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -11,7 +11,7 @@ struct bbu_data {
 #define BBU_FLAG_YES	(1 << 1)
 	unsigned long flags;
 	int force;
-	void *image;
+	const void *image;
 	const char *imagefile;
 	const char *devicefile;
 	size_t len;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
