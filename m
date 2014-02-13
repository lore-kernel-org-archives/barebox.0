Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDsqB-000059-CU
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:44:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:43:57 +0100
Message-Id: <1392284637-30475-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: Return error when devicetree file is not a dtb
To: barebox@lists.infradead.org

We check whether the file passed as devicetree actually is a devicetree,
but we missed to return an error if it's not. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index d62d011..12d3ee0 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -294,6 +294,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 	if (ft != filetype_oftree) {
 		printf("%s is not an oftree but %s\n", oftree,
 				file_type_to_string(ft));
+		return -EINVAL;
 	}
 
 	data->of_root_node = of_unflatten_dtb(NULL, fdt);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
