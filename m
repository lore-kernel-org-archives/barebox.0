Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZU8JO-0000Sq-0y
 for barebox@lists.infradead.org; Tue, 25 Aug 2015 07:06:27 +0000
Date: Tue, 25 Aug 2015 09:06:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150825070603.GO18700@pengutronix.de>
References: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440415935-32674-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/3] commands: Add MMC ext. CSD register tool
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

Hi Daniel,

Nice command. Several comments inline, there is still some way to go to
get this into shape.

On Mon, Aug 24, 2015 at 01:32:13PM +0200, Daniel Schultz wrote:
> +
> +static int print_field(u8 *reg, int index)
> +{
> +	int rev;
> +	u32 val;
> +	u32 tmp;
> +	u64 tmp64;
> +
> +	rev = reg[EXT_CSD_REV];
> +
> +	if (rev >= 7)

Additional print_field_v7/v6/v5() functions will reduce the indentation
level by one and help violating the 80 character limit less often.

> +		switch (index) {
> +		case EXT_CSD_CMDQ_MODE_EN:
> +			print_field_caption(CMDQ_MODE_EN, RWE_P);
> +			val = get_field_val(CMDQ_MODE_EN, 0, 0x1);
> +			if (val)
> +				printf("\tCommand queuing is enabled\n");
> +			else
> +				printf("\tCommand queuing is disabled\n");

Your printfs are very inefficient. You should use something like:

	if (val)
		str = "en";
	else
		str = "dis";
	printf("Command queuing is %sabled\n", str);

Same goes for many other printfs. This will result in much less similar
strings in the binary.

> +			return 1;
> +
> +		case EXT_CSD_SECURE_REMOVAL_TYPE:
> +			print_field_caption(SECURE_REMOVAL_TYPE, RWaR);
> +			val = get_field_val(SECURE_REMOVAL_TYPE, 0, 0xF);
> +			switch (val) {
> +			case 0x0:
> +				printf("\t[3-0] Supported Secure Removal Type: information removed by an erase of the physical memory\n");
> +				break;
> +			case 0x1:
> +				printf("\t[3-0] Supported Secure Removal Type: information removed by an overwriting the addressed locations with a character followed by an erase\n");
> +				break;
> +			case 0x2:
> +				printf("\t[3-0] Supported Secure Removal Type: information removed by an overwriting the addressed locations with a character, its complement, then a random character\n");
> +				break;
> +			case 0x3:
> +				printf("\t[3-0] Supported Secure Removal Type: information removed using a vendor defined\n");
> +				break;

This is *very* verbose. Could you write this a bit more compact, maybe

	case 0x0:
		str = "erase";
		break;
	case 0x1:
		str = "overwrite, then erase";
		break;
	case 0x2:
		str = "overwrite, complement, then random";
		break;
	case 0x3:
		str = "vendor defined";
		break;

	printf("[3-0] Supported Secure Removal Type: %s\n", str);

Background is that this information only makes sense when being somewhat
familiar with the spec. Without knowing the spec at all even the more
verbose printfs do not help, but when knowing the spec a more compact
writing is enough to remember what is meant.

> +
> +static void print_register_raw(u8 *reg, int index)
> +{
> +	int i;
> +
> +	if (index == 0)
> +		for (i = 0; i < EXT_CSD_BLOCKSIZE; i++) {
> +			if (i % 8 == 0)
> +				printf("%u:", i);
> +			printf(" %#02x", reg[i]);
> +			if (i % 8 == 7)
> +				printf("\n");
> +		}

	memory_display(reg, 0, EXT_CSD_BLOCKSIZE, 1, 0);

Should do it here.

> +static int do_extcsd(int argc, char *argv[])
> +{
> +	struct device_d		*dev;
> +	struct mci		*mci;
> +	struct mci_host		*host;
> +	u8			*dst;
> +	int			retval = 0;
> +	int			opt;
> +	char			*devname;
> +	int			index = 0;
> +	int			value = 0;
> +	int			write_operation = 0;
> +	int			always_write = 0;
> +	int			print_as_raw = 0;
> +
> +	if (argv[1] == NULL)
> +		return COMMAND_ERROR_USAGE;

argc contains the number of arguments. When argc is 1 then argv[1] is
undefined. It may or may not be NULL in this case. You want to use if
(argc < 2) here.

> +
> +	devname = argv[1];

You should use argv[optind] after parsing the arguments for the devname.
With this not only "extcsd <devname> [OPTIONS]" works but also "extcsd
[OPTIONS] <devname>". Don't forget to check if there actually is
argv[optind] by

	if (optind == argc)
		return COMMAND_ERROR_USAGE;

> +	if (!strncmp(devname, "/dev/", 5))
> +		devname += 5;
> +
> +	while ((opt = getopt(argc, argv, "i:v:yr")) > 0)
> +		switch (opt) {
> +		case 'i':
> +			index = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 'v':
> +			value = simple_strtoul(optarg, NULL, 0);
> +			write_operation = 1;
> +			break;
> +		case 'y':
> +			always_write = 1;
> +			break;
> +		case 'r':
> +			print_as_raw = 1;
> +			break;
> +		}
> +
> +	dev = get_device_by_name(devname);
> +	if (dev == NULL) {
> +		retval = -ENODEV;
> +		goto error;
> +	}
> +	mci = container_of(dev, struct mci, dev);
> +	if (mci == NULL) {
> +		retval = -ENOENT;
> +		goto error;
> +	}

Unfortunately this doesn't work properly. It works when the argument
really is a mmc devices, but it doesn't detect when the argument is some
other type of device. This code will happily use container_of on
something that is not a MMC device and probably crash barebox. What you
have to do is:

- add a struct list_head member to struct mci and put all mci devices
  to a list during registration
- create a struct mci *mci_get_device_by_name(const char *name)
  function and use it here.

> +	host = mci->host;
> +	if (host == NULL) {
> +		retval = -ENOENT;
> +		goto error;
> +	}
> +	dst = xmalloc(sizeof(*dst) * EXT_CSD_BLOCKSIZE);

xmalloc(EXT_CSD_BLOCKSIZE) is enough here.

> +	if (dst == NULL) {
> +		retval = -ENOMEM;
> +		goto error;
> +	}

xmalloc never fails. You don't need to check the return value.

> +
> +	retval = mci_send_ext_csd(mci, dst);
> +	if (retval != 0)
> +		goto error_with_mem;
> +
> +	if (dst[EXT_CSD_REV] < 3) {
> +		printf("MMC version 4.2 or lower are not supported");
> +		retval = 1;
> +		goto error_with_mem;
> +	}
> +
> +	if (write_operation)
> +		if (!print_field(dst, index)) {
> +			printf("No field with this index found. Abort write operation!\n");
> +		} else {
> +			write_field(mci, dst, index, value, always_write);
> +			printf("\nValue written!\n\n");
> +			retval = mci_send_ext_csd(mci, dst);
> +			if (retval != 0)
> +				goto error_with_mem;
> +			print_field(dst, index);
> +		}
> +	else
> +		if (print_as_raw)
> +			print_register_raw(dst, index);
> +		else
> +			print_register_readable(dst, index);
> +
> +error_with_mem:
> +	free(dst);
> +error:
> +	return retval;
> +}
> +
> +BAREBOX_CMD_HELP_START(extcsd)

Better rename this to mmc-extcsd so that the context of this command is
clear.

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
