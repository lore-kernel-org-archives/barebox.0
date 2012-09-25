Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGQCp-00041J-QA
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 08:09:26 +0000
Date: Tue, 25 Sep 2012 10:09:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120925080922.GG24458@pengutronix.de>
References: <20120922175346.GX26553@game.jcrosoft.org>
 <1348338408-26737-1-git-send-email-plagnioj@jcrosoft.com>
 <1348338408-26737-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1348338408-26737-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 5/5] at91sam9m10g45ek: add lcdc support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 22, 2012 at 08:26:48PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> Acked-by: Nicolas Ferre <nicolas.ferre@atmel.com>
> ---
>  .../arm/boards/at91sam9m10g45ek/env/bin/boot_board |    7 +++++
>  arch/arm/boards/at91sam9m10g45ek/env/splash.png    |  Bin 0 -> 22747 bytes
>  arch/arm/boards/at91sam9m10g45ek/init.c            |   33 ++++++++++++++++++++
>  arch/arm/configs/at91sam9m10g45ek_defconfig        |   11 +++++--
>  4 files changed, 48 insertions(+), 3 deletions(-)
>  create mode 100644 arch/arm/boards/at91sam9m10g45ek/env/splash.png
> 
> diff --git a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
> index 3d7426f..eeb7a76 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
> +++ b/arch/arm/boards/at91sam9m10g45ek/env/bin/boot_board
> @@ -5,6 +5,13 @@ export PATH
>  
>  . /env/config
>  
> +splash=/env/splash.png
> +
> +if [ -f ${splash} ]; then
> +	splash ${splash}
> +	fb0.enable=1
> +fi
> +
>  menu -r -m boot
>  menu -a -m boot -d "\e[1;36mWelcome on Barebox Boot Sequence\e[0m"
>  menu -e -a -m boot -c 'menu_boot'			-d "boot (default)             "
> diff --git a/arch/arm/boards/at91sam9m10g45ek/env/splash.png b/arch/arm/boards/at91sam9m10g45ek/env/splash.png

I understand your desire to show a logo on the screen, but we really
need a storage outside the main repository for this. I'm perfectly fine
with showing full HD 3d pictures on the screen if your hardware can do
so, but we should not put this into the repository.

We should solve this right now, then we are free to add huge logos, add
different logo for each board, update logos for christmas, summer,
Helloween...

How about adding some wget mechanism which:

- Only downloads the logos if allowed in the config
- Does not download logos if a logo directory already exists

I'm sure we could create some storage here.

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
