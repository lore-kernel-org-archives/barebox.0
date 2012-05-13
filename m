Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STUrP-0001Wo-7f
 for barebox@lists.infradead.org; Sun, 13 May 2012 09:13:03 +0000
Date: Sun, 13 May 2012 11:13:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120513091300.GY27341@pengutronix.de>
References: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1336887485-11941-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 1/4] PCM038: Update board description
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, May 13, 2012 at 09:38:02AM +0400, Alexander Shiyan wrote:
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/pcm038/pcm038.dox |    5 +++--
>  1 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm038/pcm038.dox b/arch/arm/boards/pcm038/pcm038.dox
> index 9b17674..85177d2 100644
> --- a/arch/arm/boards/pcm038/pcm038.dox
> +++ b/arch/arm/boards/pcm038/pcm038.dox
> @@ -2,7 +2,8 @@
>  
>  This CPU card is based on a Freescale i.MX27 CPU. The card is shipped with:
>  
> -- up to 32MiB NOR type Flash Memory
> -- 32MiB synchronous dynamic RAM
> +- up to 64MB NOR Flash Memory
> +- up to 1GB NAND Flash Memory
> +- up to 256MB DRAM
>  
>  */
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
