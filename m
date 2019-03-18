Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5oMU-0003Bj-Im
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 09:15:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Mar 2019 10:14:52 +0100
Message-Id: <20190318091454.11386-10-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/11] bus: mvebu-mbus: Add missing whitespace
To: Barebox List <barebox@lists.infradead.org>

orion5x_2win_mbus_data__maybe_unused should be two words. Fix it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/bus/mvebu-mbus.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index 965a221d3b..4b7edb53ed 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -436,7 +436,7 @@ orion5x_4win_mbus_data __maybe_unused = {
 };
 
 static const struct mvebu_mbus_soc_data
-orion5x_2win_mbus_data__maybe_unused = {
+orion5x_2win_mbus_data __maybe_unused = {
 	.num_wins            = 8,
 	.num_remappable_wins = 2,
 	.win_cfg_offset      = orion5x_mbus_win_offset,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
