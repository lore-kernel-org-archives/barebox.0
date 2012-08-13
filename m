Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0zdR-00061D-7b
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 18:45:05 +0000
Date: Mon, 13 Aug 2012 20:45:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120813184503.GQ1451@pengutronix.de>
References: <1344841635-12926-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344841635-12926-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] bootm: add global bootm.{image/initrd}.loadaddr
 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Aug 13, 2012 at 09:07:15AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> To be able to pass the loadaddr of the image and the initrd.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/bootm.c |   24 +++++++++++++++++++++---
>  1 file changed, 21 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/bootm.c b/commands/bootm.c
> index 5f858e8..331e777 100644
> --- a/commands/bootm.c
> +++ b/commands/bootm.c
>  
>  BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
> -BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");

The above line is correct...

> +BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image, "bootm default boot image");
> +BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image.loadaddr, "bootm default boot image loadaadr");

and mixed up here.

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
