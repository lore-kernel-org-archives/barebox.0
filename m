Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Ygb96-0003Mz-QK
 for barebox@lists.infradead.org; Fri, 10 Apr 2015 15:47:05 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 10 Apr 2015 17:37:56 +0200
Message-Id: <1428680277-14139-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 1/2] Documentation: fix am335x title
To: barebox@lists.infradead.org

Fixes:
Documentation/boards/am335x.rst:51: WARNING: Title underline too short.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/boards/am335x.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
index 671c3aa..6972020 100644
--- a/Documentation/boards/am335x.rst
+++ b/Documentation/boards/am335x.rst
@@ -48,7 +48,7 @@ file for your board to the card and name it ``MLO``. Copy the regular image
 for your board to the card and name it ``barebox.bin``.
 
 AM335x Boards
-------
+-------------
 
 .. toctree::
   :glob:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
