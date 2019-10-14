Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0u-0006G6-BH
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 06:39:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 08:39:22 +0200
Message-Id: <20191014063922.17233-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191014063922.17233-1-a.fatoum@pengutronix.de>
References: <20191014063922.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 5/5] Documentation: boards: stm32mp: document environment
 partition
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We have barebox get its environment out of a "barebox-environment"
partition. The BootROM and first stage bootloader both select partitions
on name not UUID, so we're following suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/stm32mp.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 24cf8859db8d..774ede6e560f 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -60,6 +60,10 @@ An appropriate image for the boot media can be generated with following
           image = "barebox-@STM32MP_BOARD@.img"
           size = 1M
       }
+      partition barebox-environment {
+          image = "/dev/null"
+          size = 1M
+      }
   }
 
 Image can then be flashed on e.g. a SD-Card.
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
