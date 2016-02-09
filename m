Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTAji-0000uW-9v
 for barebox@lists.infradead.org; Tue, 09 Feb 2016 16:01:55 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  9 Feb 2016 17:01:21 +0100
Message-Id: <1455033684-21067-2-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1455033684-21067-1-git-send-email-r.schwebel@pengutronix.de>
References: <1455033684-21067-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 2/5] Documentation: m25p80: include in documentation
To: barebox@lists.infradead.org

Fix this warning:

checking consistency...  [...]Documentation/devicetree/bindings/mtd/m25p80.rst:: WARNING: document isn't included in any toctree

by including the document.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/devicetree/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/index.rst b/Documentation/devicetree/index.rst
index abb9088..c5992c0 100644
--- a/Documentation/devicetree/index.rst
+++ b/Documentation/devicetree/index.rst
@@ -11,3 +11,4 @@ Contents:
    bindings/barebox/*
    bindings/leds/*
    bindings/misc/*
+   bindings/mtd/*
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
