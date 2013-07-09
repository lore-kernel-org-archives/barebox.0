Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwRjW-0007mV-97
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 06:49:07 +0000
Date: Tue, 9 Jul 2013 08:48:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130709064841.GL516@pengutronix.de>
References: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
 <1373200037-4008-3-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1373200037-4008-3-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 3/3] common: console: Fix possible null pointer dereference
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Jul 07, 2013 at 04:27:17PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  common/console.c | 30 +++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/common/console.c b/common/console.c
> index a0a06f6..fc7b9ba 100644
> --- a/common/console.c
> +++ b/common/console.c
> @@ -62,23 +62,23 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
>  	char active[4];
>  	unsigned int flag = 0, i = 0;
>  
> -	if (!val)
> -		dev_param_set_generic(dev, param, NULL);
> -
> -	if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
> -		active[i++] = 'i';
> -		flag |= CONSOLE_STDIN;
> -	}
> +	if (val) {
> +		if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
> +			active[i++] = 'i';
> +			flag |= CONSOLE_STDIN;
> +		}
>  
> -	if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
> -		active[i++] = 'o';
> -		flag |= CONSOLE_STDOUT;
> -	}
> +		if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
> +			active[i++] = 'o';
> +			flag |= CONSOLE_STDOUT;
> +		}
>  
> -	if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
> -		active[i++] = 'e';
> -		flag |= CONSOLE_STDERR;
> -	}
> +		if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
> +			active[i++] = 'e';
> +			flag |= CONSOLE_STDERR;
> +		}
> +	} else
> +		dev_param_set_generic(dev, param, NULL);

This is not necessary. dev_param_set_generic is called afterwards again.
Indeed it was very easy to crash barebox by doing a 'cs0.active='. I
changed the patch to the following and applied this series.

Thanks
 Sascha

8<------------------------------------------------

From 4ccf45db0a5f27b998a5dc7560bfb7a228bf5e96 Mon Sep 17 00:00:00 2001
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 7 Jul 2013 16:27:17 +0400
Subject: [PATCH] common: console: Fix possible null pointer dereference

doing a 'cs0.active=' on the command line crashed barebox. Fix this by
not dereferencing val when it's NULL.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/common/console.c b/common/console.c
index a0a06f6..8a4b224 100644
--- a/common/console.c
+++ b/common/console.c
@@ -62,22 +62,21 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	char active[4];
 	unsigned int flag = 0, i = 0;
 
-	if (!val)
-		dev_param_set_generic(dev, param, NULL);
-
-	if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
-		active[i++] = 'i';
-		flag |= CONSOLE_STDIN;
-	}
+	if (val) {
+		if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
+			active[i++] = 'i';
+			flag |= CONSOLE_STDIN;
+		}
 
-	if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
-		active[i++] = 'o';
-		flag |= CONSOLE_STDOUT;
-	}
+		if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
+			active[i++] = 'o';
+			flag |= CONSOLE_STDOUT;
+		}
 
-	if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
-		active[i++] = 'e';
-		flag |= CONSOLE_STDERR;
+		if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
+			active[i++] = 'e';
+			flag |= CONSOLE_STDERR;
+		}
 	}
 
 	active[i] = 0;
-- 
1.8.3.2

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
