Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmlH5-00014Q-1M
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 11:30:42 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 88F30FFA6E0
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 13:31:26 +0200 (CEST)
Date: Fri, 29 Jul 2011 13:12:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729111258.GA25658@game.jcrosoft.org>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
	<1311932630-5687-8-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1311932630-5687-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 7/7] ARM boards: remove now unnecessary mmu calls
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:43 Fri 29 Jul     , Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/chumby_falconwing/falconwing.c    |    8 ---
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    8 ---
>  arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    8 ---
>  arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   13 +-----
>  arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   14 -----
>  arch/arm/boards/freescale-mx51-pdk/board.c        |    8 ---
>  arch/arm/boards/guf-cupid/board.c                 |   12 +----
>  arch/arm/boards/guf-neso/board.c                  |    8 ---
>  arch/arm/boards/karo-tx25/board.c                 |   10 ----
>  arch/arm/boards/karo-tx28/tx28.c                  |    8 ---
>  arch/arm/boards/panda/board.c                     |    6 --
>  arch/arm/boards/pcm037/pcm037.c                   |   13 +-----
>  arch/arm/boards/pcm038/pcm038.c                   |    8 ---
>  arch/arm/boards/pcm043/pcm043.c                   |   13 +-----
>  arch/arm/boards/pcm049/board.c                    |    7 ---
>  arch/arm/boards/phycard-i.MX27/pca100.c           |    8 ---
>  arch/arm/boards/scb9328/env/config                |   56 +++++++++++++++++++++
>  17 files changed, 60 insertions(+), 148 deletions(-)
>  create mode 100644 arch/arm/boards/scb9328/env/config
> 
> diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
> index 0c9c339..31efe5e 100644
> --- a/arch/arm/boards/chumby_falconwing/falconwing.c
> +++ b/arch/arm/boards/chumby_falconwing/falconwing.c
> @@ -282,16 +282,8 @@ static int falconwing_mmu_init(void)
>  				   IORESOURCE_MEM_WRITEABLE);
>  	armlinux_add_dram(sdram_dev);
>  
> -#ifdef CONFIG_MMU
>  	mmu_init();
how about call the mmu_init in a generic place?

so no need to have anything in board code for the MMU just to enable it via
Kconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
