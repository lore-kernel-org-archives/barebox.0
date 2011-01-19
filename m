Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PfS7k-0004Td-Ul
	for barebox@lists.infradead.org; Wed, 19 Jan 2011 07:06:33 +0000
Date: Wed, 19 Jan 2011 08:05:29 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110119070529.GY14798@game.jcrosoft.org>
References: <1295363506-1794-1-git-send-email-plagnioj@jcrosoft.com>
	<874o96gda9.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <874o96gda9.fsf@macbook.be.48ers.dk>
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
Subject: Re: [PATCH] at91sam9g45: fix ARCH_TEXT_BASE
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: barebox@lists.infradead.org

On 21:36 Tue 18 Jan     , Peter Korsgaard wrote:
> >>>>> "Jean-Christophe" == Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> writes:
> 
>  Jean-Christophe> it's 0x73f00000 not 0x23f00000 as the other at91
>  Jean-Christophe> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>  Jean-Christophe> ---
>  Jean-Christophe>  arch/arm/mach-at91/Kconfig |    1 +
>  Jean-Christophe>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
>  Jean-Christophe> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
>  Jean-Christophe> index 4d35ebe..efaa256 100644
>  Jean-Christophe> --- a/arch/arm/mach-at91/Kconfig
>  Jean-Christophe> +++ b/arch/arm/mach-at91/Kconfig
>  Jean-Christophe> @@ -2,6 +2,7 @@ if ARCH_AT91
>  
>  Jean-Christophe>  config ARCH_TEXT_BASE
>  Jean-Christophe>  	hex
>  Jean-Christophe> +	default 0x73f00000 if ARCH_AT91SAM9G45
>  Jean-Christophe>  	default 0x23f00000
> 
> It can be 0x2xxxxxxx if the 2nd DDR controller is used.
> 
> I don't know the code, but how does this this work on boards with less
> than 64MB RAM?
the soc start on 0x7xxxxxxx so we use it
if your board is less DRR you have to adjust it

today we do not detect the ddr size but we may later

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
