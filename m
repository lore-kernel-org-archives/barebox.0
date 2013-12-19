Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtYft-0006jl-Lm
 for barebox@lists.infradead.org; Thu, 19 Dec 2013 08:09:48 +0000
Date: Thu, 19 Dec 2013 09:09:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131219080917.GW24559@pengutronix.de>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
 <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Dec 18, 2013 at 04:34:20PM -0500, Michael Burkey wrote:
> I have answered some of my own questions and got more working on the
> Variscite port.
> 
> So, for anyone else trying to do basically the same thing I am:
> 
> 1) The built-in devicetree does get probed and enumerated.
> 
> 2) By the time the _init function in board.c gets called, the probing
> is complete and devices such as i2c are available.
> 
> I also got my uart problem fixed -- which was actually a devicetree
> error on my part.
> 
> However, I am still back to working on part of my problem. When
> configured correctly, the Variscite development board is SUPPOSED to
> gate the 3.3V line to the onboard peripherals using the 3.3V output of
> the PF0100 -- which, unfortunately, means that some of the devices
> that may need to be probed in devicetree probably won't respond until
> after I can use I2C to properly configure the PF0100.
> 
> So...after I have configured the PF0100, can "oftree -p" be used to
> re-probe the current tree?? Or do I have to figure out a way to bring
> I2C up early as well?

For the kernel the correct solution is to add regulators to the device
nodes which need the 3.3V line, so that the drivers for these devices
request and enable the regulators before accessing the devices.
In barebox we are not (yet?) prepared for this. Right now your options
are:

a) make sure the PF0100 is available before the devices using it (that
   may mean to move the i2c-imx driver and the PF0100 driver to an earlier
   initcall level).
b) Use an 'early' i2c driver (For example arch/ppc/mach-mpc85xx/fsl_i2c.c
   has this, the code should even work on i.MX)
c) implement regulator support for barebox

I would first try to get away with a), although from my point of view I
of course recommend c) ;)

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
