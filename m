Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCQkL-00080Y-VJ
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 08:27:46 +0000
Date: Mon, 4 Mar 2013 09:27:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130304082744.GD1906@pengutronix.de>
References: <1361537054-4251-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361537054-4251-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [For-next PATCH 1/1] switch more boards to lwl-y
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 22, 2013 at 01:44:14PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/freescale-mx6-sabresd/Makefile |    7 +++----
>  arch/arm/boards/highbank/Makefile              |    3 +--
>  arch/arm/boards/vexpress/Makefile              |    3 +--
>  arch/arm/mach-clps711x/Makefile                |    4 ++--
>  4 files changed, 7 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx6-sabresd/Makefile b/arch/arm/boards/freescale-mx6-sabresd/Makefile
> index 21fb7d9..d44f697 100644
> --- a/arch/arm/boards/freescale-mx6-sabresd/Makefile
> +++ b/arch/arm/boards/freescale-mx6-sabresd/Makefile
> @@ -1,4 +1,3 @@
> -obj-y += board.o flash_header.o
> -pbl-y += flash_header.o
> -obj-y += lowlevel.o
> -pbl-y += lowlevel.o
> +obj-y += board.o
> +lwl-y += flash_header.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/highbank/Makefile b/arch/arm/boards/highbank/Makefile
> index 98921a4..e11fd5b 100644
> --- a/arch/arm/boards/highbank/Makefile
> +++ b/arch/arm/boards/highbank/Makefile
> @@ -1,4 +1,3 @@
>  obj-y += init.o
>  
> -obj-y += lowlevel.o
> -pbl-y += lowlevel.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/vexpress/Makefile b/arch/arm/boards/vexpress/Makefile
> index 98921a4..e11fd5b 100644
> --- a/arch/arm/boards/vexpress/Makefile
> +++ b/arch/arm/boards/vexpress/Makefile
> @@ -1,4 +1,3 @@
>  obj-y += init.o
>  
> -obj-y += lowlevel.o
> -pbl-y += lowlevel.o
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/mach-clps711x/Makefile b/arch/arm/mach-clps711x/Makefile
> index 69a4a3c..4552534 100644
> --- a/arch/arm/mach-clps711x/Makefile
> +++ b/arch/arm/mach-clps711x/Makefile
> @@ -1,2 +1,2 @@
> -obj-y += clock.o devices.o lowlevel.o reset.o
> -pbl-y += lowlevel.o
> +obj-y += clock.o devices.o reset.o
> +lwl-y += lowlevel.o
> -- 
> 1.7.10.4
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
