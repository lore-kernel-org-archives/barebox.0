Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIGq8-0003c9-85
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 10:01:21 +0000
Date: Thu, 12 Apr 2012 12:01:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120412100109.GV3852@pengutronix.de>
References: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334122954-19623-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: add Android boot image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Magnus Damm <magnus.damm@gmail.com>

On Wed, Apr 11, 2012 at 07:42:34AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> The Android Image contains 3 components and params
> 
>  - kernel
>  - initrd
>  - second stage (optional)
> 
>  - tags addr
>  - bootargs
> 
> In fast boot the initrd is mandatory, in barebox we are less restrictive
> use the initrd only if present
> 
> add to env params:
> image_noverwrite_bootargs
> 	Disable overwrite of the bootargs with the one present in aimage
> 
> aimage_noverwrite_tags
> 	Disable overwrite of the tags addr with the one present in aimage
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Cc: Magnus Damm <magnus.damm@gmail.com>
> ---
>  arch/arm/lib/bootm.c |  147 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  commands/Kconfig     |    7 +++
>  include/aimage.h     |   74 +++++++++++++++++++++++++
>  3 files changed, 228 insertions(+), 0 deletions(-)
>  create mode 100644 include/aimage.h
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c

Can we have this in a seperate file? You made Android support optional
already and support is only registered when the option is enabled, but
the code is compiled even without the option.

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
