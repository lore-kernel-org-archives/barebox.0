Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pa83W-00072c-A9
	for barebox@lists.infradead.org; Tue, 04 Jan 2011 14:40:11 +0000
Received: from [192.168.100.11] (tra42-1-82-232-183-99.fbx.proxad.net
	[82.232.183.99])
	by mail.free-electrons.com (Postfix) with ESMTPA id 079651AD
	for <barebox@lists.infradead.org>; Tue,  4 Jan 2011 15:40:01 +0100 (CET)
Message-ID: <4D23313B.9040002@free-electrons.com>
Date: Tue, 04 Jan 2011 15:39:55 +0100
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] BMP: Add support for 32bpp video frame buffer
To: barebox <barebox@lists.infradead.org>

Signed-off-by: Gregory CLEMENT <gregory.clement@free-electrons.com>
---
 commands/bmp.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/commands/bmp.c b/commands/bmp.c
index 5bac031..644a977 100644
--- a/commands/bmp.c
+++ b/commands/bmp.c
@@ -25,6 +25,7 @@ static inline void set_pixel(struct fb_info *info, void *adr, int r, int g, int
 		*(u16 *)adr = px;
 		break;
 	case 32:
+		*(u32 *)adr = px;
 		break;
 	}
 }
-- 
1.7.0.4



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
