Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYo08-0002BW-IT
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 08:11:48 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 17 Dec 2018 09:10:45 +0100
Message-Id: <c06210149f71f2475a79bcbb6ad025ce38d8e119.1545034218.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
References: <cover.e610a402e2d09170d606caefc97f20a39572bbde.1545034218.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v4 7/7] doc: bcm283x: remove miniuart overlay instruction
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Since we now use the miniuart on the raspberry pi 3, the miniuart overlay is no
longer needed.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 Documentation/boards/bcm2835.rst | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/boards/bcm2835.rst b/Documentation/boards/bcm2835.rst
index 79ea0ff..ea80d58 100644
--- a/Documentation/boards/bcm2835.rst
+++ b/Documentation/boards/bcm2835.rst
@@ -22,7 +22,6 @@ Raspberry Pi
 
          kernel=barebox.img
          enable_uart=1
-         dtoverlay=pi3-miniuart-bt
 
      (For more information, refer to the `documentation for config.txt`_.)
 
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
