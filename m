Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzlM9-0003da-NF
 for barebox@lists.infradead.org; Fri, 10 Aug 2012 09:18:10 +0000
Date: Fri, 10 Aug 2012 11:18:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120810091807.GA1451@pengutronix.de>
References: <CAD9ZU8BDoYe9WA11i1PjuU=AkZW3QzKActY4SuCxEfKoVwLZGw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD9ZU8BDoYe9WA11i1PjuU=AkZW3QzKActY4SuCxEfKoVwLZGw@mail.gmail.com>
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
Subject: Re: issue with imx35 external boot from Micron 4k flash
To: Gabriel Tisan <gabriel.tisan@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 10, 2012 at 11:11:49AM +0200, Gabriel Tisan wrote:
> Hi !
> 
> I try to boot a custom board(based on imx35)  from a Micron NAND
> flash(4K pagesize, 224 bytes OOB, 256K writesize).
> Using a JTAG debugger, I found that the internal Freescale firmware
> copied the first 4K from flash
> without errors to NFC internal buffer, but then it does not jump to
> this buffer how is specified in specs.
> So the barebox code is never called.
> If I jump manually via JTAG debugger, barebox boot up without any
> problems. I use external boot and write/dump to/from flash works well.
> Of course for imx35 I used just the supported 218 bytes of OOB.
> 
> Freescale support told me that there is a boot problem with imx35 when
> is used with flashes that need more time after RESET command.
> On the same board I used before also a Micron flash(2K pagesize, 64
> bytes OOB, 128K writesize) that has the same hardware timing for
> RESET.
> However I suppose that the flash is out of RESET, because otherwise
> could not copy without any ECC error the first 4K data.
> 
> Has anybody experienced some kind of problems ? Do you see a workaround ?

Never seen this. Maybe you could try internal boot mode?

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
