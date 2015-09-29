Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgosY-0004CI-Fq
 for barebox@lists.infradead.org; Tue, 29 Sep 2015 06:59:11 +0000
Date: Tue, 29 Sep 2015 08:58:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150929065847.GO7858@pengutronix.de>
References: <1443247338-29171-1-git-send-email-andrew.smirnov@gmail.com>
 <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1443247338-29171-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 2/2] arm/cpu/start.c: Avoid copying device-tree when
 possible
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

On Fri, Sep 25, 2015 at 11:02:18PM -0700, Andrey Smirnov wrote:
> In case of non-relocatable image device-tree blob should already be
> preloaded into memory as a part of Barebox binary upload, so there is
> no need to 'memcpy' it again
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/cpu/start.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index 7ffde7c..c461a73 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -107,6 +107,15 @@ static noinline __noreturn void __start(unsigned long membase,
> 
>  		switch (get_any_boarddata_magic(boarddata)) {
>  		case FDT_MAGIC:
> +			if (!IS_ENABLED(CONFIG_RELOCATABLE)) {
> +				/*
> +				  If Barebox is not relocatable
> +				  there's no need to move data around
> +				 */
> +				barebox_boot_dtb = boarddata;
> +				break;
> +			}
> +

At this place it is unknown where in memory the fdt is. It could well be
somewhere in the malloc area space, so we need to move it to a safe
place before we setup malloc in the next step.

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
