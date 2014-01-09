Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Jl9-0004du-AL
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 17:51:12 +0000
Received: by mail-lb0-f179.google.com with SMTP id w7so2531131lbi.24
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 09:50:49 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2014 21:58:39 +0400
Message-Id: <1389290319-28518-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1389290319-28518-1-git-send-email-antonynpavlov@gmail.com>
References: <1389290319-28518-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] gpiolib: gpiolib command: show label only for requested
 pins
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpiolib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index 5f13d5f..193c36c 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -334,7 +334,7 @@ static int do_gpiolib(int argc, char *argv[])
 			3, (dir < 0) ? "unk" : ((dir == GPIOF_DIR_IN) ? "in" : "out"),
 			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
 			9, gi->requested ? "true" : "false",
-			gi->label ? gi->label : "");
+			(gi->requested && gi->label) ? gi->label : "");
 	}
 
 	return 0;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
