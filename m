Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q2Jip-00056V-SV
	for barebox@lists.infradead.org; Wed, 23 Mar 2011 08:47:20 +0000
Date: Wed, 23 Mar 2011 09:47:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110323084716.GC29521@pengutronix.de>
References: <1300777028-8178-1-git-send-email-jon@ringle.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1300777028-8178-1-git-send-email-jon@ringle.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] defaultenv: fix empty CONFIG_DEFAULT_ENVIRONMENT_PATH
To: Jon Ringle <jon@ringle.org>
Cc: barebox@lists.infradead.org

Hi Jon,

On Tue, Mar 22, 2011 at 02:57:08AM -0400, Jon Ringle wrote:
> if CONFIG_DEFAULT_ENVIRONMENT_PATH="" then
> $(DEFAULT_ENVIRONMENT_PATH) expands to 'defaultenv "" '
> The "" would cause every single file found in $(srctree) to be included in
> $(ENV_FILES). This would then cause scripts/mod/sumversions.c to get
> recompiled using $(CC) and fail compilation if $(CC) points to a newlib
> cross compiler

Indeed an annoying bug. Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
