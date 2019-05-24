Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU3LK-0001n5-TV
 for barebox@lists.infradead.org; Fri, 24 May 2019 06:06:16 +0000
Date: Fri, 24 May 2019 08:06:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190524060612.l6vzb6ogbm6u3kcv@pengutronix.de>
References: <20190523142932.14673-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523142932.14673-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 1/2] clk: at91: fix compilation errors in sama5d2.c
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, sam@ravnborg.org

On Thu, May 23, 2019 at 04:29:32PM +0200, Ahmad Fatoum wrote:
> sama5d2.c was added alongside the update to the remaining clk drivers
> to support the new upstream device tree bindings, but wasn't wired in
> anywhere.
> 
> To prepare for usage in future sama5d2 support, fix compilation errors
> related to absence of locks and unavailability of audio/i2s clock/pll
> handling.
> 
> With this change, there are no users for the few definition-less at91
> audio/i2s registration function declarations. So remove those as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---

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
