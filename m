Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from calrissian.rohieb.name ([81.20.132.56] helo=rohieb.name)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSUvk-0001qR-MA
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 22:05:27 +0000
From: Roland Hieber <rohieb@rohieb.name>
Date: Tue, 12 Jun 2018 00:02:31 +0200
Message-Id: <20180611220235.15995-6-rohieb@rohieb.name>
In-Reply-To: <20180611220235.15995-1-rohieb@rohieb.name>
References: <20180611220235.15995-1-rohieb@rohieb.name>
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
Subject: [PATCH 5/9] doc: boards: Garz+Fricke Vincell: fix header level,
 capitalization and punctuation
To: barebox@lists.infradead.org
Cc: Roland Hieber <rohieb@rohieb.name>

Signed-off-by: Roland Hieber <rohieb@rohieb.name>
---
 Documentation/boards/imx/garz-fricke-vincell.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/garz-fricke-vincell.rst b/Documentation/boards/imx/garz-fricke-vincell.rst
index 58ab0ab42f..09d87d67c3 100644
--- a/Documentation/boards/imx/garz-fricke-vincell.rst
+++ b/Documentation/boards/imx/garz-fricke-vincell.rst
@@ -7,11 +7,11 @@ This CPU card is based on a Freescale i.MX53 CPU. The card is shipped with:
   * 512MiB synchronous dynamic RAM
   * microSD slot
 
-see http://www.garz-fricke.com/en/products/embedded-systems/single-board-computer/ia-0086r/ for more information
+See http://www.garz-fricke.com/en/products/embedded-systems/single-board-computer/ia-0086r/ for more information.
 
 
 Bootstrapping barebox
-=====================
+---------------------
 
 The Vincell is shipped with the RedBoot bootloader. To replace RedBoot with
 barebox, you first need to connect a serial console to the device.
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
