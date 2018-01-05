Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXOHd-00054O-TV
 for barebox@lists.infradead.org; Fri, 05 Jan 2018 09:27:27 +0000
Date: Fri, 5 Jan 2018 10:27:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180105092713.hksre2e3llfybxpi@pengutronix.de>
References: <20171231083407.GA16645@ravnborg.org>
 <20180101141939.20606-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180101141939.20606-1-sam@ravnborg.org>
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
Subject: Re: [PATCH 17/25] sama5d{3, 4}{xek, xplained}: move reset vector to
 board code
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 01, 2018 at 03:19:31PM +0100, Sam Ravnborg wrote:
> Include deletion of now unused sama5d3_lowlevel_init.c
> and related CONFIG symbols
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  arch/arm/boards/sama5d3_xplained/Makefile          |  1 +
>  .../sama5d3_xplained/lowlevel.c}                   | 10 ++++------
>  arch/arm/boards/sama5d3xek/Makefile                |  1 +
>  arch/arm/boards/sama5d3xek/lowlevel.c              | 23 ++++++++++++++++++++++
>  arch/arm/boards/sama5d4_xplained/Makefile          |  1 +
>  arch/arm/boards/sama5d4_xplained/lowlevel.c        | 23 ++++++++++++++++++++++
>  arch/arm/boards/sama5d4ek/Makefile                 |  1 +
>  arch/arm/boards/sama5d4ek/lowlevel.c               | 23 ++++++++++++++++++++++
>  arch/arm/mach-at91/Kconfig                         |  8 --------
>  arch/arm/mach-at91/Makefile                        |  2 --
>  10 files changed, 77 insertions(+), 16 deletions(-)
>  rename arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/sama5d3_xplained/lowlevel.c} (86%)
>  create mode 100644 arch/arm/boards/sama5d3xek/lowlevel.c
>  create mode 100644 arch/arm/boards/sama5d4_xplained/lowlevel.c
>  create mode 100644 arch/arm/boards/sama5d4ek/lowlevel.c
> 
> diff --git a/arch/arm/boards/sama5d3_xplained/Makefile b/arch/arm/boards/sama5d3_xplained/Makefile
> index 3c301cb0c..fc6d83be8 100644
> --- a/arch/arm/boards/sama5d3_xplained/Makefile
> +++ b/arch/arm/boards/sama5d3_xplained/Makefile
> @@ -1,2 +1,3 @@
>  obj-y += init.o
> +lwl-y += lowlevel.o
>  bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3_xplained
> diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/boards/sama5d3_xplained/lowlevel.c
> similarity index 86%
> rename from arch/arm/mach-at91/sama5d3_lowlevel_init.c
> rename to arch/arm/boards/sama5d3_xplained/lowlevel.c
> index 01d28514d..161b473a7 100644
> --- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
> +++ b/arch/arm/boards/sama5d3_xplained/lowlevel.c
> @@ -4,16 +4,14 @@
>   * Under GPLv2
>    */

There is a whitespace too much here and in the other hunks of this
patch.

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
