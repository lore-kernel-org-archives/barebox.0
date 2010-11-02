Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdY-0002Xr-Km
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:57 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:42 +0100
Message-Id: <1288703442-5032-14-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
References: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/13] doc: put cupid into the right chapter
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/boards.dox            |    1 +
 arch/arm/boards/guf-cupid/cupid.dox |    2 +-
 2 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/Documentation/boards.dox b/Documentation/boards.dox
index 02e02bd..fa0f284 100644
--- a/Documentation/boards.dox
+++ b/Documentation/boards.dox
@@ -33,6 +33,7 @@ ARM type:
 @li @subpage edb9312
 @li @subpage edb9315
 @li @subpage edb9315a
+@li @subpage board_cupid
 
 Blackfin type:
 
diff --git a/arch/arm/boards/guf-cupid/cupid.dox b/arch/arm/boards/guf-cupid/cupid.dox
index 2ff1b2c..45f0e0c 100644
--- a/arch/arm/boards/guf-cupid/cupid.dox
+++ b/arch/arm/boards/guf-cupid/cupid.dox
@@ -1,4 +1,4 @@
-/** @page Garz+Fricke Cupid
+/** @page board_cupid Garz+Fricke Cupid
 
 This CPU card is based on a Freescale i.MX35 CPU. The card is shipped with:
 
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
