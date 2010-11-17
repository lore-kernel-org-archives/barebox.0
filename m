Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PIihl-0004nb-T4
	for barebox@lists.infradead.org; Wed, 17 Nov 2010 14:09:48 +0000
Date: Wed, 17 Nov 2010 16:09:22 +0200
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20101117140922.GF26928@jasper.tkos.co.il>
References: <20101112180228.GC13661@game.jcrosoft.org>
	<1290002365-22712-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1290002365-22712-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] mem: convert to DEVFS_MEM_BAREBOX_ONLY for
	freescale-mx25-3-stack/pcm037/pvm038
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Wed, Nov 17, 2010 at 02:59:25PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/freescale-mx25-3-stack/3stack.c |   35 ++++++++---------------
>  arch/arm/boards/pcm037/pcm037.c                 |   33 +++++++--------------
>  arch/arm/boards/pcm038/pcm038.c                 |   23 ++++-----------
>  3 files changed, 29 insertions(+), 62 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> index cb9ce79..434bd7f 100644
> --- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
> @@ -113,8 +113,14 @@ static struct fec_platform_data fec_info = {
>  	.phy_addr	= 1,
>  };
>  
> -static struct resource sdram0_dev_resources[] = {
> +static struct resource sdram_dev_resources[] = {

I guess mem_dev_resources or ram_dev_resources are better names for this 
struct now, since the "sram0" is not SDRAM.

>  	[0] = {
> +		.name	= "sram0",
> +		.start	= 0x78000000,
> +		.size	= 128 * 1024,
> +		.flags	= DEVFS_RDWR | DEVFS_MEM_BAREBOX_ONLY,
> +	},
> +	[1] = {
>  		.name	= "ram0",
>  		.start	= IMX_SDRAM_CS0,
>  #if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2

[snip]

baruch

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
