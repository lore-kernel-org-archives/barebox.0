Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyBv0-0001B5-Qt
 for barebox@lists.infradead.org; Mon, 25 Feb 2019 08:47:24 +0000
Date: Mon, 25 Feb 2019 09:47:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190225084720.gtnqk7ej37hgl5qz@pengutronix.de>
References: <20190224185259.28458-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190224185259.28458-1-sam@ravnborg.org>
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
Subject: Re: [PATCH v4 0/11] at91: Support PMC clock bindings
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>, Ladislav Michl <ladis@linux-mips.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Sun, Feb 24, 2019 at 07:52:48PM +0100, Sam Ravnborg wrote:
> Hi all.
> 
> Sam Ravnborg (9):
>       arm: at91: fix at91_configure_usart6 warning
>       clocksource: Do not mix depends and select for ATMEL_PIT
>       arm: at91: add SOC_SAMA5{D2,D3,D4}
>       clk: at91: add at91sam9260
>       clk: at91: add at91sam9rl
>       clk: at91: add at91sam9x5
>       clk: at91: add sama5d2
>       clk: at91: add sama5d4
>       clk: at91: update to PMC bindings

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
