Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QihZI-0002Hr-2I
	for barebox@lists.infradead.org; Mon, 18 Jul 2011 06:44:45 +0000
Date: Mon, 18 Jul 2011 08:44:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110718064437.GE20587@pengutronix.de>
References: <CAM9uW_7pYJS1jzPxcCPphPgMi=ckstKm8=_6dsrCRn3Bp-sCXw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_7pYJS1jzPxcCPphPgMi=ckstKm8=_6dsrCRn3Bp-sCXw@mail.gmail.com>
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
Subject: Re: Nand MTD IOError -5
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Jul 15, 2011 at 01:21:21PM +0200, Kamel BOUHARA wrote:
> Hello,
> 
> Im having a trouble with my Nand Flash device wich is a 512MiB Micron with
> 4GB capacity.
> I get io error -5 for any erase/write operation on it like this :
> 
>  barebox@Phytec phyCard-i.MX27:/ update -t barebox -d nand

Is this really a phycard or have you just used it as a template for your
board?

> 
> phy0: Link is up - 100/Full
> host 192.168.0.2 is alive
> > erasing partition /dev/nand0.barebox.bb
> >
> erase: I/O error
> 
> flashing barebox.bin to /dev/nand0.barebox.bb
> TFTP from server 192.168.0.2 ('barebox.bin' -> '/dev/nand0.barebox.bb')
>         write: I/O error
> tftp failed: error -5
> And here is the device init at the boot runtime:
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xac (Micron NAND 512MiB 1,8V
> 8-bi)
> 
> nand_read_bbt: Bad block at 0x17840000
> 
> nand_read_bbt: Bad block at 0x17860000
> 
> nand_read_bbt: Bad block at 0x1f0c0000
> 
> nand_read_bbt: Bad block at 0x1f0e0000
> 
> nand_read_bbt: Bad block at 0x1f6c0000
> 
> nand_read_bbt: Bad block at 0x1f6e0000
> 
> So it seems tge device is detect and bbt are correctly calculated...
> Any idea of what could be the problem ?

Sorry, no idea. It just looks there are quite many bad blocks. Does it
work under Linux?

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
