Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJNHR-0006zn-R9
 for barebox@lists.infradead.org; Wed, 03 Oct 2012 11:38:23 +0000
Received: from mail440.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A11DEFF9420
 for <barebox@lists.infradead.org>; Wed,  3 Oct 2012 13:47:21 +0200 (CEST)
Date: Wed, 3 Oct 2012 13:35:50 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121003113550.GD26553@game.jcrosoft.org>
References: <1349259879-32523-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349259879-32523-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM pbl: Make usage of MMU in pbl optional
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:24 Wed 03 Oct     , Sascha Hauer wrote:
> Since this currently does not work on all boards make usage
> of the MMU in the pbl optional until this has been resolved.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/start-pbl.c |    2 +-
>  common/Kconfig           |    5 +++++
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
> index 932a3da..ceb60ab 100644
> --- a/arch/arm/cpu/start-pbl.c
> +++ b/arch/arm/cpu/start-pbl.c
> @@ -116,7 +116,7 @@ static void mmu_disable(void)
>  static void barebox_uncompress(void *compressed_start, unsigned int len)
>  {
>  	void (*barebox)(void);
> -	int use_mmu = IS_ENABLED(CONFIG_MMU);
> +	int use_mmu = IS_ENABLED(CONFIG_PBL_USE_MMU);
>  
>  	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
>  	free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K;
> diff --git a/common/Kconfig b/common/Kconfig
> index b97392c..7e4cf1f 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -139,6 +139,11 @@ config IMAGE_COMPRESSION_GZIP
>  
>  endchoice
>  
> +config PBL_USE_MMU
> +	bool "Use MMU in PBL image"
default y if MMU

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
