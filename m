Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0oaN-0007yp-9v
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 06:57:12 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 006481054AFD
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 09:01:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Aug 2012 08:57:14 +0200
Message-Id: <1344841034-10068-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344841034-10068-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120813065448.GM6271@game.jcrosoft.org>
 <1344841034-10068-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] uimage_laod: fix ramdisk support
To: barebox@lists.infradead.org

ramdisk U-Boot expect to ignore the compression type

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/uimage.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/common/uimage.c b/common/uimage.c
index 735b64e..442a7f0 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -334,7 +334,8 @@ int uimage_load(struct uimage_handle *handle, unsigned int image_no,
 	if (ret < 0)
 		return ret;
 
-	if (hdr->ih_comp == IH_COMP_NONE)
+	/* if ramdisk U-Boot expect to ignore the compression type */
+	if (hdr->ih_comp == IH_COMP_NONE || hdr->ih_type == IH_TYPE_RAMDISK)
 		uncompress_fn = uncompress_copy;
 	else
 		uncompress_fn = uncompress;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
