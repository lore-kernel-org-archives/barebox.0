Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aMWDH-0003pj-6g
 for barebox@lists.infradead.org; Fri, 22 Jan 2016 07:32:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jan 2016 08:32:20 +0100
Message-Id: <1453447952-30818-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
References: <1453447952-30818-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] bootm: Do not call uimage_close twice
To: Barebox List <barebox@lists.infradead.org>

uimage_close() is called on bootm cleanup, so do not close it
in the failure path in bootm_open_os_uimage().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 08125e7..affab24 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -208,7 +208,6 @@ static int bootm_open_os_uimage(struct image_data *data)
 	if (data->os->header.ih_arch != IH_ARCH) {
 		printf("Unsupported Architecture 0x%x\n",
 		       data->os->header.ih_arch);
-		uimage_close(data->os);
 		return -EINVAL;
 	}
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
