Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZCv9-0002qy-8P
 for barebox@lists.infradead.org; Tue, 18 Dec 2018 10:48:20 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 18 Dec 2018 11:47:43 +0100
Message-Id: <76716692df455c3f2cc754712b6e3b770a9a6c71.1545130027.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
References: <cover.61efbc8cc3e2f39adccce96b40af1bb32a30bc66.1545130027.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v5 8/9] doc: bcm283x: remove miniuart overlay instruction
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
