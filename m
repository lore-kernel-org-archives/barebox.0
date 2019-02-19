Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw2Gn-000363-V9
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 10:04:59 +0000
Date: Tue, 19 Feb 2019 11:04:53 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190219100453.GB31091@ravnborg.org>
References: <171ac237-ef8f-502b-1433-83382d050ba1@pengutronix.de>
 <20190219075239.12448-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190219075239.12448-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] fixup! clk: at91: update to PMC bindings
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Tue, Feb 19, 2019 at 08:52:39AM +0100, Ahmad Fatoum wrote:
> As the sama5d3 based microchip-ksz9477-evb board still uses the old
> bindings, the dt-compat.c code is ported as well. This can be removed
> when all in-kernel at91 boards have been ported to the new bindings.

Thanks.
I see we need this for now.
I hope someone we get around and add support for new clock bindings to sama5d3 soon.

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/clk/at91/Makefile    |   2 +-
>  drivers/clk/at91/dt-compat.c | 961 +++++++++++++++++++++++++++++++++++
>  2 files changed, 962 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/at91/dt-compat.c
> 
> diff --git a/drivers/clk/at91/Makefile b/drivers/clk/at91/Makefile
> index ec41c15fa5f4..f8935129101c 100644
> --- a/drivers/clk/at91/Makefile
> +++ b/drivers/clk/at91/Makefile
> @@ -2,7 +2,7 @@
>  # Makefile for at91 specific clk
>  #
>  
> -obj-y += pmc.o sckc.o
> +obj-y += pmc.o sckc.o dt-compat.o
To avoid increasing the image size further we could introduce a SOC_SAMA5D3
and let this .o file depends on this.
?

I can fix it while applying if you agree.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
