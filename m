Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ct7si-00055a-Pu
 for barebox@lists.infradead.org; Wed, 29 Mar 2017 07:19:03 +0000
Date: Wed, 29 Mar 2017 09:18:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170329071837.mx2gpa7mjbheaotn@pengutronix.de>
References: <1490537627-14865-1-git-send-email-akurz@blala.de>
 <1490537627-14865-3-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490537627-14865-3-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 3/3] ARM i.MX50: Add support for i.MX50 based Amazon
 Kindle e-book readers
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Mar 26, 2017 at 04:13:47PM +0200, Alexander Kurz wrote:
> The Kindle Model No. D01100 (Kindle Wi-Fi), D01200 (Kindle Touch)
> and EY21 (Kindle Paperwhite) are refered as the Kindle 4th and 5th generation.
> Those models are based on an i.MX50 SoC and use LPDDR1 or LPDDR2 Memory.
> 
> The devices boot in internal boot mode from a build-in eMMC, alternatively
> some devices may be set into USB-downloader mode by pressing a specific key
> at startup.
> 
> Add support for the i.MX50 based Kindle device and make barebox a drop-in
> replacement for the factory shipped u-boot image.
> 
> Notable features:
> - Support for eMMC, USB, UART, I2C, SPI and Keys (except keyboard).
> - LPDDR1 and LPDDR2 setup is done via DCD, the same imximage may be used
>   for USB-startup and for installation.
> - Support for vendor specific ATAGs that are required for the Kindle-System.
> - usbserial barebox console access by pressing Select button at startup,
>   alternatively full console support on connector J14.
> 

> +/* 16 byte id for serial number */
> +#define ATAG_SERIAL16   0x5441000a
> +/* 16 byte id for a board revision */
> +#define ATAG_REVISION16 0x5441000b
> +
> +struct char16_tag {
> +	char data[16];
> +};
> +
> +static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
> +				    const char *value)
> +{
> +	struct char16_tag *target;
> +	target = ((void *) params) + sizeof(struct tag_header);
> +	params->hdr.tag = tag;
> +	params->hdr.size = tag_size(char16_tag);
> +	memcpy(target->data, value, sizeof target->data);
> +	return tag_next(params);
> +}
> +
> +static const char *get_env_16char_tag(const char *tag)
> +{
> +	static const char *default16 = "0000000000000000";
> +	const char *value;
> +	value = getenv(tag);
> +	if (!value) {
> +		printf("env var %s not found, using default\n", tag);
> +		return default16;
> +	}
> +	if (strlen(value) != 16) {
> +		printf("env var %s: expecting 16 characters, using default\n",
> +			tag);
> +		return default16;
> +	}
> +	printf("%s: %s\n", tag, value);
> +	return value;
> +}
> +
> +BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
> +	"Pass the kindle Serial as vendor-specific ATAG to linux");
> +BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
> +	"Pass the kindle BoardId as vendor-specific ATAG to linux");

Would something like the following work to get the serial/revision
variables?

static char *serial16;
static char *revision16;
static char *mac;

static int kindle_rev_init(void)
{
	int ret;
	size_t size;
	void *buf;

	ret = read_file_2("/dev/disk0.boot0.userdata", &size, &buf, 128);

	serial16 = xzalloc(17);
	revision16 = xzalloc(17);
	mac = xzalloc(17);

	if (!ret) {
		memcpy(serial16, buf, 16);
		memcpy(revision16, buf + 96, 16);
		memcpy(mac, buf + 48, 16);
	}

	globalvar_add_simple_string("board.serial16", &serial16);
	globalvar_add_simple_string("board.revision16", &revision16);
	globalvar_add_simple_string("board.mac", &mac);

	free(buf);
}

> +mci0.probe=1
> +addpart /dev/disk0.boot0 0x800@0x400(imx_header),0x3e000@0x1000(self),0x1400@0x3f000(userdata)
> +addpart /dev/disk0 0xe00000@0x41000(kernel),0xe00000@0xe41000(diags_kernel)

You would have to move this partitioning to device tree though.

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
