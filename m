Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMl-0003hO-Gf
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:44 +0100
Message-Id: <20190318091454.11386-2-s.hauer@pengutronix.de>
In-Reply-To: <20190318091454.11386-1-s.hauer@pengutronix.de>
References: <20190318091454.11386-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/11] ARM: semihosting: Fix function prototype
To: Barebox List <barebox@lists.infradead.org>

lsee takes a loff_t pos argument and not a off_t argument. Fix.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/semihosting.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/lib32/semihosting.c b/arch/arm/lib32/semihosting.c
index a7351961dc..10ee7d3640 100644
--- a/arch/arm/lib32/semihosting.c
+++ b/arch/arm/lib32/semihosting.c
@@ -153,7 +153,7 @@ int semihosting_isatty(int fd)
 }
 EXPORT_SYMBOL(semihosting_isatty);
 
-int semihosting_seek(int fd, off_t pos)
+int semihosting_seek(int fd, loff_t pos)
 {
 	struct __packed {
 		uint32_t fd;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
