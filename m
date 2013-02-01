Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f180.google.com ([209.85.217.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1L44-0002Te-MO
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:10:21 +0000
Received: by mail-lb0-f180.google.com with SMTP id q12so4768704lbc.39
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2013 10:10:13 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 22:22:21 +0400
Message-Id: <1359742941-30516-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
References: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 4/4] animeo_ip: use gpio_request_input()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/boards/animeo_ip/init.c |   15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index ada3bb0..a5062f1 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -33,20 +33,9 @@ static int animeo_ip_get_pio_revision(int gpio, char *name)
 {
 	int ret;
 
-	ret = gpio_request(gpio, name);
-	if (ret) {
-		pr_err("animeo_ip: can not request gpio %d as %s (%d)\n",
-			gpio, name, ret);
+	ret = gpio_request_input(gpio, name);
+	if (ret)
 		return ret;
-	}
-
-	ret = gpio_direction_input(gpio);
-
-	if (ret) {
-		pr_err("animeo_ip: can configure gpio %d (%s) as input (%d)\n",
-			gpio, name, ret);
-		return ret;
-	}
 
 	return gpio_get_value(gpio);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
