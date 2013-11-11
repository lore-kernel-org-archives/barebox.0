Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VfmtL-000883-Ak
 for barebox@lists.infradead.org; Mon, 11 Nov 2013 08:30:39 +0000
Date: Mon, 11 Nov 2013 09:30:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131111083017.GE24559@pengutronix.de>
References: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1384003461-21039-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 0/5] OF: probe clock providers from DT
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi Sebastian,

On Sat, Nov 09, 2013 at 02:24:16PM +0100, Sebastian Hesselbarth wrote:
> This patch set brings automatic probing of DT clock providers to ARM
> barebox, similar to what we have in Linux kernel.
> 
> First, a new macro BAREBOX_CLK_TABLE for generic linker scripts is added,
> that will take all declared DT clock providers. That macro is then added
> to the ARM linker script.
> 
> Then, barebox compatible versions of of_clk_init and CLK_OF_DECLARE are
> added, that allow to parse and probe declared clock providers. The of_clk_init
> call is then put right after of_platform_populate in of_probe.
> 
> Finally, clk/fixed is declared as such a clock provider and can now be probed
> automatially for DT enabled ARM platforms.
> 
> Sebastian Hesselbarth (5):
>   asm-generic: add macro for BAREBOX_CLK_TABLE
>   ARM: lib: add BAREBOX_CLK_TABLE to linker script
>   clk: add of_clk_init and CLK_OF_DECLARE macro
>   OF: parse OF clock providers after populate
>   clk: fixed: add DT init function

I gave this a test on i.MX by adding an additional dummy clk to my dts
and it works as expected. Patches look good, so:

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
