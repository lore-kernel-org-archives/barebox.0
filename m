Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu54D-0005TP-PH
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 14:26:50 +0000
Date: Tue, 23 Mar 2010 15:26:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100323142643.GN2241@pengutronix.de>
References: <20100323133217.GA26177@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100323133217.GA26177@darwin>
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
Subject: Re: Barebox working on freescale-mx25-3-stack?
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Tue, Mar 23, 2010 at 02:32:17PM +0100, Matthias Kaehlcke wrote:
> hi,
> 
> i'm trying to run barebox on a Freescale i.MX25 3-Stack board. for
> this purpose i built barebox with the freescale-mx25-3-stack
> defconfig, using the toolchain provided by the Freescale BSP (i also
> tried it with a custom one). i then dumped the barebox.bin on a MMC
> card, plugged the card into the socket of the board and switched the
> board on, but nothing happened :(

I just checked, it works, but not with the current defconfig. Please
enable CONFIG_ARCH_IMX_INTERNAL_BOOT to boot from MMC. Note that
currently the CPLD is not initialised in barebox and so the FEC is not
working (It is working if barebox runs as a second stage loader after
Freescales redboot).

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
