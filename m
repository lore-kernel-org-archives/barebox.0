Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kz-0007PI-Hy
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:06 +0200
Message-Id: <1462889289-24215-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
References: <1462889289-24215-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] bootm: fit: Print error when image is not hashed
To: Barebox List <barebox@lists.infradead.org>

When fit is configured to check hashes print an error when an image
does not contain hashes instead of failing silently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index 4f5c1f1..a6e1082 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -436,9 +436,12 @@ static int fit_open_image(struct fit_handle *handle, const char *unit, const voi
 			if (ret < 0)
 				return ret;
 		}
+
+		if (ret < 0) {
+			pr_err("image '%s': '%s' does not have hashes\n", unit, desc);
+			return ret;
+		}
 	}
-	if (ret < 0)
-		return ret;
 
 	*outdata = data;
 	*outsize = data_len;
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
