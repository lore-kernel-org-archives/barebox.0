Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RKaYt-0005Dr-1X
	for barebox@lists.infradead.org; Sun, 30 Oct 2011 18:56:52 +0000
Received: from mail407.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 9E05DFFB238
	for <barebox@lists.infradead.org>; Sun, 30 Oct 2011 19:53:46 +0100 (CET)
Date: Sun, 30 Oct 2011 19:50:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111030185023.GD7961@game.jcrosoft.org>
References: <20111028093456.GA7961@game.jcrosoft.org>
	<1319794660-6295-1-git-send-email-plagnioj@jcrosoft.com>
	<20111028221922.GF23421@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111028221922.GF23421@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> > +			dev = "sda1";
> > +			fs = "ext3";
> > +			path = "/boot/inird-3.0.0";
> > +		};
> > +		fdt@3 {
> > +			dev = "sda1";
> > +			fs = "ext3";
> > +			path = "boot/usb_a9g20.dtb";
> > +		};
> > +
> > +		kernel@4 {
> > +			format = "uimage";
> > +			dev = "sda3";
> > +			fs = "squashfs";
> > +			path = "/boot/uImage-installer-3.0.0";
> > +		};
> > +		initrd@4 {
> > +			dev = "sda3";
> > +			fs = "squashfs";
> > +			path = "/boot/initrd-installer-3.0.0";
> > +		};
> 
> Why do you describe the device/fstype in each and every node? a
> reference to a partition descriptions would be more convenient here.
> Also it's strange that the patch is an absolute path and not a path
> relative to the mountpoint.
becasue we need to known the fs to mont it

