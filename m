Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdun-0000AO-GG
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:49:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:48:45 +0200
Message-Id: <1437032926-25680-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437032926-25680-1-git-send-email-s.hauer@pengutronix.de>
References: <1437032926-25680-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] scripts: imx-image: Do not pad image
To: Barebox List <barebox@lists.infradead.org>

We have to pad the load size to the next 4k boundary, but only for the
HAB4 case we actually care what data is loaded in the rest of the image.
This lets the padding depend on the prepare_sign option.

Background for this patch is a new yet-to-be-introduced image loading
mechanism for i.MX. This new mechanism only loads the PBL portion of
the image to memory, and not the whole image anymore. This means that
the image in this case changes from:

i.MX header (with loadsize: whole image), PBL, payload, padding

to:

i.MX header (with loadsize: header + PBL + padding), PBL, padding, payload

With the padding between PBL and payload we are no longer able to find
the payload, so we cannot add the padding there.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index e765c1d..f0e8ca3 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -825,7 +825,7 @@ int main(int argc, char *argv[])
 
 	/* pad until next 4k boundary */
 	now = 4096 - now;
-	if (now) {
+	if (prepare_sign && now) {
 		memset(buf, 0x5a, now);
 
 		ret = xwrite(outfd, buf, now);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
