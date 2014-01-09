Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1Jl9-0004dp-0p
 for barebox@lists.infradead.org; Thu, 09 Jan 2014 17:51:12 +0000
Received: by mail-la0-f45.google.com with SMTP id b8so699405lan.32
 for <barebox@lists.infradead.org>; Thu, 09 Jan 2014 09:50:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  9 Jan 2014 21:58:38 +0400
Message-Id: <1389290319-28518-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] gpiolib: gpio_free: clear gpio's "label" field too
To: barebox@lists.infradead.org

If an error occured during gpio_request_array() then we can
get not requested gpio with nonempty garbage "label" field
value. Afterward the "gpiolib" command can try to use this
nonempty garbage value.

This patch prevents this error situation.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpiolib.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index b7430b0..5f13d5f 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -94,6 +94,7 @@ void gpio_free(unsigned gpio)
 
 	gi->requested = false;
 	free(gi->label);
+	gi->label = NULL;
 }
 
 /**
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
