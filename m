Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB3dF-0005UZ-1P
 for barebox@lists.infradead.org; Sun, 08 Mar 2020 21:38:46 +0000
Date: Sun, 8 Mar 2020 22:38:31 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200308213831.GA22724@ravnborg.org>
References: <20200305080225.19103-1-a.fatoum@pengutronix.de>
 <20200305080225.19103-2-a.fatoum@pengutronix.de>
 <20200305203756.GB20581@ravnborg.org>
 <4e33894d-54ce-89b5-7ba9-7541ade184fa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4e33894d-54ce-89b5-7ba9-7541ade184fa@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ARM: at91: add sama5d27-based Groboards Giant Board
 support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad.

On Fri, Mar 06, 2020 at 07:06:26AM +0100, Ahmad Fatoum wrote:
> Hi Sam,
> 
> On 3/5/20 9:37 PM, Sam Ravnborg wrote:
> >> +#define sama5d2_pmc_enable_periph_clock(clk) \
> >> +	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
> > I see no point in this macro. It is not that this can change or will be
> > reused by others.
> 
> It makes the code less verbose IMO.

Had this been a static inline function I would not have commented on
this.

But a define is not the way to do this, a define is something you revert
to if there is no better wyas to do it.
Or so I am teached at least.

Anyway - this is becoming pure bikeshed.

So if I did not do so then with the cargo cult stuff fixed:
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

> 
> >> +	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
> > This " - 16" is it cargo cult copied from somewhere else?
> > Or does it really matter?
> 
> It's cargo cult. Will remove it. I wrote the patch few months ago, Sascha
> has since removed other instances of this cargo cult.
> 
> > The rest looked fine to me.
> 
> Thanks for taking the time to look though :-)
> 
> Cheers,
> Ahmad
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
