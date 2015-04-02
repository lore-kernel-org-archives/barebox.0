Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ydm4v-0006Ta-Ll
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 20:51:06 +0000
Received: by lbbug6 with SMTP id ug6so67849562lbb.3
 for <barebox@lists.infradead.org>; Thu, 02 Apr 2015 13:50:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  2 Apr 2015 23:50:21 +0300
Message-Id: <1428007821-10422-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fixup! net: Add Intel e1000 driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

the fixup removes this warning

drivers/net/e1000.c:139:6: warning: no previous prototype for 'e1000_raise_ee_clk' [-Wmissing-prototypes]
void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
     ^
---
 drivers/net/e1000.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/e1000.c b/drivers/net/e1000.c
index 0512ae4..6ef8259 100644
--- a/drivers/net/e1000.c
+++ b/drivers/net/e1000.c
@@ -136,7 +136,7 @@ static bool e1000_media_fiber_serdes(struct e1000_hw *hw)
  * hw - Struct containing variables accessed by shared code
  * eecd - EECD's current value
  *****************************************************************************/
-void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
+static void e1000_raise_ee_clk(struct e1000_hw *hw, uint32_t *eecd)
 {
 	/* Raise the clock input to the EEPROM (by setting the SK bit), and then
 	 * wait 50 microseconds.
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
