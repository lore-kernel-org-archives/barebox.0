Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b08Kz-0007PJ-Hx
 for barebox@lists.infradead.org; Tue, 10 May 2016 14:08:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 10 May 2016 16:08:07 +0200
Message-Id: <1462889289-24215-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] bootm: fit: Print error when image is not signed
To: Barebox List <barebox@lists.infradead.org>

when fit is configured to force signed images then print an error
message when an unsigned image is opened to give the user a clue
what went wrong.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/image-fit.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/image-fit.c b/common/image-fit.c
index a6e1082..ceb55c2 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -485,8 +485,11 @@ static int fit_open_configuration(struct fit_handle *handle, const char *name)
 				return ret;
 		}
 
-		if (ret < 0)
+		if (ret < 0) {
+			pr_err("configuration '%s': %s does not have a signature\n",
+			       unit, desc);
 			return ret;
+		}
 	}
 
 	if (of_property_read_string(conf_node, "kernel", &unit) == 0) {
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
