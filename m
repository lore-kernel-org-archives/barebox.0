Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJZNn-0003HH-DU
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 07:33:13 +0000
Date: Mon, 5 Nov 2018 08:32:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181105073259.kz5bunbwfu7xtqlr@pengutronix.de>
References: <20181102090743.25128-1-s.hauer@pengutronix.de>
 <20181102233112.GA538@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181102233112.GA538@ravnborg.org>
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
Subject: Re: [PATCH] Add initial support for the EVB-KSZ9477 eval board
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Hi Sam,

On Sat, Nov 03, 2018 at 12:31:12AM +0100, Sam Ravnborg wrote:
> On Fri, Nov 02, 2018 at 10:07:43AM +0100, Sascha Hauer wrote:
> > From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > 
> > The EVB-KSZ9477 is an evaluation board for the KSZ9477 ethernet switch.
> > This board is equipped with a atsama5d3 SoC with 256MiB of SDRAM, 256MiB
> > of NAND flash and a SD card slot.
> > 
> > For now only second stage booting is supported with AT91bootstrap as
> > first stage loader.
> Reminds me...
> 
> I have noticed a brown-paper-bug introduced by me that would
> hurt first stage bootloaders.
> But only for at91sam926x boards I think, that this is likely not
> considered.


> +#define at91_sdramc_write(field, value) \
> +	__raw_writel((value), cfg->sdramc + (field))

I prefer using plain __raw_writel rather than creating a new wrapper.
The reason is a series I created that gets rid of these kind of wrappers
in AT91 which decide during compile time on which SoC we are running.
The above is not one of these, but I think doing it without accessors
fits better into the series I created.

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
