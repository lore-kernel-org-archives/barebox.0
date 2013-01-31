Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U11mD-0006EW-Ul
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 21:34:34 +0000
Received: by mail-lb0-f176.google.com with SMTP id s4so3823104lbc.21
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 13:34:29 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 01:46:36 +0400
Message-Id: <1359668796-22835-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
References: <1359668796-22835-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/5] animeo_ip: use gpio_request_input()
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
