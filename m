Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V8p3u-0004o3-HM
 for barebox@lists.infradead.org; Mon, 12 Aug 2013 10:09:19 +0000
Received: from mail421.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 525DFDC2DDA
 for <barebox@lists.infradead.org>; Mon, 12 Aug 2013 12:08:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 12 Aug 2013 12:09:23 +0200
Message-Id: <1376302163-32509-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1376302163-32509-1-git-send-email-plagnioj@jcrosoft.com>
References: <1376302163-32509-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] uimage: fix: fill size when no compression is used
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/uimage.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/uimage.c b/common/uimage.c
index ed93a4b..f6b6990 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -478,6 +478,7 @@ void *uimage_load_to_buf(struct uimage_handle *handle, int image_no,
 			free(buf);
 			return NULL;
 		}
+		size = ihd->len;
 		goto out;
 	}
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
