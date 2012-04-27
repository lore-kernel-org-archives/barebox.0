Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNm4q-0007Ye-T1
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 14:23:17 +0000
Date: Fri, 27 Apr 2012 16:23:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120427142310.GG17184@pengutronix.de>
References: <CAD9ZU8CNj+DEft7R9LqEGx5GgQ3X1BMA=YcWbLjXmwuUrcLfKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD9ZU8CNj+DEft7R9LqEGx5GgQ3X1BMA=YcWbLjXmwuUrcLfKQ@mail.gmail.com>
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
Subject: Re: imx35_nand driver
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 27, 2012 at 12:39:02PM +0200, Gabriel Tisan wrote:
> Hi !
> 
> I try to upgrade a custom board from an old version(2009) of barebox
> to a new one.
> 
> But I have some problems when the nand driver is
> loading(imx35_add_nand(&nand_info)
> 
> After I boot with the old barebox, I use tftp to load the new version
> of barebox in ram and at run I get this on console :
> 
> NAND device: Manufacturer ID: 0x2c, Chip ID: 0xdc (Micron NAND 512MiB
> 3,3V 8-bit)
> Bad block table not found for chip 0
> Bad block table not found for chip 0
> Scanning device for bad blocks
> Bad eraseblock 0 at 0x00000000
> Bad eraseblock 1 at 0x00020000
> Bad eraseblock 2 at 0x00040000
> ................
> 
> It seems that it could not find the bad block tables, although on the
> old barebox they are found.
> 
> Has someone an idea what I could try to go forward ?

Not a good idea. Some things to check:

have you played with the nand clock in your board setup (IMX_CCM_BASE +
CCM_PDR4)?

do you pass hw_ecc = 1 to the nand driver? I think this was the same
back in 2009, but I don't really know.

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
