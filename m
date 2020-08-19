Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from protonic.xs4all.nl ([83.163.252.89])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8J2W-000661-6P
 for barebox@lists.infradead.org; Wed, 19 Aug 2020 08:01:45 +0000
Date: Wed, 19 Aug 2020 10:01:37 +0200
From: David Jander <david@protonic.nl>
Message-ID: <20200819100137.111321fb@erd988>
In-Reply-To: <20200819062741.GN13023@pengutronix.de>
References: <20200817081929.2329-1-o.rempel@pengutronix.de>
 <20200817081929.2329-6-o.rempel@pengutronix.de>
 <20200819062741.GN13023@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v4 5/7] ARM: protonic-imx6: port Protonic specific board
 code
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Wed, 19 Aug 2020 08:27:41 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Aug 17, 2020 at 10:19:27AM +0200, Oleksij Rempel wrote:
> > +static int prt_imx6_set_mac(struct prt_imx6_priv *priv,
> > +			    struct prti6q_rfid_contents *rfid)
> > +{
> > +	struct device_d *dev = priv->dev;
> > +	struct device_node *node;
> > +
> > +	node = of_find_node_by_alias(of_get_root_node(), "ethernet0");
> > +	if (!node) {
> > +		dev_err(dev, "Cannot find FEC!\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	if (!is_valid_ether_addr(&rfid->mac[0])) {
> > +		dev_err(dev, "bad MAC addr\n");  
> 
> Maybe print the failed MAC address? ethaddr_to_string can be of help
> here.

The important thing is to know the MAC address is correctly stored (CS ok) but
invalid. Printing the invalid MAC address itself might be helpful too, but is
not really needed here. It can be extracted "by hand" while investigating the
issue. Something that normally shouldn't be occurring.
OTOH, ethaddr_to_string() is already linked in, so binary size increase is
probably negligible for this. I'm fine either way.

> > +		return -EILSEQ;
> > +	}
> > +
> > +	of_eth_register_ethaddr(node, &rfid->mac[0]);
> > +
> > +	return 0;
> > +}
> > +
> > +static int prt_of_fixup_serial(struct device_node *dstroot, void *arg)
> > +{
> > +	struct device_node *srcroot = arg;
> > +	const char *ser;
> > +	int len;
> > +
> > +	ser = of_get_property(srcroot, "serial-number", &len);
> > +	return of_set_property(dstroot, "serial-number", ser, len, 1);
> > +}
> > +
> > +static void prt_oftree_fixup_serial(const char *serial)
> > +{
> > +	struct device_node *root = of_get_root_node();
> > +
> > +	of_set_property(root, "serial-number", serial, strlen(serial) +
> > 1, 1);
> > +	of_register_fixup(prt_of_fixup_serial, root);
> > +}
> > +
> > +static int prt_imx6_set_serial(struct prt_imx6_priv *priv,
> > +			       struct prti6q_rfid_contents *rfid)
> > +{
> > +	rfid->serial[9] = 0; /* Failsafe */
> > +	dev_info(priv->dev, "Serial number: %s\n", rfid->serial);
> > +	prt_oftree_fixup_serial(rfid->serial);
> > +
> > +	return 0;
> > +}
> > +
> > +static int prt_imx6_read_i2c_mac_serial(struct prt_imx6_priv *priv)
> > +{
> > +	struct device_d *dev = priv->dev;
> > +	struct prti6q_rfid_contents rfid;
> > +	int ret;
> > +
> > +	ret = prt_imx6_read_rfid(priv, &rfid, sizeof(rfid));
> > +	if (ret)
> > +		return ret;
> > +
> > +	if (rfid.cs != prt_imx6_calc_rfid_cs(&rfid, sizeof(rfid))) {
> > +		dev_err(dev, "RFID: bad checksum!\n");
> > +		return -EBADMSG;
> > +	}
> > +
> > +	ret = prt_imx6_set_mac(priv, &rfid);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = prt_imx6_set_serial(priv, &rfid);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
> > +
> > +#define OTG_PORTSC1 (MX6_OTG_BASE_ADDR+0x184)
> > +
> > +static void prt_imx6_check_usb_boot(void *data)
> > +{
> > +	struct prt_imx6_priv *priv = data;
> > +	struct device_d *dev = priv->dev;
> > +	char *second_word, *bootsrc, *usbdisk;
> > +	unsigned int v;
> > +	ssize_t size;
> > +	char buf[16];
> > +	int fd, ret;
> > +
> > +	v = *((unsigned int *)OTG_PORTSC1);  
> 
> readl
> 
> > +	if ((v & 0x0c00) == 0) /* LS == SE0 ==> nothing connected */
> > +		return;
> > +
> > +	usb_rescan();
> > +
> > +	ret = mkdir("/usb", 0);
> > +	if (ret) {
> > +		dev_err(dev, "Cannot mkdir /usb\n");
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	ret = mount("/dev/disk0.0", NULL, "usb", NULL);
> > +	if (ret) {
> > +		dev_warn(dev, "Filed to mount USB Disk partition with
> > error (%i), trying bare device\n", ret);  
> 
> s/Filed/Failed/
> 
> A warning is a bit harsh here. When this is a valid usecase then it's a
> gentle information at best.

Ack.

> I would explicitly test for existence of /dev/disk0.0 before trying to
> mount it, because if it does exist and mounting fails then there's no
> point in trying to mount the raw device.

Ack.

> > +
> > +		ret = mount("/dev/disk0", NULL, "usb", NULL);
> > +		if (ret) {
> > +			dev_err(dev, "USB mount failed!\n");
> > +			goto exit_usb_boot;
> > +		}
> > +		usbdisk = "disk0";
> > +	} else {
> > +		usbdisk = "disk0.0";
> > +	}
> > +
> > +	fd = open("/usb/boot_target", O_RDONLY);
> > +	if (fd < 0) {
> > +		dev_err(dev, "Can't open /usb/boot_target file\n");  
> 
> So some arbitrary USB stick is inserted. Is this really an error or just
> a case of saying "boot_target file not found on USB stick. Continuing
> normal boot"?

Ack. This probably shouldn't be an error... but maybe a warning is OK.

> > +		ret = fd;
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	size = read(fd, buf, sizeof(buf));
> > +	close(fd);
> > +	if (size < 0) {
> > +		ret = size;
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	/* length of "vicut1 usb", the shortest possible target */
> > +	if (size < sizeof("vicut1 usb")) {  
> 
> When the file contains "vicut1 usb" then this is without the trailing \0
> whereas sizeof("vicut1 usb") gives you the size of the string including
> the trailing \0, so I believe in this case you error out.

Ack. This should be "strlen" or (sizeof("vicut1 usb")-1) with a proper comment.

FYI, original code was (v == size read from file):

 if (v < 10) { /* length of "vicut1 usb", the shortest possible target */
...

> > +		dev_err(dev, "Invalid boot target file!\n");
> > +		ret = -EINVAL;
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	if (strncmp(buf, priv->name, 6) && strncmp(buf, "prti6qp ", 8)) {
> > +		dev_err(dev, "Boot target for a different board! (%s
> > %s)\n",
> > +			buf, priv->name);
> > +		ret = -EINVAL;
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	second_word = strchr(buf, 32);  
> 
> ' '
> 
> > +	second_word++;  
> 
> 
> You assume that buf contains two words. strchr() returns NULL if it
> doesn't.

Ack. A check for NULL is needed here.

> I think you should do the split up in words before testing any contents
> of them. Then you wouldn't need all these questionable strncmp and could
> use plain strcmp.
> 
> > +
> > +	if (strncmp(second_word, "usb", 3) == 0) {
> > +		bootsrc = usbdisk;
> > +	} else if (strncmp(second_word, "recovery", 8) == 0) {
> > +		bootsrc = "recovery";
> > +	} else {
> > +		dev_err(dev, "Unknown boot target!\n");  
> 
> Here it would be nice two know for the user what the second word was.

But that would risk the word to not be printable and mess up the console.
Shouldn't be done without further checks IMHO, and that is too costly for the
purpose.

> > +		ret = -ENODEV;
> > +		goto exit_usb_boot;
> > +	}
> > +
> > +	ret = setenv("global.boot.default", bootsrc);
> > +	if (ret)
> > +		goto exit_usb_boot;
> > +
> > +	return;
> > +
> > +exit_usb_boot:
> > +	dev_err(dev, "Failed to run usb boot: %i\n", ret);  
> 
> You can print a nicer error message with strerror(-ret).

Ack.

> > +
> > +	return;
> > +}
> > +
> > +static int prt_imx6_env_init(struct prt_imx6_priv *priv)
> > +{
> > +	const struct prt_machine_data *dcfg = priv->dcfg;
> > +	struct device_d *dev = priv->dev;
> > +	char *delay, *bootsrc;
> > +	int ret;
> > +
> > +	ret = setenv("global.linux.bootargs.base", "consoleblank=0
> > vt.color=0x00");
> > +	if (ret)
> > +		goto exit_env_init;
> > +
> > +	if (dcfg->flags & PRT_IMX6_USB_LONG_DELAY)
> > +		priv->usb_delay = 4;
> > +	else
> > +		priv->usb_delay = 1;
> > +
> > +	/* the usb_delay value is used for poller_call_async() */
> > +	delay = basprintf("%d", priv->usb_delay);
> > +	ret = setenv("global.autoboot_timeout", delay);
> > +	if (ret)
> > +		goto exit_env_init;
> > +
> > +	if (dcfg->flags & PRT_IMX6_BOOTCHOOSER)
> > +		bootsrc = "bootchooser";
> > +	else
> > +		bootsrc = "mmc2";
> > +
> > +	ret = setenv("global.boot.default", bootsrc);
> > +	if (ret)
> > +		goto exit_env_init;
> > +
> > +	dev_info(dev, "Board specific env init is done\n");
> > +	return 0;
> > +
> > +exit_env_init:
> > +	dev_err(dev, "Failed to set env: %i\n", ret);
> > +
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_bbu(struct prt_imx6_priv *priv)
> > +{
> > +	const struct prt_machine_data *dcfg = priv->dcfg;
> > +	u32 emmc_flags = 0;
> > +	int ret;
> > +
> > +	if (dcfg->flags & PRT_IMX6_BOOTSRC_SPI_NOR) {
> > +		ret = imx6_bbu_internal_spi_i2c_register_handler("SPI",
> > "/dev/m25p0.barebox",
> > +
> > BBU_HANDLER_FLAG_DEFAULT);
> > +		if (ret)
> > +			goto exit_bbu;
> > +	} else {
> > +		emmc_flags = BBU_HANDLER_FLAG_DEFAULT;
> > +	}
> > +
> > +	ret = imx6_bbu_internal_mmcboot_register_handler("eMMC",
> > "/dev/mmc2",
> > +						   emmc_flags);
> > +	if (ret)
> > +		goto exit_bbu;
> > +
> > +	ret = imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc0",
> > 0);
> > +	if (ret)
> > +		goto exit_bbu;
> > +
> > +	return 0;
> > +exit_bbu:
> > +	dev_err(priv->dev, "Failed to register bbu: %i\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_devices_init(void)
> > +{
> > +	struct prt_imx6_priv *priv = prt_priv;
> > +	int ret;
> > +
> > +	if (!priv)
> > +		return 0;
> > +
> > +	if (priv->dcfg->init)
> > +		priv->dcfg->init(priv);
> > +
> > +	prt_imx6_bbu(priv);
> > +
> > +	prt_imx6_read_i2c_mac_serial(priv);
> > +
> > +	prt_imx6_env_init(priv);
> > +
> > +	ret = poller_async_register(&priv->poller, "usb-boot");
> > +	if (ret) {
> > +		dev_err(priv->dev, "can't setup poller\n");
> > +		return ret;
> > +	}
> > +
> > +	poller_call_async(&priv->poller, priv->usb_delay * SECOND,
> > +			  &prt_imx6_check_usb_boot, priv);
> > +
> > +	return 0;
> > +}
> > +late_initcall(prt_imx6_devices_init);
> > +
> > +static int prt_imx6_init_kvg_set_ctrl(struct prt_imx6_priv *priv, bool
> > val) +{
> > +	int ret;
> > +
> > +	ret = gpio_direction_output(GPIO_ON1_CTRL, val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = gpio_direction_output(GPIO_ON2_CTRL, val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> > +}
> > +
> > +static int prt_imx6_yaco_set_kvg_power_mode(struct prt_imx6_priv *priv,
> > +					    char *serial)  
> 
> const char *serial
> 
> > +{
> > +	static const char command[] =
> > "{\"command\":\"mode\",\"value\":\"kvg\",\"on2\":true}";
> > +	struct device_d *dev = priv->dev;
> > +	struct console_device *yccon;
> > +	int ret;
> > +
> > +	yccon = of_console_get_by_alias(serial);
> > +	if (!yccon) {
> > +		dev_dbg(dev, "Cant find the %s node, try later\n",
> > serial);
> > +		return -EPROBE_DEFER;
> > +	}
> > +
> > +	ret = console_set_baudrate(yccon, 115200);
> > +	if (ret)
> > +		goto exit_yaco_set_kvg_power_mode;
> > +
> > +	yccon->puts(yccon, command, sizeof(command));
> > +
> > +	dev_info(dev, "Send YaCO power init sequence to %s\n", serial);
> > +	return 0;
> > +
> > +exit_yaco_set_kvg_power_mode:
> > +	dev_err(dev, "Failed to set YaCO pw mode: %i", ret);
> > +
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_init_kvg_power(struct prt_imx6_priv *priv,
> > +				   enum prt_imx6_kvg_pw_mode pw_mode)
> > +{
> > +	const char *mode;
> > +	int ret;
> > +
> > +	ret = gpio_request_array(prt_imx6_kvg_gpios,
> > +				 ARRAY_SIZE(prt_imx6_kvg_gpios));
> > +	if (ret)
> > +		goto exit_init_kvg_vicut;
> > +
> > +	mdelay(1);
> > +
> > +	if (!gpio_get_value(GPIO_DIP1_FB))
> > +		pw_mode = PW_MODE_KUBOTA;
> > +
> > +	switch (pw_mode) {
> > +	case PW_MODE_KVG_WITH_YACO:
> > +		mode = "KVG (with YaCO)";
> > +
> > +		/* GPIO_ON1_CTRL and GPIO_ON2_CTRL are N.C. on the SoC for
> > +		 * older revisions */
> > +
> > +		/* Inform YaCO of power mode */
> > +		ret = prt_imx6_yaco_set_kvg_power_mode(priv, "serial0");
> > +		break;
> > +	case PW_MODE_KVG_NEW:
> > +		mode = "KVG (new)";
> > +
> > +		ret = prt_imx6_init_kvg_set_ctrl(priv, true);
> > +		if (ret)
> > +			goto exit_init_kvg_vicut;
> > +		break;
> > +	case PW_MODE_KUBOTA:
> > +		mode = "Kubota";
> > +		ret = prt_imx6_init_kvg_set_ctrl(priv, false);
> > +		if (ret)
> > +			goto exit_init_kvg_vicut;
> > +		break;
> > +	default:
> > +		ret = -ENODEV;
> > +		goto exit_init_kvg_vicut;
> > +	}
> > +
> > +	dev_info(priv->dev, "Power mode: %s\n", mode);
> > +
> > +	return 0;
> > +
> > +exit_init_kvg_vicut:
> > +	dev_err(priv->dev, "KvG power init failed: %i\n", ret);
> > +
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_init_victgo(struct prt_imx6_priv *priv)
> > +{
> > +	int ret = 0;
> > +
> > +	/* Bit 1 of HW-REV is pulled low by 2k2, but must be high on some
> > +	 * revisions
> > +	 */
> > +	if (priv->hw_rev & 2) {
> > +		ret = gpio_direction_output(IMX_GPIO_NR(2, 9), 1);
> > +		if (ret) {
> > +			dev_err(priv->dev, "Failed to set gpio up\n");
> > +			return ret;
> > +		}
> > +	}
> > +
> > +	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_NEW);
> > +}
> > +
> > +static int prt_imx6_init_kvg_new(struct prt_imx6_priv *priv)
> > +{
> > +	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_NEW);
> > +}
> > +
> > +static int prt_imx6_init_kvg_yaco(struct prt_imx6_priv *priv)
> > +{
> > +	return prt_imx6_init_kvg_power(priv, PW_MODE_KVG_WITH_YACO);
> > +}
> > +
> > +static int prt_imx6_rfid_fixup(struct prt_imx6_priv *priv,
> > +			       struct device_node *root)
> > +{
> > +	const struct prt_machine_data *dcfg = priv->dcfg;
> > +	struct device_node *node, *i2c_node;
> > +	char *eeprom_node_name, *alias;
> > +	int na, ns, len = 0;
> > +	int ret;
> > +	u8 *tmp;
> > +
> > +	alias = basprintf("i2c%d", dcfg->i2c_adapter);
> > +	if (!alias) {
> > +		ret = -ENOMEM;
> > +		goto exit_error;
> > +	}
> > +
> > +	i2c_node = of_find_node_by_alias(root, alias);
> > +	if (!i2c_node) {
> > +		dev_err(priv->dev, "Unsupported i2c adapter\n");
> > +		ret = -ENODEV;
> > +		goto free_alias;
> > +	}
> > +
> > +	eeprom_node_name = basprintf("/eeprom@%x", dcfg->i2c_addr);
> > +	if (!eeprom_node_name) {
> > +		ret = -ENOMEM;
> > +		goto free_alias;
> > +	}
> > +
> > +	node = of_create_node(i2c_node, eeprom_node_name);
> > +	if (!node) {
> > +		dev_err(priv->dev, "Failed to create node %s\n",
> > +			eeprom_node_name);
> > +		ret = -ENOMEM;
> > +		goto free_eeprom;
> > +	}
> > +
> > +	ret = of_property_write_string(node, "compatible",
> > "atmel,24c256");
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	na = of_n_addr_cells(node);
> > +	ns = of_n_size_cells(node);
> > +	tmp = xzalloc((na + ns) * 4);
> > +
> > +	of_write_number(tmp + len, dcfg->i2c_addr, na);
> > +	len += na * 4;
> > +	of_write_number(tmp + len, 0, ns);
> > +	len += ns * 4;
> > +
> > +	ret = of_set_property(node, "reg", tmp, len, 1);
> > +	kfree(tmp);
> > +	if (ret)
> > +		goto free_eeprom;
> > +
> > +	return 0;
> > +free_eeprom:
> > +	kfree(eeprom_node_name);
> > +free_alias:
> > +	kfree(alias);
> > +exit_error:
> > +	dev_err(priv->dev, "Failed to apply fixup: %i\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_of_fixup(struct device_node *root, void *data)
> > +{
> > +	struct prt_imx6_priv *priv = data;
> > +	int ret;
> > +
> > +	if (!root) {
> > +		dev_err(priv->dev, "Unable to find the root node\n");
> > +		return -ENODEV;
> > +	}  
> 
> This means someone called of_fix_tree() with a NULL pointer. In this
> case he deserves the resulting backtrace. No need to check this.

Good point.

> > +
> > +	ret = prt_imx6_rfid_fixup(priv, root);
> > +	if (ret)
> > +		goto exit_of_fixups;
> > +
> > +	return 0;
> > +exit_of_fixups:
> > +	dev_err(priv->dev, "Failed to apply OF fixups: %i\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_get_id(struct prt_imx6_priv *priv)
> > +{
> > +	struct gpio gpios_type[] = GPIO_HW_TYPE_ID;
> > +	struct gpio gpios_rev[] = GPIO_HW_REV_ID;
> > +	int ret;
> > +
> > +	ret = gpio_array_to_id(gpios_type, ARRAY_SIZE(gpios_type),
> > &priv->hw_id);
> > +	if (ret)
> > +		goto exit_get_id;
> > +
> > +	ret = gpio_array_to_id(gpios_rev, ARRAY_SIZE(gpios_rev),
> > &priv->hw_rev);
> > +	if (ret)
> > +		goto exit_get_id;
> > +
> > +	return 0;
> > +exit_get_id:
> > +	dev_err(priv->dev, "Failed to read gpio ID: %i\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_get_dcfg(struct prt_imx6_priv *priv)
> > +{
> > +	const struct prt_machine_data *dcfg, *found = NULL;
> > +	int ret;
> > +
> > +	dcfg = of_device_get_match_data(priv->dev);
> > +	if (!dcfg) {
> > +		ret = -EINVAL;
> > +		goto exit_get_dcfg;
> > +	}
> > +
> > +	for (; dcfg->hw_id != UINT_MAX; dcfg++) {
> > +		if (dcfg->hw_id != priv->hw_id)
> > +			continue;
> > +		if (dcfg->hw_rev > priv->hw_rev)
> > +			break;
> > +		found = dcfg;
> > +	}
> > +
> > +	if (!found) {
> > +		ret = -ENODEV;
> > +		goto exit_get_dcfg;
> > +	}
> > +
> > +	priv->dcfg = found;
> > +
> > +	return 0;
> > +exit_get_dcfg:
> > +	dev_err(priv->dev, "Failed to get dcfg: %i\n", ret);
> > +	return ret;
> > +}
> > +
> > +static int prt_imx6_probe(struct device_d *dev)
> > +{
> > +	struct prt_imx6_priv *priv;
> > +	const char *name, *ptr;
> > +	struct param_d *p;
> > +	int ret;
> > +
> > +	priv = kzalloc(sizeof(*priv), GFP_KERNEL);
> > +	if (!priv)
> > +		return -ENOMEM;  
> 
> xzalloc()?
> 
> Sascha

Best regards,

-- 
David Jander
Protonic Holland.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
