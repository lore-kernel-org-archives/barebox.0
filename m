Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6QTF-0000Jt-JC
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:57:18 +0000
Date: Fri, 15 Feb 2013 19:57:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130215185715.GD1906@pengutronix.de>
References: <511D2CFB.9010602@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511D2CFB.9010602@cmotion.eu>
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
Subject: Re: Environment changes lead to weird boot behaviour
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

On Thu, Feb 14, 2013 at 07:29:15PM +0100, Christian Kapeller wrote:
> Hi,
> 
> I try to investigate a situation where barebox (v2013.02.0 + board patches)
> fails to boot the linux kernel on my karo-tx53 based board. The problem may
> well be introduced by myself, but after a few days of investigation is still
> fail to grasp the problem's root.
> 
> Depending on whether files are present in the boot environment the kernel may
> start in some cases, in some it won't.
> 
> The file contents seems not to be relevant, since I've managed to get a
> broken boot situation, by simply adding a ash script doing one 'echo blah'.
> 
> In all cases barebox shuts down in orderly fashion, and jumps to the kernel
> image. The kernel in question is a zImage (3.4) + Initramfs + concatenated
> devicetree. Also another zImage + concatenated devicetree is affected.
> 
> 
> Background: I am implementing a 'foolproof' field update scheme. The
> control flow looks like:
> 
> (Good Case)  boot0 -(A)-> bootA/bootB -(B)-> kernel
> (Bad Case 1) boot0 -(A)-> bootA/bootB -(C)-> rescue-kernel
> (Bad Case 2) boot0 -(D)-> rescue-kernel
> 
> boot0   .. 1st stage barebox in 256k NAND partition
> bootA/B .. 2nd stage barebox in 256k NAND partition
> kernel  .. production kernel + ubiroot in NAND
> rescue-kernel  .. selfcontained rescue kernel + initramfs in NAND
> bootenv   .. stores just state variables. (256k NAND partition)
> scriptenv .. stores just scripts and static config (bundled with 2ndstage)
> 
> 
> (A) boot0 checks one of 2 partitions with 2nd stage barebox in a uimage,
>     and boots the newer one.
> (B) 2nd stage bb starts production system
> (C) 2nd stage bb starts rescue kernel bc button/bootenv says so.
> (D) 1st stage bb starts rescue system bc no 2nd stage is valid
> 
> I want to be able to exchange 2nd stage without hassle. To do this,
> I've introduced a split of the bootenvironment: boot scripts stay with
> the barebox image, non-volatile data is saved in a barebox environment.
> 
> The following patch accomplishes this:
> 
> diff --git a/common/startup.c b/common/startup.c
> index 14409a2..59e76ac 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -108,15 +108,17 @@ void start_barebox (void)
>         debug("initcalls done\n");
>  
>  #ifdef CONFIG_ENV_HANDLING
> -       if (envfs_load(default_environment_path, "/env", 0)) {
> +       envfs_load("/dev/defaultenv", "/env", 0);
>  #ifdef CONFIG_DEFAULT_ENVIRONMENT
> +       mkdir("/var", 0);
> +       if (envfs_load(default_environment_path, "/var", 0)) {
>                 printf("no valid environment found on %s. "
>                         "Using default environment\n",
>                         default_environment_path);
> -               envfs_load("/dev/defaultenv", "/env", 0);
> -#endif
> +               envfs_save("/dev/env0", "/var");
>         }
>  #endif
> +#endif
>  #ifdef CONFIG_COMMAND_SUPPORT
>         printf("running /env/bin/init...\n");
>  
> 
> Everything looks peachy, until I add a file in the boot environment
> using the bareboxenv tool. Say, I add a 'update-in-progress' flag. If
> the 2nd stage loader sees this, it knows, that something went wrong, 
> and can act accordingly.
> 
> The problem is, although I can read the state variable out of the 
> environment, the kernel boot fails with no messages from the kernel.
> No earlyprintk output, nothing.
> 
> 
> There the search started:
> 
> removing the new file, by just using 'rm /var/update-in-progress'
> made the kernel boot again. ... most of the time.
> 
> The removing some scripts (not relevant to this bootpath) from
> the image bundled scriptenv helped,.. sometimes.
> 
> I removed the 'common/bareboxenv' file before every recompile.
> 
> I've investigated size issues: I use defaultenv-2 + custom scripts
> together ~ 225k worth of ash scripts giving a 15k
> common/barebox_default_env. I found no correlation between size
> and failure.
> 
> I've tried to boil down the scripting stuff, to get a clean
> failure case, but no success here, hence I don't post the code
> in this mail.
> 
> I can compile bb images that render the kernel unbootable.
> So I ruled out issues when writing the environment from linux.
> 
> The rescue kernel is bootable without any additional kernel
> parameters. So I should get at least something from there.
> just 'bootm /dev/rescue' works right away.
> 
> I've ruled out partition overlaps. The partitions (8 of them)
> are registered with mtdparts-add by means of a quite bulky
> environment variable.
> 
> I've tried to add a big binary blob to the scriptenv, 
> making the bb image nearly 256k big. No reproducible
> failure,
> 
> I've tried to add 30 shell scripts echoing some line.
> I source those from /env/bin/init, to see whether ash
> couqhs up on them, also no reproducible failure.
> 
> 
> So my questions are:
> 
> Do you know of any side effects the above patch may introduce?
> 
> Do you know of a way to cause a kernel to fail to boot, by just
> adding a irrelevant shell script to the boot environment?
> 
> What else can I look for?

I have no real idea. Some suggestions/questions:

- Could it be that your kernel image overlaps the malloc space? Normally
  this shouldn't happen as barebox has protection against this, but who
  knows...
- Do you boot your kernel with devicetree?
- You could calculate and dump a crc right before shutdown_barebox in
  arch/arm/lib/armlinux.c to see if your kernel image is corrupted
  sometimes

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
