Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw1IY-000092-6q
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 10:07:15 +0000
Date: Mon, 27 Jan 2020 11:07:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200127100711.wo2fwdq4o3cax3jl@pengutronix.de>
References: <2198510.7r5C0NBLhF@n95hx1g2>
 <20200120195351.skm7ujz7yjr6mu32@pengutronix.de>
 <2068200.0Z92YdXjpK@n95hx1g2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2068200.0Z92YdXjpK@n95hx1g2>
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
Subject: Re: Configuring for secure boot / Using bootchooser
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 23, 2020 at 11:29:41AM +0100, Christian Eggers wrote:
> Hi Sascha,
> 
> seems I ran into trouble (see below) with CONFIG_SHELL_NONE.
> 
> Am Montag, 20. Januar 2020, 20:53:51 CET schrieb Sascha Hauer:
> > Hi Christian,
> >
> > On Mon, Jan 20, 2020 at 05:38:36PM +0100, Christian Eggers wrote:
> > > Board: phytec-som-imx6
> > >
> > > I need to configure barebox in a way, that a malicious attacker can not
> > > break into the system. It looks like I need to perform the following
> > > steps:
> > >
> > > 3. Prevent access to the barebox shell
> > > --> CONFIG_CMD_LOGIN?
> > > --> CONFIG_SHELL_NONE?
> >
> > I wouldn't trust CONFIG_CMD_LOGIN that much. If you do, at least make
> > sure to use a safe hash function for the password, i.e. not the default
> > md5.
> > Disabling the shell entirely with CONFIG_SHELL_NONE is the best you can
> > do. This also forces you to program your boot process in C which helps
> > you to get a well defined boot without diving into potentially unsafe
> > shell commands.
> 
> I've tried to implement my boot process in C. Attaching the MTD partition to
> UBI and directly calling bootm_data() looks straightforward and seems to work.
> 
>         bootm_data_init_defaults(&data);
>         data.os_file = "/dev/nand0.root.ubi.kernel";
> 
>         ret = bootm_boot(&data);
>         if (ret) {
>                 printf("handler failed with: %s\n", strerror(-ret));
>                 goto error_return;
>         }
> 
> Now I'm trying to integrate bootchooser. My first attempt was to call
> bootchooser directly from my barebox_main:
> 
>         bc = bootchooser_get();
>         if (IS_ERR(bc))
>                 return PTR_ERR(bc);
> 
>         ret = bootchooser_boot(bc);
> 
>         bootchooser_put(bc);
> 
> Unfortunately this doesn't work, because there is no boot provider available
> for booting the result of bootchooser (e.g. "nand0.root.ubi.kernel").
> 
> From the documentation of the "boot" command, this should be possible:
> 
> ----------------8<---------------
> BAREBOX_CMD_HELP_TEXT("BOOTSRC can be:")
> BAREBOX_CMD_HELP_TEXT("- a filename under /env/boot/")
> BAREBOX_CMD_HELP_TEXT("- a full path to a boot script")
> BAREBOX_CMD_HELP_TEXT("- a device name")
> BAREBOX_CMD_HELP_TEXT("- a partition name under /dev/")  <---- tried this one
> BAREBOX_CMD_HELP_TEXT("- a full path to a directory which")
> BAREBOX_CMD_HELP_TEXT("   - contains boot scripts, or")
> BAREBOX_CMD_HELP_TEXT("   - contains a loader/entries/ directory containing
> bootspec entries")
> ---------------->8---------------
> 
> Looking into bootentry_create_from_name() I didn't find how booting from "a
> device name" or "a partition name" can work.
> 
> Also using the shell doesn't help:
> ----------------8<---------------
> barebox:/ boot nand0.root.ubi.kernel
> Nothing bootable found on 'nand0.root.ubi.kernel'
> Nothing bootable found
> ---------------->8---------------
> So I'm able to run bootm_boot() directly from C, but I've not found a way to
> boot indirectly via bootchooser.
> 
> Any hints how I can use bootchooser from my own barebox_main() with
> CONFIG_SHELL_NONE?

Obviously anything involving shell scripts cannot work when no shell is
enabled. I suggest using bootloader spec (CONFIG_BLSPEC) to boot a
kernel. This works without shell support.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
