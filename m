Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeGl-0005Em-NS
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:23:45 +0000
Date: Wed, 15 Apr 2020 11:23:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415092342.GJ1694@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 00/21] clk: at91: sync with Linux v5.6
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Apr 13, 2020 at 09:51:43AM +0200, Ahmad Fatoum wrote:
> During a bug hunt that ultimately turned out unrelated to the state
> of the barebox at91 clk driver, I synchronized its state with Linux v5.6.
> 
> This imports it, after cleanup. It refactors other code a bit to reduce
> the diff for the final port and future ones. What we gain from this:
> 
> - bug fixes that have been posted upstream in the meanwhile
> - sam9x60 (new Microchip ARM926EJ-S) clock support
> - sama5d2 audio PLL
> - Some more helpers to make code porting slightly easier
> - SPDX-License-Identifiers, not only for at91 clks, but for all of
>   drivers/clk

Applied with the fixup and v2 of the first patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
