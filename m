Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLfr-0005Qf-Ck
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:44:50 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 13 Dec 2018 08:44:30 +0100
Message-Id: <20181213074430.25614-9-r.czerwinski@pengutronix.de>
In-Reply-To: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
References: <20181213074430.25614-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2 8/8] doc: bcm283x: remove miniuart overlay instruction
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Since we now use the miniuart on the raspberry pi 3, the miniuart overlay is no
longer needed.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 79ea0ff7a..ea80d5834 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -22,7 +22,6 @@ Raspberry Pi
 
          kernel=barebox.img
          enable_uart=1
-         dtoverlay=pi3-miniuart-bt
 
      (For more information, refer to the `documentation for config.txt`_.)
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
