Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1RB-0006hW-5H
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:07:46 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 7EA0626C2002
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:47 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:43 +0100
Message-Id: <1414959235-18095-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/13] net: rtl8169: add support for RTL-8168/8111g
To: barebox@lists.infradead.org

This is the version of the chip found on Jetson-TK1.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/rtl8169.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 3ed2e56..0cd5763 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -166,6 +166,7 @@ static struct rtl8169_chip_info chip_info[] = {
 	{"RTL-8168b/8111sb",	0x38,	0xff7e1880},
 	{"RTL-8168d/8111d",	0x28,	0xff7e1880},
 	{"RTL-8168evl/8111evl",	0x2e,	0xff7e1880},
+	{"RTL-8168/8111g",	0x4c,	0xff7e1880,},
 	{"RTL-8101e",		0x34,	0xff7e1880},
 	{"RTL-8100e",		0x32,	0xff7e1880},
 };
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
