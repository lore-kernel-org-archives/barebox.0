Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x230.google.com ([2a00:1450:4010:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X24rh-00021p-CW
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 20:41:21 +0000
Received: by mail-la0-f48.google.com with SMTP id el20so6237279lab.21
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 13:40:58 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Jul 2014 00:40:50 +0400
Message-Id: <1404247250-11605-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] [FOR AMMEND] Documentation: loongson_ls1b: document RS232
 speed
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/loongson_ls1b.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/mips/loongson_ls1b.rst b/Documentation/boards/mips/loongson_ls1b.rst
index a833a86..8f475e6 100644
--- a/Documentation/boards/mips/loongson_ls1b.rst
+++ b/Documentation/boards/mips/loongson_ls1b.rst
@@ -24,7 +24,7 @@ The board uses PMON2000 as bootloader.
 Running barebox
 ---------------
 
-  1. Connect to the boards's UART2;
+  1. Connect to the boards's UART2 (115200 8N1);
 
   2. Turn board's power on;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
