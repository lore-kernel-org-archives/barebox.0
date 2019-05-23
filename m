Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTke4-0004Vc-7x
 for barebox@lists.infradead.org; Thu, 23 May 2019 10:08:22 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Thu, 23 May 2019 12:08:13 +0200
Message-Id: <20190523100813.11591-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] lib: select BASE64 if BLOBGEN is selected
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Blobgen requires the BASE64 libraries, select them to provide them if
BLOBGEN is selected.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 lib/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/Kconfig b/lib/Kconfig
index 7cf6975bcc..af178217f8 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -159,6 +159,7 @@ config NLS
         bool "Native language support"
 
 config BLOBGEN
+	select BASE64
 	bool "include blob encode/decode support"
 
 endmenu
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
