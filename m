Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo6.mail-out.ovh.net ([87.98.171.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3U6J-0004P9-5u
 for barebox@lists.infradead.org; Tue, 23 Dec 2014 18:22:32 +0000
Received: from mail179.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id F0E2AFFA6DA
 for <barebox@lists.infradead.org>; Tue, 23 Dec 2014 19:22:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 23 Dec 2014 19:21:52 +0100
Message-Id: <1419358918-25569-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/9] grapric_utils: set_pixel only write 16bit in 16bit mode
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/gui/graphic_utils.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 300c525..6465f8e 100644
--- a/lib/gui/graphic_utils.c
+++ b/lib/gui/graphic_utils.c
@@ -104,7 +104,7 @@ void set_pixel(struct fb_info *info, void *adr, u32 px)
 	case 8:
 		break;
 	case 16:
-		*(u16 *)adr = px;
+		*(u16 *)adr = px & 0xffff;
 		break;
 	case 32:
 		*(u32 *)adr = px;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
