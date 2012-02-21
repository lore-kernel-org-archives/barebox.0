Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RzwqG-0000kS-3H
 for barebox@lists.infradead.org; Tue, 21 Feb 2012 21:01:49 +0000
Date: Tue, 21 Feb 2012 22:01:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120221210127.GG3852@pengutronix.de>
References: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAACwSTKshGv05PfJWJkFTKzhof2q+hjupdh=U3VH2Fbdc-6VBQ@mail.gmail.com>
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
Subject: Re: mx53 loco boot procedure
To: George Stefan <stefan.george87@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 21, 2012 at 08:38:24PM +0200, George Stefan wrote:
> Hello guys,
> After  dd if=barebox.bin of=/dev/sdb bs=512 and dd if=arch/arm/boot/uImage
> of=/dev/sdb bs=512 seek=768 i am getting
> 
> Board: Freescale i.MX53 LOCO registered netconsole as cs1 eth@eth0: got MAC
> address from EEPROM: 00:04:9F:01:B4:5B mci@mci0: No partition table found
> Cannot reset the SD/MMC interface Malloc space: 0x7df00000 -> 0x7fefffff
> (size 32 MB) Stack space : 0x7def8000 -> 0x7df00000 (size 32 kB) envfs:
> wrong magic on /dev/env0 no valid environment found on /dev/env0. Using
> default environment running /env/bin/init... Hit any key to stop autoboot:
> 1 phy0: Link is up - 100/Full T DHCP client bound to address
> 128.224.168.167 TFTP from server 128.224.168.11 ('zImage-loco' -> '/image')
> 
> Wasn't the board suppose to boot from sd card by default?
> 
> Also, i have another question. I want to replace
> 
> /* call start_barebox with its absolute address */
>         r = (unsigned int)&start_barebox;
>         __asm__ __volatile__("mov pc, %0" : : "r"(r));
> 
> &start_barebox with the actual address of the uImage practically to skip
> all the barebox part and
> boot only with the minimal CPU and memory setup. What do you think?

You can't jump directly into uImages. It would work with a zImage, but
how do you get your zImage from the sd card without the help of the
bootloader? Well, you could link barebox and a zImage together, but then
you'll realize that the internal ROM code is quite slow when reading
data from SD cards (unless there are ways to tweak this, I don't know)

What are your goals trying this?

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
