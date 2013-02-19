Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo1.mail-out.ovh.net ([87.98.158.110]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U7jRx-0002Ij-Ew
 for barebox@lists.infradead.org; Tue, 19 Feb 2013 09:25:22 +0000
Received: from mail635.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 6FBAFFFAA54
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2013 10:40:59 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Feb 2013 10:24:14 +0100
Message-Id: <1361265854-14224-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For master PATCH 1/1] grapric_utils: set_pixel only write 16bit in
 16bit mode
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 lib/gui/graphic_utils.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
index 95687df..a1be5d0 100644
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
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
