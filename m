Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqaii-0005YJ-3z
 for barebox@lists.infradead.org; Tue, 27 Feb 2018 08:34:45 +0000
Date: Tue, 27 Feb 2018 09:34:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180227083430.ze66vwf42ytipjsf@pengutronix.de>
References: <20180226082349.31568-1-s.hauer@pengutronix.de>
 <20180226101201.k7ync5dx3yaynslg@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180226101201.k7ync5dx3yaynslg@localhost.localdomain>
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
Subject: Re: [PATCH] Pass barebox version to kernel
To: Peter Mamonov <pmamonov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Peter,

On Mon, Feb 26, 2018 at 01:12:02PM +0300, Peter Mamonov wrote:
> Hi, Sasha,
> 
> On Mon, Feb 26, 2018 at 09:23:49AM +0100, Sascha Hauer wrote:
> > When userspace is interested in the barebox version it has currently no
> > way of reliably reading it. Add it to the kernel command line as it's an
> > established way to pass information from the bootloader to the kernel.
> > If CONFIG_FLEXIBLE_BOOTARGS is enabled then the barebox version is
> > passed in the "bootloader.version=" variable.
> 
> Some time ago we solved a similar problem: a number of parameters including 
> barebox version, MAC address (which may be random due to the lack of a NIC 
> EEPROM) and some vendor specific parameters are passed to the kernel via DTB.  
> A dedicated command was implemented which can either patch the existing DTB or 
> generate an overlay DTB.  In the latter case the overlay DTB is passed to the 
> kernel with the help of a new `bootm` option. Of course the latter approach 
> requires support on the kernel side.

We could of course pass the barebox version in the /chosen node. That
would require a of_register_fixup(). Why would we need an extra command
for that?
The MAC address should already be inserted into the kernel device tree
automatically.

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
