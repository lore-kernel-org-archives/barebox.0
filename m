Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VAGdR-0005SO-49
 for barebox@lists.infradead.org; Fri, 16 Aug 2013 09:47:57 +0000
Date: Fri, 16 Aug 2013 11:47:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130816094735.GP26614@pengutronix.de>
References: <CAJyuEedwD--ZJX0j5vBnb4s495FX=TK2fRkx9fMKWNKh3AVShw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJyuEedwD--ZJX0j5vBnb4s495FX=TK2fRkx9fMKWNKh3AVShw@mail.gmail.com>
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
Subject: Re: Porting BareBox to Variscite iMX6 SOM
To: Michael Burkey <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

On Thu, Aug 15, 2013 at 02:58:15PM -0400, Michael Burkey wrote:
> I figured I'd throw this question out to everyone (Sascha has already
> been very helpful,
> but I don't want to pester him too much!).

No problem ;)

> 
> I have currently been attempting to port BareBox over to a Variscite
> SOM with an iMX6Q
> on it.
> 
> Steps followed so far:
> 
> 1) Started from current 8.2013 BareBox
> 2) Started from ARM2 iMX6 version which is a fairly clean/uncluttered version.

Rather start with a imx_v7_defconfig. It contains several i.MX6 boards
which use the imx-image way rather than encoding the flash_header in C.

> 3) Migrated the DCD registers from Variscite's known working u-Boot
> BSP into flash_header.c
> 4) (Hopefully) properly verified the flash header information
> 5) Verified the arm_entry and size in lowlevel.c
> 6) Updated board.c with a set of reasonable IOMUX settings, etc.
> 7) Added a few simple commands at the start of xxx_devices_init() to
> toggle a GPIO LED

devices_init is quite late. There is a lot that can go wrong before
this.

Try to figure out the register writes you need to configure the iomux
for your LED and use writel() to set it up. Also use writel to set the
gpio rather than the gpio functions.

On i.MX6 the following can help you:

static inline void setup_uart(void)
{
	void __iomem *ccmbase = (void *)MX6_CCM_BASE_ADDR;
	void __iomem *uartbase = (void *)MX6_UART4_BASE_ADDR;
	void __iomem *iomuxbase = (void *)MX6_IOMUXC_BASE_ADDR;

	writel(0x4, iomuxbase + 0x01f8);

	writel(0xffffffff, ccmbase + 0x68);
	writel(0xffffffff, ccmbase + 0x6c);
	writel(0xffffffff, ccmbase + 0x70);
	writel(0xffffffff, ccmbase + 0x74);
	writel(0xffffffff, ccmbase + 0x78);
	writel(0xffffffff, ccmbase + 0x7c);
	writel(0xffffffff, ccmbase + 0x80);

	writel(0x00000000, uartbase + 0x80);
	writel(0x00004027, uartbase + 0x84);
	writel(0x00000704, uartbase + 0x88);
	writel(0x00000a81, uartbase + 0x90);
	writel(0x0000002b, uartbase + 0x9c);
	writel(0x00013880, uartbase + 0xb0);
	writel(0x0000047f, uartbase + 0xa4);
	writel(0x0000c34f, uartbase + 0xa8);
	writel(0x00000001, uartbase + 0x80);

	PUTC_LL('>');
}

Also enable this in Kconfig:

Debugging  --->
[*] low level debug messages
    Kernel low-level debugging port (i.MX6Q Debug UART)  --->
    (4) i.MX Debug UART Port Selection
    [*] Trace initcalls

Replace '4' in uartbase and Port selection with the UART number your
board uses. Also replace the iomux setup with one suitable for your
UART.

You can call setup_uart() nearly from the first instruction.

Also remember you can always start barebox 2nd stage from U-Boot.
Starting 2nd stage is much easier since you can skip lowlevel init for
the beginning. When doing 2nd stage you don't have to do setup_uart().
Just adjust the Kconfig like described above and in U-Boot do this:

setenv serverip x.x.x.x
tftp 0x18000000 barebox
go 0x18000000

Once you have this running you can be much more confident that barebox
is running in general and only have the lowlevel init as an additional
hurdle.

Hope that helps

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
