Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMM-0002IW-Ef
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:53 +0100
Message-Id: <20190318091454.11386-11-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] mfd: twl-core: Add missing prototype for twlcore_get()
To: Barebox List <barebox@lists.infradead.org>

twlcore_get() has no prototype provided in header file. Add it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mfd/twl-core.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/mfd/twl-core.h b/include/mfd/twl-core.h
index 88d29f019b..35920bd3e0 100644
--- a/include/mfd/twl-core.h
+++ b/include/mfd/twl-core.h
@@ -23,8 +23,9 @@ struct twlcore {
 
 extern struct cdev_operations twl_fops;
 
-extern int twlcore_reg_read(struct twlcore *twlcore, u16 reg, u8 *val);
-extern int twlcore_reg_write(struct twlcore *twlcore, u16 reg, u8 val);
-extern int twlcore_set_bits(struct twlcore *twlcore, u16 reg, u8 mask, u8 val);
+int twlcore_reg_read(struct twlcore *twlcore, u16 reg, u8 *val);
+int twlcore_reg_write(struct twlcore *twlcore, u16 reg, u8 val);
+int twlcore_set_bits(struct twlcore *twlcore, u16 reg, u8 mask, u8 val);
+struct twlcore *twlcore_get(void);
 
 #endif /* __MFD_TWLCORE_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
