Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQpOH-0006tr-NX
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 07:31:27 +0000
Date: Thu, 7 Jun 2018 09:31:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180607073113.7k7rupezic6t3iwj@pengutronix.de>
References: <CACvFaDeA6k7d=1hOxCkOo1cXoxB566S3249XhZk3-zSNkQU3ag@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvFaDeA6k7d=1hOxCkOo1cXoxB566S3249XhZk3-zSNkQU3ag@mail.gmail.com>
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
Subject: Re: Oftree from memory and access to start arguments
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

Hi Pascal,

On Wed, Jun 06, 2018 at 01:07:27AM +0200, Pascal Vizeli wrote:
> Hi,
> 
> I'm working on a functionality to load a device tree with oftree from
> memory. The use case is like raspberry platform they have his own
> device tree for linux kernel. If I known the address (config.txt), I
> will load this from memory and read out the dynamic linux args and use
> other overlays for states with bootchoiser and boot the kernel
> correctly.
> 
> On raspberry, I can write the device-tree to a memory address with
> config.txt. It would be nice, if I can access to barebox (start.c)
> main arguments, while the raspberry pi load barebox like a linux
> kernel and give him the device-address on r2.

Starting barebox with the devicetree provided in r2 shouldn't be a
problem. See arch/arm/boards/raspberry-pi/lowlevel.c:

ENTRY_FUNCTION(start_raspberry_pi2, r0, r1, r2)
{
        void *fdt = __dtb_bcm2836_rpi_2_start + get_runtime_offset();

        arm_cpu_lowlevel_init();

        barebox_arm_entry(BCM2835_SDRAM_BASE, SZ_512M, fdt);
}

Just call barebox_arm_entry() with 'r2' instead of 'fdt'.

You could also store the value of r2 in a known memory location
and load the devicetree later in some board specific initcall.

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
