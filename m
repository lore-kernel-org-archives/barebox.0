Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YpArq-0007cq-Lt
 for barebox@lists.infradead.org; Mon, 04 May 2015 07:32:43 +0000
Date: Mon, 4 May 2015 09:32:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150504073219.GO6325@pengutronix.de>
References: <1430217147-14188-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1430217147-14188-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH] common: env: make error message more verbose
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Apr 28, 2015 at 12:32:27PM +0200, Steffen Trumtrar wrote:
> Change the setenv error message from
> 
> 	set parameter: Invalid argument
> 
> to a more helpful
> 
> 	net: cannot set parameter 'nameserver': Invalid argument
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  common/env.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/common/env.c b/common/env.c
> index 2e33eb35856b..434170a7468b 100644
> --- a/common/env.c
> +++ b/common/env.c
> @@ -225,8 +225,10 @@ int setenv(const char *_name, const char *value)
>  
>  		errno = -ret;
>  
> -		if (ret < 0)
> -			perror("set parameter");
> +		if (ret < 0) {
> +			dev_err(dev, "cannot set parameter '%s'", par);
> +			perror("");
> +		}

dev may be invalid here, so you shouldn't use dev_err.

After we talked about the missing informations in the setenv failure
path I created the following patch. I applied this one now.

Sascha

------------------------8<---------------------------

From 6d4afd96fc94a3f2d256ef4e8d7c9687a145a701 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Apr 2015 12:43:02 +0200
Subject: [PATCH] setenv: Be more informative when device parameter setting
 fails

When setting a device parameter fails not only the error code
is of interest, but also what the parameter name is, what the
device name is and whether a device was found for this name.
Add this information to the error message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/common/env.c b/common/env.c
index 2e33eb3..c98ed73 100644
--- a/common/env.c
+++ b/common/env.c
@@ -218,16 +218,18 @@ int setenv(const char *_name, const char *value)
 
 		*par++ = 0;
 		dev = get_device_by_name(name);
-		if (dev)
+		if (dev) {
 			ret = dev_set_param(dev, par, value);
-		else
+			if (ret)
+				eprintf("%s: set parameter %s: %s\n",
+						dev_name(dev), par, strerror(-ret));
+		} else {
 			ret = -ENODEV;
+			eprintf("set parameter: no such device %s\n", name);
+		}
 
 		errno = -ret;
 
-		if (ret < 0)
-			perror("set parameter");
-
 		goto out;
 	}
 
-- 
2.1.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
