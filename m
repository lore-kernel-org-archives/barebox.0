Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTqi-0003YZ-GL
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:40:25 +0000
Date: Mon, 8 Feb 2010 14:40:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100208134016.GB17643@pengutronix.de>
References: <m33a1eoz9h.fsf@intrepid.localdomain>
	<4B6E9AEE.7040506@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4B6E9AEE.7040506@pengutronix.de>
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
Subject: Re: IXP4xx support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Krzysztof Halasa <khc@pm.waw.pl>

On Sun, Feb 07, 2010 at 11:50:22AM +0100, Marc Kleine-Budde wrote:
> Krzysztof Halasa wrote:
> > I'm thinking about adding Barebox support for a certain platform using
> > IXP425 (ARM, usually big-endian) CPU. This means the startup code
> > (trivial, already got it working in little-endian mode), drivers for
> > hardware Queue Manager, Network Processing Engines and built-in Ethernet
> > interfaces (all of them easy to port from Linux).
> > 
> > This also means supporting the NOR flash: the CPU has 16-bit, always
> > big-endian, "value-preserving" EXP bus for connecting such devices. In
> > LE mode the address has to be XORed with 2, and if it's byte-oriented
> > data (i.e. not a command/response), it has to be byte-swapped. Only
> > 16-bit writes can be made.
> > 
> > Doing the above in the flash driver would complicate things a lot. The
> > drivers currently use plain pointers to access the flash. I'm thinking
> > about moving the low-level access (R/W) routines to arch code (with a
> > generic defaults), and calling them via the NOR flash platform struct
> > (which doesn't do anything useful ATM).
> 
> have a look at the current uboot cfi flash driver. They have read/write
> functions to access the flash. By default they are macros to IIRC
> __raw_read,write.
> 
> From the first look, the driver looks much cleaner than the "old" one
> used in barebox (modulo my bugfix from last week).

It seems it still has the same driver under the hood.

I suggest to remove the "old" driver in favor for the cfi_flash_new
driver so that this ongoing confusion ends and Krzysztof has some base
to work on. I think the flash accesses can be ported from U-Boot if
necessary.

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
