Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA67w-0003kU-Fj
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 06:06:29 +0000
References: <20200305080225.19103-1-a.fatoum@pengutronix.de>
 <20200305080225.19103-2-a.fatoum@pengutronix.de>
 <20200305203756.GB20581@ravnborg.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <4e33894d-54ce-89b5-7ba9-7541ade184fa@pengutronix.de>
Date: Fri, 6 Mar 2020 07:06:26 +0100
MIME-Version: 1.0
In-Reply-To: <20200305203756.GB20581@ravnborg.org>
Content-Language: en-US
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

Hi Sam,

On 3/5/20 9:37 PM, Sam Ravnborg wrote:
>> +#define sama5d2_pmc_enable_periph_clock(clk) \
>> +	at91_pmc_sam9x5_enable_periph_clock(IOMEM(SAMA5D2_BASE_PMC), clk)
> I see no point in this macro. It is not that this can change or will be
> reused by others.

It makes the code less verbose IMO.

>> +	arm_setup_stack(SAMA5D2_SRAM_BASE + SAMA5D2_SRAM_SIZE - 16);
> This " - 16" is it cargo cult copied from somewhere else?
> Or does it really matter?

It's cargo cult. Will remove it. I wrote the patch few months ago, Sascha
has since removed other instances of this cargo cult.

> The rest looked fine to me.

Thanks for taking the time to look though :-)

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
