Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG4lb-0007hj-Sc
 for barebox@lists.infradead.org; Tue, 08 May 2018 15:43:05 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Tue,  8 May 2018 17:42:49 +0200
Message-Id: <20180508154249.30171-2-r.hieber@pengutronix.de>
In-Reply-To: <20180508154249.30171-1-r.hieber@pengutronix.de>
References: <20180508154249.30171-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 2/2] doc: boards: imx: link to mxs documentation
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

---
 Documentation/boards/imx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 9b1eb82d41..343643cd75 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -7,7 +7,7 @@ SoCs up to i.MX31 support only the external Boot Mode. Newer SoCs
 can be configured for internal or external Boot Mode with the internal
 boot mode being the more popular mode. The i.MX23 and i.MX28, also
 known as i.MXs, are special. These SoCs have a completely different
-boot mechanism.
+boot mechanism, see :doc:`mxs` instead.
 
 Internal Boot Mode
 ------------------
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
