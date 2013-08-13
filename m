Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V9903-0008BR-6D
 for barebox@lists.infradead.org; Tue, 13 Aug 2013 07:26:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Aug 2013 09:26:08 +0200
Message-Id: <1376378772-25649-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
References: <1376378772-25649-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: dts: cubox: fix stdout-path property
To: barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

It's linux,stdout-path, not linux,stdoutpath

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/dove-cubox.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
index dd575eb..61f38fe 100644
--- a/arch/arm/dts/dove-cubox.dts
+++ b/arch/arm/dts/dove-cubox.dts
@@ -13,7 +13,7 @@
 
 	chosen {
 		bootargs = "console=ttyS0,115200n8 earlyprintk";
-		linux,stdoutpath = &uart0;
+		linux,stdout-path = &uart0;
 	};
 
 	leds {
-- 
1.8.4.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
