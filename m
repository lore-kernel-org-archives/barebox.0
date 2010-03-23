Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-v.mail.gandi.net ([217.70.178.76])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1Nu6kc-0002zi-OV
	for barebox@lists.infradead.org; Tue, 23 Mar 2010 16:14:47 +0000
Date: Tue, 23 Mar 2010 17:13:08 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100323161308.GD26177@darwin>
References: <20100323133217.GA26177@darwin>
	<20100323142643.GN2241@pengutronix.de>
	<20100323150915.GB26177@darwin>
	<20100323153148.GO2241@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100323153148.GO2241@pengutronix.de>
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

El Tue, Mar 23, 2010 at 04:31:48PM +0100 Sascha Hauer ha dit:

> On Tue, Mar 23, 2010 at 04:09:15PM +0100, Matthias Kaehlcke wrote:

> > i enabled CONFIG_ARCH_IMX_INTERNAL_BOOT, but it doesn't work either. i
> > also tried to start barebox from NAND, but no way :(
> > 
> > the barebox version is v2010.03.0, i forgot to mention that in my
> > initial post
> > 
> > if you can send me the barebox image that works on your board i'll
> > check if it works on mine, and we'll have some more certainty about
> > whether there is some obscure problem in my build process or my board
> > is somehow different to yours
> 
> I sent the image to you in private. Here are my dip switch settings, I
> don't know which of them are important:
> 
> On the baseboard:
> sw22: 00000000
> sw21: 11000000
> 
> On the Debug board:
> 
> sw5 .. SW10: 0

thanks for the image and your dip switch settings (mine are the same)

i flashed the image (first at MMC then at NAND), the board still
doesn't come up :(

i'm running out of ideas at this point. there must be some difference
in our hardware, as it clearly works on your board but not on mine

for the moment i'll stick with u-boot ...

thanks for your help

-- 
Matthias Kaehlcke
Embedded Linux Developer
Barcelona

  Si deseas mantener tu libertad, debes estar preparado para defenderla
                          (Richard Stallman)
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
