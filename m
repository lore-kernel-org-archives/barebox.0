Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNMpL-0000qZ-6C
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 18:57:20 +0000
Received: by mail-pl1-x644.google.com with SMTP id f12-v6so9920944plo.1
 for <barebox@lists.infradead.org>; Thu, 15 Nov 2018 10:57:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 15 Nov 2018 10:56:58 -0800
Message-Id: <20181115185700.24823-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] aiodev: mc13xxx: Mark mc13xxx_adc_do_conversion() static
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Mark mc13xxx_adc_do_conversion() static because it is not used outside
the source file.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/aiodev/mc13xxx_adc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/aiodev/mc13xxx_adc.c b/drivers/aiodev/mc13xxx_adc.c
index 4e7204816..d445d1ec6 100644
--- a/drivers/aiodev/mc13xxx_adc.c
+++ b/drivers/aiodev/mc13xxx_adc.c
@@ -75,8 +75,9 @@ to_mc13xx_adc_data(struct aiochannel *chan)
 	return container_of(chan->aiodev, struct mc13xx_adc_data, aiodev);
 }
 
-int mc13xxx_adc_do_conversion(struct mc13xxx *mc13xxx,
-		unsigned int channel, unsigned int *sample)
+static int mc13xxx_adc_do_conversion(struct mc13xxx *mc13xxx,
+				     unsigned int channel,
+				     unsigned int *sample)
 {
 	int i;
 	int timeout = 100;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
