Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Kf2-0003a1-89
 for barebox@lists.infradead.org; Sun, 15 Sep 2019 02:53:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so20357806pfe.5
 for <barebox@lists.infradead.org>; Sat, 14 Sep 2019 19:53:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 14 Sep 2019 19:53:01 -0700
Message-Id: <20190915025301.24456-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! net: dsa: mv88e6xxx: Wait for EEPROM done after HW
 reset
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

---

Looks like I forgot to change my debugging timeout value as well as
finish a comment. Sorry about that.

 drivers/net/phy/mv88e6xxx/global1.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/mv88e6xxx/global1.c b/drivers/net/phy/mv88e6xxx/global1.c
index 2331195fb3..218f877de3 100644
--- a/drivers/net/phy/mv88e6xxx/global1.c
+++ b/drivers/net/phy/mv88e6xxx/global1.c
@@ -24,7 +24,7 @@ static int mv88e6xxx_g1_read(struct mv88e6xxx_chip *chip, int reg, u16 *val)
 void mv88e6xxx_g1_wait_eeprom_done(struct mv88e6xxx_chip *chip)
 {
 	const uint64_t start   = get_time_ns();
-	const uint64_t timeout = 20 * SECOND;
+	const uint64_t timeout = SECOND;
 	u16 val;
 	int err;
 
@@ -38,7 +38,9 @@ void mv88e6xxx_g1_wait_eeprom_done(struct mv88e6xxx_chip *chip)
 			return;
 		}
 
-		if (val != 0xFFFF && /* switch will return 0xffff it it */
+		if (val != 0xFFFF && /* switch will return 0xffff until
+				      * EEPROM is loaded
+				      */
 		    val & BIT(MV88E6XXX_G1_STS_IRQ_EEPROM_DONE))
 			return;
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
