Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PBoCH-0000on-RV
	for barebox@lists.infradead.org; Fri, 29 Oct 2010 12:36:42 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 29 Oct 2010 14:36:18 +0200
References: <AANLkTimj3WiRQaeP+tQ7-AHy3WcVG0MKpwt5uNfo_cWf@mail.gmail.com>
	<4CCA9336.8030807@pengutronix.de>
	<AANLkTinXMoAtEAS6hifvFhoxFUETSsqTBX+s01rJ9c3F@mail.gmail.com>
In-Reply-To: <AANLkTinXMoAtEAS6hifvFhoxFUETSsqTBX+s01rJ9c3F@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201010291436.18901.jbe@pengutronix.de>
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
Subject: Re: command bootu to start kernel
To: barebox@lists.infradead.org

Belisko Marek wrote:
> On Fri, Oct 29, 2010 at 11:26 AM, Marc Kleine-Budde <mkl@pengutronix.de> 
wrote:
> > On 10/29/2010 11:21 AM, Belisko Marek wrote:
> >>>>> do you have a "MEM=32" on your command line?
> >>>>
> >>>> Well I add it but same result:
> >>>
> >>> BTW: It must be "mem=", in lowercase, but you did this.
> >>>
> >>> What I was meant to ask was, if you forget to add the "M" to "32".
> >>> Because with mem=32 you tell Linux just to use 32 bytes of memory.
> >>> Maybe your ATAGs are broken, Linux might not see the whole RAM or any
> >>> if it.
> >>
> >> yes it was typo I forgot put M after 32. Kernel now properly boot :).
> >
> > How much RAM you you have? Adjust mem= accordingly.
>
> Have 64M I will adjust.
>
> >> U-boot somehow
> >> add kernel this parameter? Because for u-boot I don't need to set this
> >> parameter.
> >
> > Nope - u-boot and barebox set up this information in the ATAG list.
> > Seems something is broken with your ATAG list.
>
> Could be a problem thats I load barebox directly to ram and run it and
> then RAM size isn't probed
> and correctly set in atags?

No, you need something like that:

[...]
static struct memory_platform_data ram_pdata = {
	.name		= "ram0",
	.flags		= DEVFS_RDWR,
};

struct device_d mini_sdram_dev = {
	.id		= -1,
	.name		= "mem",
	.map_base	= CS6_BASE,
	.size		= 64 * 1024 * 1024,
	.platform_data	= &ram_pdata,
};

[...]

static int mini2440_devices_init(void)
{
[...]
	register_device(&mini2440_sdram_dev);
[...]
	armlinux_add_dram(&mini2440_sdram_dev);
[...]
}

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
