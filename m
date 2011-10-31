Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RKwfa-0006rI-6Z
	for barebox@lists.infradead.org; Mon, 31 Oct 2011 18:33:15 +0000
Date: Mon, 31 Oct 2011 19:33:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111031183308.GH23421@pengutronix.de>
References: <20111028093456.GA7961@game.jcrosoft.org>
	<1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
	<20111028221922.GF23421@pengutronix.de>
	<20111030185023.GD7961@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111030185023.GD7961@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/2] add boot_config command support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Oct 30, 2011 at 07:50:23PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +			dev = "sda1";
> > > +			fs = "ext3";
> > > +			path = "/boot/inird-3.0.0";
> > > +		};
> > > +		fdt@3 {
> > > +			dev = "sda1";
> > > +			fs = "ext3";
> > > +			path = "boot/usb_a9g20.dtb";
> > > +		};
> > > +
> > > +		kernel@4 {
> > > +			format = "uimage";
> > > +			dev = "sda3";
> > > +			fs = "squashfs";
> > > +			path = "/boot/uImage-installer-3.0.0";
> > > +		};
> > > +		initrd@4 {
> > > +			dev = "sda3";
> > > +			fs = "squashfs";
> > > +			path = "/boot/initrd-installer-3.0.0";
> > > +		};
> > 
> > Why do you describe the device/fstype in each and every node? a
> > reference to a partition descriptions would be more convenient here.
> > Also it's strange that the patch is an absolute path and not a path
> > relative to the mountpoint.
> becasue we need to known the fs to mont it
> 
> the fs could a real fs or nfs or tftp the path is absolute mount the
> mountpoint

Linux normally mounts the boot partition to /boot. The information you
need to describe is: sda3:initrd-installer-3.0.0. What shall the /boot
mean above?

> > 
> > > +	};
> > > +
> > > +	configuration {
> > > +		description = "Welcome on Barebox Boot Sequence";
> > > +		default = "linux_3_0_0";
> > > +		altboot = "installer";
> > > +		bootdelay = <5>;
> > > +		splash = /incbin/("splash_menu.bmp");
> > > +
> > > +		linux_2_6_36 {
> > > +			description = "Linux 2.6.36";
> > > +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
> > 
> > We should be able to build the commandline out of its parts. A
> > monolithic string seems not very flexible.
> 
> the idea is to put var inside and after you will use this cmdline as a based
> to construct the finall one
> > 
> > > +			kernel = "kernel@1";
> > > +			initrd = "initrd@1";
> > phandles instead?
> > 
> more code in the c code and mre difficult to handle when modifying the dtb
> from barebox

I don't buy that. Other than that it seems to justify my point that the
dtb format you chose is driven by your adhoc needs and not by some
concept.

> > 
> > So instead of the list_head directly you export it via
> > boot_config_get_kernels() which basically has the same effect but is
> > harder to read. Please do not do that.
> realy don't like to export it

You already do, by taking the indirection over a function.

> > 
> > > +	printf("[Initrd]\n");
> > > +
> > > +	list_for_each_entry(bed, boot_config_get_initrds(), list)
> > > +		printf("%s\n", bed->name);
> > > +
> > > +	printf("[FDT]\n");
> > > +
> > > +	list_for_each_entry(bed, boot_config_get_fdts(), list)
> > > +		printf("%s\n", bed->name);
> > > +
> > > +}
> > > +
> > > +static void print_boot_config_data(struct boot_config_data *bed)
> > 
> > What's a bed? Supposedly the thing I should go now.
> I like it :P
> it was supposed to mean boot env data
> 
> but switch to boot_config_data
> > 
> > > +{
> > > +	printf("name = '%s'\n", bed->name);
> > > +	printf("dev  = '%s'\n", bed->dev);
> > > +	printf("fs   = '%s'\n", bed->fs);
> > > +	printf("path = '%s'\n", bed->path);
> > > +}
> > > +
> > > +static void print_boot_config(struct boot_config *e)
> > > +{
> > > +	struct boot_config_var *v;
> > > +
> > > +	printf("Config '%s'\n\n", e->name);
> > > +
> > > +	v = boot_config_var_get_by_name(e, "description");
> > 
> > You have a mechanism to attach arbitrary key/value pairs to a struct
> > boot_config. Still you do not iterate over all over all variables in the
> > corresponding devicetree node, but instead only handle the variables
> > explicitely that you now about.
> > 
> > This does not make sense. struct boot_config should simply have a char
> > *description, char *cmdline and whatever else you need. Then you can
> > remove this boot_config_var_get_by_name() cruft.
> I knwon this version is not switch to new one I finish it

-ENOPARSE

> > > +	switch(cbc.action) {
> > 
> > What's this cbc.action thing about? It is only ever used in this
> > function.
> is to specify what to do based on the option as you can have alots of option
> see menu framwork

Look again. This variable is used only locally in this function and it
would be a bug if the functions below would interpret it.

> > 
> > > +	case action_list:
> > > +		ret = do_boot_config_list(&cbc);
> > > +		break;
> > > +	case action_load:
> > > +		ret = do_boot_config_load(&cbc);
> > > +		break;
> > > +	case action_boot:
> > > +		ret = do_boot_config_boot(&cbc);
> > > +		break;
> > > +
> > > +	};
> > > +
> > > +	if (ret)
> > > +		return COMMAND_ERROR_USAGE;
> > 
> > 
> > I am not going to read further. Every struct boot_config seems to have a
> > clearly defined set of variables but instead of adding the corresponding
> > pointers to struct boot_config you have this strange
> > attach-key-value-pairs-to-c-struct in place.
> > Supposedly this is some leftover from earlier versions. Sending
> > non-finished patches as a RFC is perfectly fine, but in this case it's
> > sometimes really hard to see where you're heading to.
> Yas you have miniamal set of variable but the code is more generic and
> support to have more var.
> 
> As example for network or complex system the idea is to have no limit of which
> var you can add, you just need to specify the mandatory one.
> 
> And the Framework is not DTB only but generic other format will have other
> var.

When other formats have other variables then you end up with a system
where barebox does not know its own internal format. No. It does not
make sense to translate from dtb or whatever format to another
nonnative format which then has to be translated into soemthing else
which barebox understands.

> > 
> > If you want to get this in someday it's going to be a long way.
> > Communicating with the Linux userspace using a devicetree means creating
> > an API which also means that we have to have the nice feeling that this API
> > can be stable. Right now it more looks to me as if the devicetree format is
> > an adhoc implementation of what you needed for your example.
> The point is the DTB is one format , we can use ant format for the
> boot_config.
> THe DTB match the need to describe the boot config and will not impact the
> boot laoder size but we can use a grub config file too or PXE boot
> 
> so the DTB is just a format to support to demonstrate the boot_config
> framework

This 'just a format' is exported to Linux and thus should be more
thought about.

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
