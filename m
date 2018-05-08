Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fG4lb-0007hi-QS
 for barebox@lists.infradead.org; Tue, 08 May 2018 15:43:05 +0000
From: Roland Hieber <r.hieber@pengutronix.de>
Date: Tue,  8 May 2018 17:42:48 +0200
Message-Id: <20180508154249.30171-1-r.hieber@pengutronix.de>
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
Subject: [PATCH 1/2] README: describe how to build the documentation
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>

---
 README | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/README b/README
index 3862f6091e..8025bdf4a2 100644
--- a/README
+++ b/README
@@ -179,7 +179,8 @@ net/                  -> Networking stuff
 
 scripts/              -> Kconfig system
 
-Documentation/        -> Sphinx generated documentation
+Documentation/        -> Sphinx generated documentation. Call "make docs" to
+                         generate a HTML version in Documentation/html.
 
 
 Release Strategy
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