the fs could a real fs or nfs or tftp the path is absolute mount the
mountpoint
> 
> > +	};
> > +
> > +	configuration {
> > +		description = "Welcome on Barebox Boot Sequence";
> > +		default = "linux_3_0_0";
> > +		altboot = "installer";
> > +		bootdelay = <5>;
> > +		splash = /incbin/("splash_menu.bmp");
> > +
> > +		linux_2_6_36 {
> > +			description = "Linux 2.6.36";
> > +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda2 rw rootfstype=ext3";
> 
> We should be able to build the commandline out of its parts. A
> monolithic string seems not very flexible.

the idea is to put var inside and after you will use this cmdline as a based
to construct the finall one
> 
> > +			kernel = "kernel@1";
> > +			initrd = "initrd@1";
> phandles instead?
> 
more code in the c code and mre difficult to handle when modifying the dtb
from barebox
> 
> > +			description = "Installer Linux 3.0.0";
> > +			cmdline = "mem=64M console=ttyS0,115200 root=/dev/sda4 ro rootfstype=squashfs";
> > +			splash = /incbin/("splash_installer.bmp");
> > +			kernel = "kernel@4";
> > +			initrd = "initrd@4";
> > +		};
> > +
> > +#define OPTS		"f:dlc:b:"
> 
> This is used only once. It would be clearer to just use the string
> instead.
as done on menu framework we will have tehe management part so 2 OPTS
the code is not finished or even enough advanced to publixh it
> 
> > +
> > +static void print_entries(void)
> > +{
> > +	struct boot_config_data *bed;
> > +
> > +	printf("[Kernel]\n");
> > +
> > +	list_for_each_entry(bed, boot_config_get_kernels(), list)
> > +		printf("%s\n", bed->name);
> 
> So instead of the list_head directly you export it via
> boot_config_get_kernels() which basically has the same effect but is
> harder to read. Please do not do that.
realy don't like to export it
> 
> > +	printf("[Initrd]\n");
> > +
> > +	list_for_each_entry(bed, boot_config_get_initrds(), list)
> > +		printf("%s\n", bed->name);
> > +
> > +	printf("[FDT]\n");
> > +
> > +	list_for_each_entry(bed, boot_config_get_fdts(), list)
> > +		printf("%s\n", bed->name);
> > +
> > +}
> > +
> > +static void print_boot_config_data(struct boot_config_data *bed)
> 
> What's a bed? Supposedly the thing I should go now.
I like it :P
it was supposed to mean boot env data

but switch to boot_config_data
> 
> > +{
> > +	printf("name = '%s'\n", bed->name);
> > +	printf("dev  = '%s'\n", bed->dev);
> > +	printf("fs   = '%s'\n", bed->fs);
> > +	printf("path = '%s'\n", bed->path);
> > +}
> > +
> > +static void print_boot_config(struct boot_config *e)
> > +{
> > +	struct boot_config_var *v;
> > +
> > +	printf("Config '%s'\n\n", e->name);
> > +
> > +	v = boot_config_var_get_by_name(e, "description");
> 
> You have a mechanism to attach arbitrary key/value pairs to a struct
> boot_config. Still you do not iterate over all over all variables in the
> corresponding devicetree node, but instead only handle the variables
> explicitely that you now about.
> 
> This does not make sense. struct boot_config should simply have a char
> *description, char *cmdline and whatever else you need. Then you can
> remove this boot_config_var_get_by_name() cruft.
I knwon this version is not switch to new one I finish it
> 
> > +	printf("description = %s\n", v->value);
> > +	v = boot_config_var_get_by_name(e, "cmdline");
> > +	printf("cmdline = '%s'\n", v->value);
> > +	v = boot_config_var_get_by_name(e, "splash");
> > +	if (v)
> > +		printf("splash  = '%s'\n", v->value);
> > +
> > +	printf("[Kernel]\n");
> > +	print_boot_config_data(e->kernel);
> > +
> > +	if (e->initrd) {
> > +		printf("[Initrd]\n");
> > +		print_boot_config_data(e->initrd);
> > +	}
> > +
> > +	if (e->fdt) {
> > +		printf("[fdt]\n");
> > +		print_boot_config_data(e->fdt);
> > +	}
> > +}
> > +
> > +/*
> > + * boot_config -l [-c config]
> > + */
> 
> [...]
> 
> > +
> > +static int do_boot_config(struct command *cmdtp, int argc, char *argv[])
> > +{
> > +	struct cmd_bood_config cbc;
> > +	int opt;
> > +	int ret = COMMAND_ERROR_USAGE;
> > +
> > +	memset(&cbc, 0, sizeof(struct cmd_bood_config));
> > +
> > +	while((opt = getopt(argc, argv, OPTS)) > 0) {
> > +		switch(opt) {
> > +		case 'f':
> > +			cbc.action = action_load;
> > +			cbc.filename = optarg;
> > +			break;
> > +		case 'd':
> > +			boot_config_unload();
> > +			break;
> > +		case 'l':
> > +			cbc.action = action_list;
> > +			break;
> > +		case 'b':
> > +			cbc.action = action_boot;
> > +		case 'c':
> > +			cbc.config = optarg;
> > +			break;
> > +		}
> > +	}
> > +
> > +	switch(cbc.action) {
> 
> What's this cbc.action thing about? It is only ever used in this
> function.
is to specify what to do based on the option as you can have alots of option
see menu framwork
> 
> > +	case action_list:
> > +		ret = do_boot_config_list(&cbc);
> > +		break;
> > +	case action_load:
> > +		ret = do_boot_config_load(&cbc);
> > +		break;
> > +	case action_boot:
> > +		ret = do_boot_config_boot(&cbc);
> > +		break;
> > +
> > +	};
> > +
> > +	if (ret)
> > +		return COMMAND_ERROR_USAGE;
> 
> I don't know what errors you expect from above, but for sure it does not
> necessarily mean that it's a usage error.
> 
> > +
> > +	return 0;
> > +}
> > +
> 
> [,..]
> 
> >  
> > diff --git a/common/boot_config.c b/common/boot_config.c
> > new file mode 100644
> > index 0000000..b60ce26
> > --- /dev/null
> > +
> > +struct list_head* boot_config_get_fdts(void)
> > +{
> > +	return &fdts;
> > +}
> 
> So much code just to handle some global data. You should collect this in
> a struct and pass it around where you need it instead,
> 
> > +
 > +
> > +	if (initrd) {
> > +		ret = boot_config_var_add(e, "initrd", initrd);
> > +		if (ret)
> > +			goto err_free;
> > +	}
> > +
> > +	if (fdt) {
> > +		ret = boot_config_var_add(e, "fdt", fdt);
> > +		if (ret)
> > +			goto err_free;
> > +	}
> 
> I am not going to read further. Every struct boot_config seems to have a
> clearly defined set of variables but instead of adding the corresponding
> pointers to struct boot_config you have this strange
> attach-key-value-pairs-to-c-struct in place.
> Supposedly this is some leftover from earlier versions. Sending
> non-finished patches as a RFC is perfectly fine, but in this case it's
> sometimes really hard to see where you're heading to.
Yas you have miniamal set of variable but the code is more generic and
support to have more var.

As example for network or complex system the idea is to have no limit of which
var you can add, you just need to specify the mandatory one.

And the Framework is not DTB only but generic other format will have other
var.
> 
> If you want to get this in someday it's going to be a long way.
> Communicating with the Linux userspace using a devicetree means creating
> an API which also means that we have to have the nice feeling that this API
> can be stable. Right now it more looks to me as if the devicetree format is
> an adhoc implementation of what you needed for your example.
The point is the DTB is one format , we can use ant format for the
boot_config.
THe DTB match the need to describe the boot config and will not impact the
boot laoder size but we can use a grub config file too or PXE boot

so the DTB is just a format to support to demonstrate the boot_config
framework

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
