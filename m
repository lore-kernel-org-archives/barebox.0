Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([2a01:4f8:120:4065::2])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAJa4-000384-O2
 for barebox@lists.infradead.org; Mon, 15 May 2017 17:14:50 +0000
Received: from port-92-204-74-254.dynamic.qsc.de ([92.204.74.254]
 helo=localhost.localdomain)
 by stcim.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_CBC_SHA256:128)
 (Exim 4.84_2) (envelope-from <contact@stefanchrist.eu>)
 id 1dAJZf-0004hT-Tf
 for barebox@lists.infradead.org; Mon, 15 May 2017 19:14:24 +0200
From: Stefan Lengfeld <contact@stefanchrist.eu>
Date: Mon, 15 May 2017 19:14:19 +0200
Message-Id: <20170515171422.1648-2-contact@stefanchrist.eu>
In-Reply-To: <20170515171422.1648-1-contact@stefanchrist.eu>
References: <20170515171422.1648-1-contact@stefanchrist.eu>
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
Subject: [PATCH 2/5] imx-usb-loader: add prefix '0x' for hex value
To: barebox@lists.infradead.org

Signed-off-by: Stefan Lengfeld <contact@stefanchrist.eu>
---
 scripts/imx/imx-usb-loader.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/imx/imx-usb-loader.c b/scripts/imx/imx-usb-loader.c
index 90ee3e0..1119e61 100644
--- a/scripts/imx/imx-usb-loader.c
+++ b/scripts/imx/imx-usb-loader.c
@@ -1404,7 +1404,7 @@ static int do_irom_download(struct usb_work *curr, int verify)
 		}
 	}
 
-	printf("loading binary file(%s) to %08x, skip=0x%x, fsize=%u type=%d...\n",
+	printf("loading binary file(%s) to 0x%08x, skip=0x%x, fsize=%u type=%d...\n",
 			curr->filename, dladdr, skip, fsize, type);
 
 	ret = load_file(image, fsize, dladdr, type);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
