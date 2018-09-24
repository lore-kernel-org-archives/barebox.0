Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4KrW-0002v9-6w
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 07:00:56 +0000
Date: Mon, 24 Sep 2018 09:00:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924070042.GF4097@pengutronix.de>
References: <20180921060102.16341-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180921060102.16341-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v3 0/8] i.MX8MQ EVK miscellanea
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 20, 2018 at 11:00:54PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This is a number of i.MX8MQ or EVK related changes that are sitting in
> my repo that I am hoping to upstream:
> 
>     - Pactches 1, 3, 4 are clock related fixes needed to get FEC,
>       USDHC1 and USDHC2 to work.
> 
>     - Patch 2 was made while working custom i.MX8MQ board (not
>       upstreamed yet) that made use of that controller
> 
>     - Patch 5 should be self-explanatory bug fix
> 
>     - Patch 6 is PHY configuration code need to use FEC on EVK
> 
>     - Patch 7 and 8 are both conveninece code to avoid having to
>       specify memory size explicitly as well as a second part of a fix
>       for a problem discussed in [1]
> 
> Changes since [v1]:
> 
>     - Removed redundant DT code in patch 6
> 
> Changes since [v2]:
> 
>     - Patch 7 re-written such that the code could also be re-used for
>       i.MX7 (will be submitted in a separate series)
> 
> [1] http://lists.infradead.org/pipermail/barebox/2018-August/034402.html
> [v1] http://lists.infradead.org/pipermail/barebox/2018-September/034742.html
> [v2] http://lists.infradead.org/pipermail/barebox/2018-September/034772.html
> 
> Andrey Smirnov (8):
>   clk: i.MX8MQ: Bump refcounters of various important clocks
>   ARM: i.MX8MQ: Add missing node for ECSPI1
>   ARM: i.MX8MQ: Configure USDHC1,2 clocks
>   ARM: i.MX8MQ: Configure FEC1 clocks
>   ARM: nxp-imx8mq-evk: Add missing compatibility check
>   ARM: nxp-imx8mq-evk: Add FEC's PHY configuration code
>   ARM: i.MX: esdctl: Add memory size detection for i.MX8MQ
>   ARM: nxp-imx8mq-evk: Make use of memory size detection code

Applied, thanks

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
