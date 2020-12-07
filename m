Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmDJx-0002qa-Dx
 for barebox@lists.infradead.org; Mon, 07 Dec 2020 10:00:42 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 978A1100011
 for <barebox@lists.infradead.org>; Mon,  7 Dec 2020 10:00:33 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  7 Dec 2020 11:00:27 +0100
Message-Id: <20201207100027.78760-1-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-11-ahmad@a3f.at>
References: <20201128213934.681065-11-ahmad@a3f.at>
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
Subject: [PATCH] fixup! doc: bcm283x: document use of mini-uart on Raspberry
 Pi Zero W / CM3
To: barebox@lists.infradead.org

---
 Documentation/boards/bcm2835.rst | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index dbdfc2633173..8af6a09c13db 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -23,12 +23,12 @@ Raspberry Pi
          kernel=barebox.img
          enable_uart=1
 
-     If you want to use the mini-uart instead of the PL011, you might need to additionally set::
+     If you want to use the mini-uart instead of the PL011, you may need to additionally set::
 
          uart_2ndstage=1
 
-     This is useful on newer boards like the Raspberry Pi Zero W and CM3, which route the
-     more easily accessible primary UART to the mini-uart.
+     This is required on boards, like the Raspberry Pi Zero W, that use the mini-uart as the
+     primary UART. It is needed on boards like the CM3 as well if the mini-uart is to be used.
 
      (For more information, refer to the `documentation for config.txt`_.)
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
