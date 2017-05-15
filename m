Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:4065::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAJa4-000387-OV
 for barebox@lists.infradead.org; Mon, 15 May 2017 17:14:52 +0000
Received: from port-92-204-74-254.dynamic.qsc.de ([92.204.74.254]
 helo=localhost.localdomain)
 by stcim.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA256:128)
 (Exim 4.84_2) (envelope-from <contact@stefanchrist.eu>)
 id 1dAJZf-0004hT-M9
 for barebox@lists.infradead.org; Mon, 15 May 2017 19:14:23 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Date: Mon, 15 May 2017 19:14:18 +0200
Message-Id: <20170515171422.1648-1-contact@stefanchrist.eu>
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
Subject: [PATCH 1/5] images: clean *.imx-sram-img files
To: barebox@lists.infradead.org

The command

    make ARCH=arm clean

should also clean the *.imx-sram-img files.

Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 images/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index adf950a..c5024f1 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -145,5 +145,5 @@ $(flash-list): $(image-y-path)
 clean-files := *.pbl *.pblb *.pblx *.map start_*.imximg *.img barebox.z start_*.kwbimg \
 	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
 	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
-	start_*.simximg start_*.usimximg
+	start_*.simximg start_*.usimximg *.imx-sram-img
 clean-files += pbl.lds
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
