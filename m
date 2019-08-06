Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huzP1-0001fw-MY
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 13:21:25 +0000
From: r.czerwinski@pengutronix.de
Date: Tue,  6 Aug 2019 15:21:08 +0200
Message-Id: <20190806132108.27339-1-r.czerwinski@pengutronix.de>
In-Reply-To: <95c1fb0aa5ab2d3d81fb7405537f7d8b34dd939d.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <95c1fb0aa5ab2d3d81fb7405537f7d8b34dd939d.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH] fixup! pbl: add sha256 and piggy verification to PBL
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

---
 pbl/Kconfig | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 5e7ee069d6..7e6077f96d 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -47,11 +47,6 @@ config PBL_RELOCATABLE
 config PBL_VERIFY_PIGGY
 	depends on ARM
 	bool
-	help
-	  Use a PBL builtin sha256sum to verify the piggydata before decompression.
-	  WARNING: your board will not boot if a mismatch is detected, enable DEBUG_LL
-	  to see the builtin and calculated hash.
-	  This effectively locks a given PBL to the matching main barebox.
 
 config IMAGE_COMPRESSION
 	bool
-- 
2.22.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
