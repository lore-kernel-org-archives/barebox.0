Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHVh3-0001iS-Qi
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 07:40:51 +0000
Date: Tue, 10 Apr 2012 09:40:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410074033.GN3852@pengutronix.de>
References: <1333902931-20312-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333902931-20312-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] PCM-038: fix SRAM device name
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 08, 2012 at 08:35:31PM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/pcm038/pcm038.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
> index 86bc721..b6f4b01 100644
> --- a/arch/arm/boards/pcm038/pcm038.c
> +++ b/arch/arm/boards/pcm038/pcm038.c
> @@ -135,7 +135,7 @@ static int pcm038_mem_init(void)
>  {
>  	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
>  
> -	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
> +	add_mem_device("ram1", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
>  				   IORESOURCE_MEM_WRITEABLE);
>  	return 0;
>  }
> -- 
> 1.7.3.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
