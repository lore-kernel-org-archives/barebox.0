Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPkH5-0006VU-BE
 for barebox@lists.infradead.org; Wed, 30 Oct 2019 09:28:20 +0000
Received: from geraet.fritz.box (unknown [46.218.74.72])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id DF10660011
 for <barebox@lists.infradead.org>; Wed, 30 Oct 2019 09:27:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Wed, 30 Oct 2019 10:27:31 +0100
Message-Id: <20191030092731.7154-1-ahmad@a3f.at>
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
Subject: [PATCH] Documentation: boards: stm32mp: document boot mode strap pins
To: barebox@lists.infradead.org

The evaluation kits have 2P DIP-Switches for boot mode selection.
Document them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/stm32mp.rst | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index d4429aae2765..f93ec04eb04d 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -62,3 +62,22 @@ An appropriate image for the boot media can be generated with following
   }
 
 Image can then be flashed on e.g. a SD-Card.
+
+Boot source selection
+---------------------
+
+The STM32MP BootROM samples three boot pins at reset. Usually BOOT1 is
+pulled down and BOOT0 and BOOT2 are connected to a 2P DIP switch::
+
+       +-------+
+ BOOT2 | O O-- |
+ BOOT0 | N O-- |  <---- SDMMC
+       +-------+
+       +-------+
+ BOOT2 | O O-- |
+ BOOT0 | N --O |  <---- QSPI-NOR Flash
+       +-------+
+       +-------+
+ BOOT2 | O --O |
+ BOOT0 | N --O |  <---- DFU on UART and USB OTG
+       +-------+
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
