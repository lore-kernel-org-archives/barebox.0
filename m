Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x244.google.com ([2607:f8b0:400e:c01::244])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQuYF-0006JQ-N5
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 13:02:04 +0000
Received: by mail-pl0-x244.google.com with SMTP id n10-v6so6110953plp.0
 for <barebox@lists.infradead.org>; Thu, 07 Jun 2018 06:01:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  7 Jun 2018 06:00:43 -0700
Message-Id: <20180607130108.5339-28-andrew.smirnov@gmail.com>
In-Reply-To: <20180607130108.5339-1-andrew.smirnov@gmail.com>
References: <20180607130108.5339-1-andrew.smirnov@gmail.com>
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
Subject: [RESEND v3 27/52] Documentation: imx: Change block size for 'dd' to
 1024
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Real image starts at offset 0x400 (1024), so we can skip copying extra
512 bytes of zeros.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Documentation/boards/imx.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
index 343643cd7..8de2bd5c5 100644
--- a/Documentation/boards/imx.rst
+++ b/Documentation/boards/imx.rst
@@ -42,7 +42,7 @@ The above will overwrite the MBR (and consequently the partition table)
 on the destination SD card. To preserve the MBR while writing the rest
 of the image to the card, use::
 
-  dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=512 skip=1 seek=1
+  dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
 
 The images can also always be started second stage::
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
