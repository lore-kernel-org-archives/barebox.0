Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htxvm-0003L1-TG
 for barebox@lists.infradead.org; Sat, 03 Aug 2019 17:35:00 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Aug 2019 19:33:58 +0200
Message-Id: <20190803173358.9209-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! Documentation: boards: add initial STM32MP
 documentation
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de, rhi@pengutronix.de

Left-over line spotted by Roland. The boards are listed in the section
following this.
---
 Documentation/boards/stm32mp.rst | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/boards/stm32mp.rst b/Documentation/boards/stm32mp.rst
index 8cbf36c3961e..24cf8859db8d 100644
--- a/Documentation/boards/stm32mp.rst
+++ b/Documentation/boards/stm32mp.rst
@@ -22,8 +22,6 @@ header-less image ending in ``*.pblb`` as well.
 
 Use of barebox as FSBL is not supported.
 
-Following boards are currently supported in barebox:
-
 Building barebox
 ----------------
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
