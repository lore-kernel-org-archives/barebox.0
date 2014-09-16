Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XTrfl-0007hp-PD
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 12:15:54 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Tue, 16 Sep 2014 14:15:11 +0200
Message-Id: <0d3183ff039cb1eccb72299690544cb34299bf4e.1410868272.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1410868272.git.silvio.fricke@gmail.com>
References: <cover.1410868272.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1410868272.git.silvio.fricke@gmail.com>
References: <cover.1410868272.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] gpiolib: gpio_request: correct return code of a already
 requested gpio
To: barebox@lists.infradead.org
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 drivers/gpio/gpiolib.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 611e41e..3370438 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -55,10 +55,8 @@ int gpio_request(unsigned gpio, const char *label)
 		goto done;
 	}
 
-	if (gi->requested) {
-		ret = -EBUSY;
-		goto done;
-	}
+	if (gi->requested)
+		return 0;
 
 	ret = 0;
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
