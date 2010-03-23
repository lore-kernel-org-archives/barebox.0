Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-v.mail.gandi.net ([217.70.178.78])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu5ks-0004Bh-UZ
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 15:10:59 +0000
Date: Tue, 23 Mar 2010 16:09:15 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100323150915.GB26177@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100323142643.GN2241@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

hi sascha,

El Tue, Mar 23, 2010 at 03:26:43PM +0100 Sascha Hauer ha dit:

> On Tue, Mar 23, 2010 at 02:32:17PM +0100, Matthias Kaehlcke wrote:
> > hi,
> > 
> > i'm trying to run barebox on a Freescale i.MX25 3-Stack board. for
> > this purpose i built barebox with the freescale-mx25-3-stack
> > defconfig, using the toolchain provided by the Freescale BSP (i also
> > tried it with a custom one). i then dumped the barebox.bin on a MMC
> > card, plugged the card into the socket of the board and switched the
> > board on, but nothing happened :(
> 
> I just checked, it works, but not with the current defconfig. Please
> enable CONFIG_ARCH_IMX_INTERNAL_BOOT to boot from MMC. Note that
> currently the CPLD is not initialised in barebox and so the FEC is not
> working (It is working if barebox runs as a second stage loader after
> Freescales redboot).

thanks for checking and for your reply

i enabled CONFIG_ARCH_IMX_INTERNAL_BOOT, but it doesn't work either. i
also tried to start barebox from NAND, but no way :(

the barebox version is v2010.03.0, i forgot to mention that in my
initial post

if you can send me the barebox image that works on your board i'll
check if it works on mine, and we'll have some more certainty about
whether there is some obscure problem in my build process or my board
is somehow different to yours

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

          Dreams and reality are opposites. Action synthesizes them
                             (Assata Shakur)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
