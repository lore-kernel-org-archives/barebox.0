Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYiZ2-0002Lu-SF
 for barebox@lists.infradead.org; Sat, 04 May 2013 19:56:15 +0000
Received: from mail435.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A5781FF998C
 for <barebox@lists.infradead.org>; Sat,  4 May 2013 21:55:49 +0200 (CEST)
Date: Sat, 4 May 2013 21:51:25 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130504195125.GJ13393@game.jcrosoft.org>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367599871-28479-3-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH 2/7] scripts: new kwbimage manipulation tool for
 Marvell SoC boot images
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On 18:51 Fri 03 May     , Thomas Petazzoni wrote:
> The Marvell EBU SoCs (Kirkwood, Armada 370, Armada XP) have a BootROM
> that understand a specific image format, composed of a main header,
> several extension headers and a paylod. This image can be booted from
> NAND, SPI, SATA, UART, NOR, etc.
> 
> This patch adds a tool that allows to extract the components and
> configuration of existing images, and to create new images.

I don't like this

please as on imx in barebox directly

and drop this tool
> 
> Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> ---
>  scripts/.gitignore |    1 +
>  scripts/Makefile   |    3 +-
>  scripts/kwbimage.c | 1224 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 1227 insertions(+), 1 deletion(-)
>  create mode 100644 scripts/kwbimage.c
> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 1ca6603..414de7f 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -2,6 +2,7 @@ bareboxenv
>  bin2c
>  gen_netx_image
>  kallsyms
> +kwbimage
>  mk-am35xx-spi-image
>  mkimage
>  mkublheader
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 08b325c..22ec4b6 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -8,6 +8,7 @@ hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
>  hostprogs-y                      += bin2c
>  hostprogs-y                      += mkimage
>  hostprogs-y                      += bareboxenv
> +hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage
>  hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
>  hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
>  hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
> @@ -27,7 +28,7 @@ subdir-$(CONFIG_X86)             += setupmbr
>  subdir-	+= basic kconfig setupmbr
>  
>  quiet_cmd_csingle	= CC      $@
> -      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
> +      cmd_csingle	= $(CC)  -Wp,-MD,$(depfile) $(CFLAGS) -o $@ $<
>  
>  obj-$(CONFIG_BAREBOXENV_TARGET)	+= bareboxenv-target
>  
> diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
> new file mode 100644
> index 0000000..864114d
> --- /dev/null
> +++ b/scripts/kwbimage.c
> @@ -0,0 +1,1224 @@
> +/*
> + * Image manipulator for Kirkwood, Armada 370 and Armada XP platforms.
> + *
> + * (C) Copyright 2013 Thomas Petazzoni
> + * <thomas.petazzoni@free-electrons.com>
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + * This tool allows to extract and create bootable images for Marvell
> + * Kirkwood, Marvell Armada 370 and Armada XP SoCs. It supports two
> + * versions of the bootable image format: version 0 (used on Marvell
> + * Kirkwood) and version 1 (used on Marvell Armada 370/XP).
> + *
> + * To extract an image, run:
> + *  ./scripts/kwbimage -x -i <image-file> -o <some-directory>
> + *
> + * In <some-directory>, kwbimage will output 'kwbimage.cfg', the
> + * configuration file that describes the image, 'payload', which is
> + * the bootloader code itself, and it may output a 'binary.0' file
> + * that corresponds to a binary blob (only possible in version 1
> + * images).
> + *
> + * To create an image, run:
> + *  ./scripts/kwbimage -x -c <image-cfg-file> -o <image-file>
> + *
> + * The given configuration file is in the format of the 'kwbimage.cfg'
> + * file, and should reference the payload file (generally the
> + * bootloader code) and optionally a binary blob.
> + *
> + * Not implemented: support for the register headers and secure
> + * headers in v1 images
> + */
> +
> +#define _GNU_SOURCE
> +#include <stdio.h>
> +#include <stdint.h>
> +#include <sys/types.h>
> +#include <sys/stat.h>
> +#include <fcntl.h>
> +#include <unistd.h>
> +#include <sys/mman.h>
> +#include <unistd.h>
> +#include <stdlib.h>
> +#include <string.h>
> +
> +#define ALIGN_SUP(x, a) (((x) + (a - 1)) & ~(a - 1))
> +
> +/* Structure of the main header, version 0 (Kirkwood) */
> +struct main_hdr_v0 {
> +	uint8_t  blockid;		/*0     */
> +	uint8_t  nandeccmode;		/*1     */
> +	uint16_t nandpagesize;		/*2-3   */
> +	uint32_t blocksize;		/*4-7   */
> +	uint32_t rsvd1;			/*8-11  */
> +	uint32_t srcaddr;		/*12-15 */
> +	uint32_t destaddr;		/*16-19 */
> +	uint32_t execaddr;		/*20-23 */
> +	uint8_t  satapiomode;		/*24    */
> +	uint8_t  rsvd3;			/*25    */
> +	uint16_t ddrinitdelay;		/*26-27 */
> +	uint16_t rsvd2;			/*28-29 */
> +	uint8_t  ext;			/*30    */
> +	uint8_t  checksum;		/*31    */
> +};
> +
> +struct ext_hdr_v0_reg {
> +	uint32_t raddr;
> +	uint32_t rdata;
> +};
> +
> +#define EXT_HDR_V0_REG_COUNT ((0x1dc - 0x20)/sizeof(struct ext_hdr_v0_reg))
> +
> +struct ext_hdr_v0 {
> +	uint32_t              offset;
> +	uint8_t               reserved[0x20 - sizeof(uint32_t)];
> +	struct ext_hdr_v0_reg rcfg[EXT_HDR_V0_REG_COUNT];
> +	uint8_t               reserved2[7];
> +	uint8_t               checksum;
> +};
> +
> +/* Structure of the main header, version 1 (Armada 370, Armada XP) */
> +struct main_hdr_v1 {
> +	uint8_t  blockid;               /* 0 */
> +	uint8_t  reserved1;             /* 1 */
> +	uint16_t reserved2;             /* 2-3 */
> +	uint32_t blocksize;             /* 4-7 */
> +	uint8_t  version;               /* 8 */
> +	uint8_t  headersz_msb;          /* 9 */
> +	uint16_t headersz_lsb;          /* A-B */
> +	uint32_t srcaddr;               /* C-F */
> +	uint32_t destaddr;              /* 10-13 */
> +	uint32_t execaddr;              /* 14-17 */
> +	uint8_t  reserved3;             /* 18 */
> +	uint8_t  nandblocksize;         /* 19 */
> +	uint8_t  nandbadblklocation;    /* 1A */
> +	uint8_t  reserved4;             /* 1B */
> +	uint16_t reserved5;             /* 1C-1D */
> +	uint8_t  ext;                   /* 1E */
> +	uint8_t  checksum;              /* 1F */
> +};
> +
> +/*
> + * Header for the optional headers, version 1 (Armada 370, Armada XP)
> + */
> +struct opt_hdr_v1 {
> +	uint8_t  headertype;
> +	uint8_t  headersz_msb;
> +	uint16_t headersz_lsb;
> +	char     data[0];
> +};
> +
> +/*
> + * Various values for the opt_hdr_v1->headertype field, describing the
> + * different types of optional headers. The "secure" header contains
> + * informations related to secure boot (encryption keys, etc.). The
> + * "binary" header contains ARM binary code to be executed prior to
> + * executing the main payload (usually the bootloader). This is
> + * typically used to execute DDR3 training code. The "register" header
> + * allows to describe a set of (address, value) tuples that are
> + * generally used to configure the DRAM controller.
> + */
> +#define OPT_HDR_V1_SECURE_TYPE   0x1
> +#define OPT_HDR_V1_BINARY_TYPE   0x2
> +#define OPT_HDR_V1_REGISTER_TYPE 0x3
> +
> +#define KWBHEADER_V1_SIZE(hdr) \
> +	(((hdr)->headersz_msb << 16) | (hdr)->headersz_lsb)
> +
> +struct boot_mode {
> +	unsigned int id;
> +	const char *name;
> +};
> +
> +struct boot_mode boot_modes[] = {
> +	{ 0x4D, "i2c"  },
> +	{ 0x5A, "spi"  },
> +	{ 0x8B, "nand" },
> +	{ 0x78, "sata" },
> +	{ 0x9C, "pex"  },
> +	{ 0x69, "uart" },
> +	{},
> +};
> +
> +struct nand_ecc_mode {
> +	unsigned int id;
> +	const char *name;
> +};
> +
> +struct nand_ecc_mode nand_ecc_modes[] = {
> +	{ 0x00, "default" },
> +	{ 0x01, "hamming" },
> +	{ 0x02, "rs" },
> +	{ 0x03, "disabled" },
> +	{},
> +};
> +
> +#define BINARY_MAX_ARGS 8
> +
> +/* In-memory representation of a line of the configuration file */
> +struct image_cfg_element {
> +	enum {
> +		IMAGE_CFG_VERSION = 0x1,
> +		IMAGE_CFG_BOOT_FROM,
> +		IMAGE_CFG_DEST_ADDR,
> +		IMAGE_CFG_EXEC_ADDR,
> +		IMAGE_CFG_NAND_BLKSZ,
> +		IMAGE_CFG_NAND_BADBLK_LOCATION,
> +		IMAGE_CFG_BINARY,
> +		IMAGE_CFG_PAYLOAD,
> +		IMAGE_CFG_DATA,
> +	} type;
> +	union {
> +		unsigned int version;
> +		const char *boot_from;
> +		struct {
> +			const char *file;
> +			unsigned int args[BINARY_MAX_ARGS];
> +			unsigned int nargs;
> +		} binary;
> +		const char *payload;
> +		unsigned int dstaddr;
> +		unsigned int execaddr;
> +		unsigned int nandblksz;
> +		unsigned int nandbadblklocation;
> +		struct ext_hdr_v0_reg regdata;
> +	};
> +};
> +
> +/*
> + * Byte 8 of the image header contains the version number. In the v0
> + * header, byte 8 was reserved, and always set to 0. In the v1 header,
> + * byte 8 has been changed to a proper field, set to 1.
> + */
> +static unsigned int image_version(void *header)
> +{
> +	unsigned char *ptr = header;
> +	return ptr[8];
> +}
> +
> +/*
> + * Utility functions to manipulate boot mode and ecc modes (convert
> + * them back and forth between description strings and the
> + * corresponding numerical identifiers).
> + */
> +
> +static const char *image_boot_mode_name(unsigned int id)
> +{
> +	int i;
> +	for (i = 0; boot_modes[i].name; i++)
> +		if (boot_modes[i].id == id)
> +			return boot_modes[i].name;
> +	return NULL;
> +}
> +
> +unsigned int image_boot_mode_id(const char *boot_mode_name)
> +{
> +	int i;
> +	for (i = 0; boot_modes[i].name; i++)
> +		if (!strcmp(boot_modes[i].name, boot_mode_name))
> +			return boot_modes[i].id;
> +
> +	return 0;
> +}
> +
> +static const char *image_nand_ecc_mode_name(unsigned int id)
> +{
> +	int i;
> +	for (i = 0; nand_ecc_modes[i].name; i++)
> +		if (nand_ecc_modes[i].id == id)
> +			return nand_ecc_modes[i].name;
> +	return NULL;
> +}
> +
> +/*
> + * Compute a 8-bit checksum of a memory area. This algorithm follows
> + * the requirements of the Marvell SoC BootROM specifications.
> + */
> +static uint8_t image_checksum8(void *start, uint32_t len)
> +{
> +	uint8_t csum = 0;
> +	uint8_t *p = start;
> +
> +	/* check len and return zero checksum if invalid */
> +	if (!len)
> +		return 0;
> +
> +	do {
> +		csum += *p;
> +		p++;
> +	} while (--len);
> +
> +	return csum;
> +}
> +
> +static uint32_t image_checksum32 (void *start, uint32_t len)
> +{
> +	uint32_t csum = 0;
> +	uint32_t *p = start;
> +
> +	/* check len and return zero checksum if invalid */
> +	if (!len)
> +		return 0;
> +
> +	if (len % sizeof(uint32_t)) {
> +		fprintf (stderr, "Length %d is not in multiple of %zu\n",
> +			 len, sizeof(uint32_t));
> +		return 0;
> +	}
> +
> +	do {
> +		csum += *p;
> +		p++;
> +		len -= sizeof(uint32_t);
> +	} while (len > 0);
> +
> +	return csum;
> +}
> +
> +static void usage(const char *prog)
> +{
> +	printf("Usage: %s [-c | -x] -i <input> -o <output>\n", prog);
> +	printf("   -c: create a new image\n");
> +	printf("   -x: extract an existing image\n");
> +	printf("   -i: input file\n");
> +	printf("       when used with -c, should point to a kwbimage.cfg file\n");
> +	printf("       when used with -x, should point to the image to be extracted\n");
> +	printf("   -o: output file/directory\n");
> +	printf("       when used with -c, should point to the image file to create\n");
> +	printf("       when used with -x, should point to a directory when the image will be extracted\n");
> +}
> +
> +static int image_extract_payload(void *payload, size_t sz, const char *output)
> +{
> +	char *imageoutname;
> +	FILE *imageout;
> +	int ret;
> +
> +	ret = asprintf(&imageoutname, "%s/payload", output);
> +	if (ret < 0) {
> +		fprintf(stderr, "Cannot allocate memory\n");
> +		return -1;
> +	}
> +
> +	imageout = fopen(imageoutname, "w+");
> +	if (!imageout) {
> +		fprintf(stderr, "Could not open output file %s\n",
> +			imageoutname);
> +		free(imageoutname);
> +		return -1;
> +	}
> +
> +	ret = fwrite(payload, sz, 1, imageout);
> +	if (ret != 1) {
> +		fprintf(stderr, "Could not write to open file %s\n",
> +			imageoutname);
> +		fclose(imageout);
> +		free(imageoutname);
> +		return -1;
> +	}
> +
> +	fclose(imageout);
> +	free(imageoutname);
> +	return 0;
> +}
> +
> +static int image_extract_v0(void *fdimap, const char *output, FILE *focfg)
> +{
> +	struct main_hdr_v0 *main_hdr = fdimap;
> +	struct ext_hdr_v0 *ext_hdr;
> +	const char *boot_mode_name;
> +	uint32_t *img_checksum;
> +	size_t payloadsz;
> +	int cksum, i;
> +
> +	/*
> +	 * Verify checksum. When calculating the header, discard the
> +	 * last byte of the header, which itself contains the
> +	 * checksum.
> +	 */
> +	cksum = image_checksum8(main_hdr, sizeof(struct main_hdr_v0)-1);
> +	if (cksum != main_hdr->checksum) {
> +		fprintf(stderr,
> +			"Invalid main header checksum: 0x%08x vs. 0x%08x\n",
> +			cksum, main_hdr->checksum);
> +		return -1;
> +	}
> +
> +	boot_mode_name = image_boot_mode_name(main_hdr->blockid);
> +	if (!boot_mode_name) {
> +		fprintf(stderr, "Invalid boot ID: 0x%x\n",
> +			main_hdr->blockid);
> +		return -1;
> +	}
> +
> +	fprintf(focfg, "VERSION 0\n");
> +	fprintf(focfg, "BOOT_FROM %s\n", boot_mode_name);
> +	fprintf(focfg, "DESTADDR %08x\n", main_hdr->destaddr);
> +	fprintf(focfg, "EXECADDR %08x\n", main_hdr->execaddr);
> +
> +	if (!strcmp(boot_mode_name, "nand")) {
> +		const char *nand_ecc_mode =
> +			image_nand_ecc_mode_name(main_hdr->nandeccmode);
> +		fprintf(focfg, "NAND_ECC_MODE %s\n",
> +			nand_ecc_mode);
> +		fprintf(focfg, "NAND_PAGE_SIZE %08x\n",
> +			main_hdr->nandpagesize);
> +	}
> +
> +	/* No extension header, we're done */
> +	if (!main_hdr->ext)
> +		return 0;
> +
> +	ext_hdr = fdimap + sizeof(struct main_hdr_v0);
> +
> +	for (i = 0; i < EXT_HDR_V0_REG_COUNT; i++) {
> +		if (ext_hdr->rcfg[i].raddr == 0 &&
> +		    ext_hdr->rcfg[i].rdata == 0)
> +			break;
> +
> +		fprintf(focfg, "DATA %08x %08x\n",
> +			ext_hdr->rcfg[i].raddr,
> +			ext_hdr->rcfg[i].rdata);
> +	}
> +
> +	/* The image is concatenated with a 32 bits checksum */
> +	payloadsz = main_hdr->blocksize - sizeof(uint32_t);
> +	img_checksum = (uint32_t *) (fdimap + main_hdr->srcaddr + payloadsz);
> +
> +	if (*img_checksum != image_checksum32(fdimap + main_hdr->srcaddr,
> +					      payloadsz)) {
> +		fprintf(stderr, "The image checksum does not match\n");
> +		return -1;
> +	}
> +
> +	/* Finally, handle the image itself */
> +	fprintf(focfg, "PAYLOAD %s/payload\n", output);
> +	return image_extract_payload(fdimap + main_hdr->srcaddr,
> +				     payloadsz, output);
> +}
> +
> +static int image_extract_binary_hdr_v1(const void *binary, const char *output,
> +				       FILE *focfg, int hdrnum, size_t binsz)
> +{
> +	char *binaryoutname;
> +	FILE *binaryout;
> +	const unsigned int *args;
> +	unsigned int nargs;
> +	int ret, i;
> +
> +	args = binary;
> +	nargs = args[0];
> +	args++;
> +
> +	ret = asprintf(&binaryoutname, "%s/binary.%d", output,
> +		       hdrnum);
> +	if (ret < 0) {
> +		fprintf(stderr, "Couldn't not allocate memory\n");
> +		return ret;
> +	}
> +
> +	binaryout = fopen(binaryoutname, "w+");
> +	if (!binaryout) {
> +		fprintf(stderr, "Couldn't open output file %s\n",
> +			binaryoutname);
> +		free(binaryoutname);
> +		return -1;
> +	}
> +
> +	ret = fwrite(binary + (nargs + 1) * sizeof(unsigned int),
> +		     binsz - (nargs + 1) * sizeof(unsigned int), 1,
> +		     binaryout);
> +	if (ret != 1) {
> +		fprintf(stderr, "Could not write to output file %s\n",
> +			binaryoutname);
> +		fclose(binaryout);
> +		free(binaryoutname);
> +		return -1;
> +	}
> +
> +	fclose(binaryout);
> +
> +	fprintf(focfg, "BINARY %s", binaryoutname);
> +	for (i = 0; i < nargs; i++)
> +		fprintf(focfg, " %08x", args[i]);
> +	fprintf(focfg, "\n");
> +
> +	free(binaryoutname);
> +
> +	return 0;
> +}
> +
> +static int image_extract_v1(void *fdimap, const char *output, FILE *focfg)
> +{
> +	struct main_hdr_v1 *main_hdr = fdimap;
> +	struct opt_hdr_v1 *opt_hdr;
> +	const char *boot_mode_name;
> +	int headersz = KWBHEADER_V1_SIZE(main_hdr);
> +	int hasheaders;
> +	uint8_t cksum;
> +	int opthdrid;
> +
> +	/*
> +	 * Verify the checkum. We have to substract the checksum
> +	 * itself, because when the checksum is calculated, the
> +	 * checksum field is 0.
> +	 */
> +	cksum = image_checksum8(main_hdr, headersz);
> +	cksum -= main_hdr->checksum;
> +
> +	if (cksum != main_hdr->checksum) {
> +		fprintf(stderr,
> +			"Invalid main header checksum: 0x%08x vs. 0x%08x\n",
> +			cksum, main_hdr->checksum);
> +		return -1;
> +	}
> +
> +	/* First, take care of the main header */
> +	boot_mode_name = image_boot_mode_name(main_hdr->blockid);
> +	if (!boot_mode_name) {
> +		fprintf(stderr, "Invalid boot ID: 0x%x\n",
> +			main_hdr->blockid);
> +		return -1;
> +	}
> +
> +	fprintf(focfg, "VERSION 1\n");
> +	fprintf(focfg, "BOOT_FROM %s\n", boot_mode_name);
> +	fprintf(focfg, "DESTADDR %08x\n", main_hdr->destaddr);
> +	fprintf(focfg, "EXECADDR %08x\n", main_hdr->execaddr);
> +	fprintf(focfg, "NAND_BLKSZ %08x\n",
> +		main_hdr->nandblocksize * 64 * 1024);
> +	fprintf(focfg, "NAND_BADBLK_LOCATION %02x\n",
> +		main_hdr->nandbadblklocation);
> +
> +	hasheaders = main_hdr->ext;
> +	opt_hdr = fdimap + sizeof(struct main_hdr_v1);
> +	opthdrid = 0;
> +
> +	/* Then, go through all the extension headers */
> +	while (hasheaders) {
> +		int opthdrsz = KWBHEADER_V1_SIZE(opt_hdr);
> +
> +		switch (opt_hdr->headertype) {
> +		case OPT_HDR_V1_BINARY_TYPE:
> +			image_extract_binary_hdr_v1(opt_hdr->data, output,
> +						    focfg, opthdrid,
> +						    opthdrsz -
> +						    sizeof(struct opt_hdr_v1));
> +			break;
> +		case OPT_HDR_V1_SECURE_TYPE:
> +		case OPT_HDR_V1_REGISTER_TYPE:
> +			fprintf(stderr,
> +				"Support for header type 0x%x not implemented\n",
> +				opt_hdr->headertype);
> +			exit(1);
> +			break;
> +		default:
> +			fprintf(stderr, "Invalid header type 0x%x\n",
> +				opt_hdr->headertype);
> +			exit(1);
> +		}
> +
> +		/*
> +		 * The first byte of the last double word of the
> +		 * current header indicates whether there is a next
> +		 * header or not.
> +		 */
> +		hasheaders = ((char *)opt_hdr)[opthdrsz - 4];
> +
> +		/* Move to the next header */
> +		opt_hdr = ((void *)opt_hdr) + opthdrsz;
> +		opthdrid++;
> +	}
> +
> +	/* Finally, handle the image itself */
> +	fprintf(focfg, "PAYLOAD %s/payload\n", output);
> +	return image_extract_payload(fdimap + main_hdr->srcaddr,
> +				     main_hdr->blocksize - 4,
> +				     output);
> +}
> +
> +static int image_extract(const char *input, const char *output)
> +{
> +	int fdi, ret;
> +	struct stat fdistat, fdostat;
> +	void *fdimap;
> +	char *focfgname;
> +	FILE *focfg;
> +
> +	fdi = open(input, O_RDONLY);
> +	if (fdi < 0) {
> +		fprintf(stderr, "Cannot open input file %s: %m\n",
> +			input);
> +		return -1;
> +	}
> +
> +	ret = fstat(fdi, &fdistat);
> +	if (ret < 0) {
> +		fprintf(stderr, "Cannot stat input file %s: %m\n",
> +			input);
> +		close(fdi);
> +		return -1;
> +	}
> +
> +	fdimap = mmap(NULL, fdistat.st_size, PROT_READ, MAP_PRIVATE, fdi, 0);
> +	if (fdimap == MAP_FAILED) {
> +		fprintf(stderr, "Cannot map input file %s: %m\n",
> +			input);
> +		close(fdi);
> +		return -1;
> +	}
> +
> +	close(fdi);
> +
> +	ret = stat(output, &fdostat);
> +	if (ret < 0) {
> +		fprintf(stderr, "Cannot stat output directory %s: %m\n",
> +			output);
> +		munmap(fdimap, fdistat.st_size);
> +		return -1;
> +	}
> +
> +	if (!S_ISDIR(fdostat.st_mode)) {
> +		fprintf(stderr, "Output %s should be a directory\n",
> +			output);
> +		munmap(fdimap, fdistat.st_size);
> +		return -1;
> +	}
> +
> +	ret = asprintf(&focfgname, "%s/kwbimage.cfg", output);
> +	if (ret < 0) {
> +		fprintf(stderr, "Failed to allocate memory\n");
> +		munmap(fdimap, fdistat.st_size);
> +		return -1;
> +	}
> +
> +	focfg = fopen(focfgname, "w+");
> +	if (!focfg) {
> +		fprintf(stderr, "Output file %s could not be created\n",
> +			focfgname);
> +		free(focfgname);
> +		munmap(fdimap, fdistat.st_size);
> +		return -1;
> +	}
> +
> +	free(focfgname);
> +
> +	if (image_version(fdimap) == 0)
> +		ret = image_extract_v0(fdimap, output, focfg);
> +	else if (image_version(fdimap) == 1)
> +		ret = image_extract_v1(fdimap, output, focfg);
> +	else {
> +		fprintf(stderr, "Invalid image version %d\n",
> +			image_version(fdimap));
> +		ret = -1;
> +	}
> +
> +	fclose(focfg);
> +	munmap(fdimap, fdistat.st_size);
> +	return ret;
> +}
> +
> +static int image_create_payload(void *payload_start, size_t payloadsz,
> +				const char *payload_filename)
> +{
> +	FILE *payload;
> +	uint32_t *payload_checksum =
> +		(uint32_t *) (payload_start + payloadsz);
> +	int ret;
> +
> +	payload = fopen(payload_filename, "r");
> +	if (!payload) {
> +		fprintf(stderr, "Cannot open payload file %s\n",
> +			payload_filename);
> +		return -1;
> +	}
> +
> +	ret = fread(payload_start, payloadsz, 1, payload);
> +	if (ret != 1) {
> +		fprintf(stderr, "Cannot read payload file %s\n",
> +			payload_filename);
> +		return -1;
> +	}
> +
> +	fclose(payload);
> +
> +	*payload_checksum = image_checksum32(payload_start, payloadsz);
> +	return 0;
> +}
> +
> +static void *image_create_v0(struct image_cfg_element *image_cfg,
> +			     int cfgn, const char *output, size_t *imagesz)
> +{
> +	size_t headersz, payloadsz, totalsz;
> +	struct main_hdr_v0 *main_hdr;
> +	struct ext_hdr_v0 *ext_hdr;
> +	void *image;
> +	int has_ext = 0;
> +	int cfgi, ret;
> +
> +	/* Calculate the size of the header and the size of the
> +	 * payload */
> +	headersz  = sizeof(struct main_hdr_v0);
> +	payloadsz = 0;
> +	for (cfgi = 0; cfgi < cfgn; cfgi++) {
> +		struct image_cfg_element *el = &image_cfg[cfgi];
> +		if (el->type == IMAGE_CFG_DATA)
> +			has_ext = 1;
> +		else if (el->type == IMAGE_CFG_PAYLOAD) {
> +			struct stat s;
> +			int ret;
> +
> +			ret = stat(el->payload, &s);
> +			if (ret < 0) {
> +				fprintf(stderr, "Cannot stat payload file %s\n",
> +					el->payload);
> +				return NULL;
> +			}
> +
> +			payloadsz = s.st_size;
> +		}
> +	}
> +
> +	if (has_ext)
> +		headersz += sizeof(struct ext_hdr_v0);
> +
> +	/* Headers, payload and 32-bits checksum */
> +	totalsz = headersz + payloadsz + sizeof(uint32_t);
> +
> +	image = malloc(totalsz);
> +	if (!image) {
> +		fprintf(stderr, "Cannot allocate memory for image\n");
> +		return NULL;
> +	}
> +
> +	memset(image, 0, totalsz);
> +
> +	main_hdr = image;
> +
> +	/* Fill in the main header */
> +	main_hdr->blocksize = payloadsz + sizeof(uint32_t);
> +	main_hdr->srcaddr   = headersz;
> +	main_hdr->ext       = has_ext;
> +	for (cfgi = 0; cfgi < cfgn; cfgi++) {
> +		struct image_cfg_element *el = &image_cfg[cfgi];
> +		if (el->type == IMAGE_CFG_BOOT_FROM)
> +			main_hdr->blockid = image_boot_mode_id(el->boot_from);
> +		else if (el->type == IMAGE_CFG_DEST_ADDR)
> +			main_hdr->destaddr = el->dstaddr;
> +		else if (el->type == IMAGE_CFG_EXEC_ADDR)
> +			main_hdr->execaddr = el->execaddr;
> +		else if (el->type != IMAGE_CFG_VERSION)
> +			break;
> +	}
> +
> +	main_hdr->checksum = image_checksum8(image,
> +					     sizeof(struct main_hdr_v0));
> +
> +	/* Generate the ext header */
> +	if (has_ext) {
> +		int datai = 0;
> +
> +		ext_hdr = image + sizeof(struct main_hdr_v0);
> +		ext_hdr->offset = 0x40;
> +
> +		for (; cfgi < cfgn; cfgi++) {
> +			struct image_cfg_element *el = &image_cfg[cfgi];
> +			if (el->type == IMAGE_CFG_DATA) {
> +				ext_hdr->rcfg[datai].raddr = el->regdata.raddr;
> +				ext_hdr->rcfg[datai].rdata = el->regdata.rdata;
> +				datai++;
> +			}
> +			else if (el->type == IMAGE_CFG_PAYLOAD)
> +				break;
> +			else {
> +				fprintf(stderr, "Invalid element of type %d\n",
> +					el->type);
> +				return NULL;
> +			}
> +		}
> +
> +		ext_hdr->checksum = image_checksum8(ext_hdr,
> +						    sizeof(struct ext_hdr_v0));
> +	}
> +
> +	/* Now, time to take care of the payload, if any */
> +	if (image_cfg[cfgi].type == IMAGE_CFG_PAYLOAD) {
> +		if (cfgi != cfgn - 1) {
> +			fprintf(stderr,
> +				"There should always be only one payload, and it should be the last element\n");
> +			return NULL;
> +		}
> +
> +		ret = image_create_payload(image + headersz, payloadsz,
> +					   image_cfg[cfgi].payload);
> +		if (ret < 0)
> +			return NULL;
> +	}
> +
> +	*imagesz = totalsz;
> +	return image;
> +}
> +
> +static void *image_create_v1(struct image_cfg_element *image_cfg,
> +			     int cfgn, const char *output, size_t *imagesz)
> +{
> +	struct main_hdr_v1 *main_hdr;
> +	size_t headersz, payloadsz, totalsz;
> +	void *image, *cur;
> +	int hasext = 0;
> +	int cfgi, ret;
> +
> +	/* Calculate the size of the header and the size of the
> +	 * payload */
> +	headersz = sizeof(struct main_hdr_v1);
> +	payloadsz = 0;
> +	for (cfgi = 0; cfgi < cfgn; cfgi++) {
> +		struct image_cfg_element *el = &image_cfg[cfgi];
> +		if (el->type == IMAGE_CFG_BINARY) {
> +			struct stat s;
> +
> +			ret = stat(el->binary.file, &s);
> +			if (ret < 0) {
> +				fprintf(stderr, "Cannot stat binary file %s\n",
> +					el->binary.file);
> +				return NULL;
> +			}
> +
> +			headersz += s.st_size +
> +				el->binary.nargs * sizeof(unsigned int);
> +			hasext = 1;
> +		} else if (el->type == IMAGE_CFG_PAYLOAD) {
> +			struct stat s;
> +
> +			ret = stat(el->payload, &s);
> +			if (ret < 0) {
> +				fprintf(stderr, "Cannot stat payload file %s\n",
> +					el->payload);
> +				return NULL;
> +			}
> +
> +			payloadsz = s.st_size;
> +		}
> +	}
> +
> +	/* The payload should be aligned on some reasonable
> +	 * boundary */
> +	headersz = ALIGN_SUP(headersz, 4096);
> +
> +	/* The total size includes the headers, the payload, and the
> +	 * 32 bits checksum at the end of the payload */
> +	totalsz = headersz + payloadsz + sizeof(uint32_t);
> +
> +	image = malloc(totalsz);
> +	if (!image) {
> +		fprintf(stderr, "Cannot allocate memory for image\n");
> +		return NULL;
> +	}
> +
> +	memset(image, 0, totalsz);
> +
> +	cur = main_hdr = image;
> +	cur += sizeof(struct main_hdr_v1);
> +
> +	main_hdr->blocksize    = payloadsz + sizeof(uint32_t);
> +	main_hdr->headersz_lsb = headersz & 0xFFFF;
> +	main_hdr->headersz_msb = (headersz & 0xFFFF0000) >> 16;
> +	main_hdr->srcaddr      = headersz;
> +	main_hdr->ext          = hasext;
> +
> +	/* First, take care of filling the main header */
> +	for (cfgi = 0; cfgi < cfgn; cfgi++) {
> +		struct image_cfg_element *el = &image_cfg[cfgi];
> +		if (el->type == IMAGE_CFG_VERSION)
> +			main_hdr->version = 1;
> +		else if (el->type == IMAGE_CFG_BOOT_FROM)
> +			main_hdr->blockid = image_boot_mode_id(el->boot_from);
> +		else if (el->type == IMAGE_CFG_DEST_ADDR)
> +			main_hdr->destaddr = el->dstaddr;
> +		else if (el->type == IMAGE_CFG_EXEC_ADDR)
> +			main_hdr->execaddr = el->execaddr;
> +		else if (el->type == IMAGE_CFG_NAND_BLKSZ)
> +			main_hdr->nandblocksize = el->nandblksz / (64 * 1024);
> +		else if (el->type == IMAGE_CFG_NAND_BADBLK_LOCATION)
> +			main_hdr->nandbadblklocation = el->nandbadblklocation;
> +		else
> +			break;
> +	}
> +
> +	/* Then, fill the extension headers */
> +	for (; cfgi < cfgn; cfgi++) {
> +		struct image_cfg_element *el = &image_cfg[cfgi];
> +
> +		if (el->type == IMAGE_CFG_BINARY) {
> +			struct opt_hdr_v1 *hdr = cur;
> +			unsigned int *args;
> +			size_t binhdrsz;
> +			struct stat s;
> +			int argi;
> +			FILE *bin;
> +
> +			hdr->headertype = OPT_HDR_V1_BINARY_TYPE;
> +
> +			bin = fopen(el->binary.file, "r");
> +			if (!bin) {
> +				fprintf(stderr, "Cannot open binary file %s\n",
> +					el->binary.file);
> +				return NULL;
> +			}
> +
> +			fstat(fileno(bin), &s);
> +
> +			binhdrsz = sizeof(struct opt_hdr_v1) +
> +				(el->binary.nargs + 1) * sizeof(unsigned int) +
> +				s.st_size;
> +			hdr->headersz_lsb = binhdrsz & 0xFFFF;
> +			hdr->headersz_msb = (binhdrsz & 0xFFFF0000) >> 16;
> +
> +			cur += sizeof(struct opt_hdr_v1);
> +
> +			args = cur;
> +			*args = el->binary.nargs;
> +			args++;
> +			for (argi = 0; argi < el->binary.nargs; argi++)
> +				args[argi] = el->binary.args[argi];
> +
> +			cur += (el->binary.nargs + 1) * sizeof(unsigned int);
> +
> +			ret = fread(cur, s.st_size, 1, bin);
> +			if (ret != 1) {
> +				fprintf(stderr,
> +					"Could not read binary image %s\n",
> +					el->binary.file);
> +				return NULL;
> +			}
> +
> +			fclose(bin);
> +
> +			cur += s.st_size;
> +
> +			/* See if we have a next header or not, and if
> +			 * so, add the marker indicating that we are
> +			 * not the last header */
> +			if ((cfgi < (cfgn - 1)) &&
> +			    (image_cfg[cfgi + 1].type != IMAGE_CFG_PAYLOAD))
> +				*((unsigned char *) cur) = 1;
> +			cur += sizeof(uint32_t);
> +		} else if (el->type == IMAGE_CFG_PAYLOAD)
> +			break;
> +		else {
> +			fprintf(stderr, "Invalid element type %d (cfgi=%d)\n",
> +				el->type, cfgi);
> +			return NULL;
> +		}
> +	}
> +
> +	/* Calculate and set the header checksum */
> +	main_hdr->checksum = image_checksum8(main_hdr, headersz);
> +
> +	/* Now, time to take care of the payload, if any */
> +	if (image_cfg[cfgi].type == IMAGE_CFG_PAYLOAD) {
> +		if (cfgi != cfgn - 1) {
> +			fprintf(stderr,
> +				"There should always be only one payload, and it should be the last element\n");
> +			return NULL;
> +		}
> +
> +		ret = image_create_payload(image + headersz, payloadsz,
> +					   image_cfg[cfgi].payload);
> +		if (ret < 0)
> +			return NULL;
> +	}
> +
> +	*imagesz = totalsz;
> +	return image;
> +}
> +
> +static int image_create_config_parse_oneline(char *line,
> +					     struct image_cfg_element *el)
> +{
> +	char *keyword, *saveptr;
> +
> +	keyword = strtok_r(line, " ", &saveptr);
> +	if (!strcmp(keyword, "VERSION")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_VERSION;
> +		el->version = atoi(value);
> +	} else if (!strcmp(keyword, "BOOT_FROM")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_BOOT_FROM;
> +		el->boot_from = strdup(value);
> +	} else if (!strcmp(keyword, "DESTADDR")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_DEST_ADDR;
> +		el->dstaddr = strtol(value, NULL, 16);
> +	} else if (!strcmp(keyword, "EXECADDR")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_EXEC_ADDR;
> +		el->execaddr = strtol(value, NULL, 16);
> +	} else if (!strcmp(keyword, "NAND_BLKSZ")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_NAND_BLKSZ;
> +		el->nandblksz = strtol(value, NULL, 16);
> +	} else if (!strcmp(keyword, "NAND_BADBLK_LOCATION")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_NAND_BADBLK_LOCATION;
> +		el->nandbadblklocation =
> +			strtol(value, NULL, 16);
> +	} else if (!strcmp(keyword, "BINARY")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		int argi = 0;
> +
> +		el->type = IMAGE_CFG_BINARY;
> +		el->binary.file = strdup(value);
> +		while (1) {
> +			value = strtok_r(NULL, " ", &saveptr);
> +			if (!value)
> +				break;
> +			el->binary.args[argi] = strtol(value, NULL, 16);
> +			argi++;
> +			if (argi >= BINARY_MAX_ARGS) {
> +				fprintf(stderr,
> +					"Too many argument for binary\n");
> +				return -1;
> +			}
> +		}
> +		el->binary.nargs = argi;
> +	} else if (!strcmp(keyword, "DATA")) {
> +		char *value1 = strtok_r(NULL, " ", &saveptr);
> +		char *value2 = strtok_r(NULL, " ", &saveptr);
> +
> +		if (!value1 || !value2) {
> +			fprintf(stderr, "Invalid number of arguments for DATA\n");
> +			return -1;
> +		}
> +
> +		el->type = IMAGE_CFG_DATA;
> +		el->regdata.raddr = strtol(value1, NULL, 16);
> +		el->regdata.rdata = strtol(value2, NULL, 16);
> +	} else if (!strcmp(keyword, "PAYLOAD")) {
> +		char *value = strtok_r(NULL, " ", &saveptr);
> +		el->type = IMAGE_CFG_PAYLOAD;
> +		el->payload = strdup(value);
> +	} else {
> +		fprintf(stderr, "Ignoring unknown line '%s'\n", line);
> +	}
> +
> +	return 0;
> +}
> +
> +static int image_create_config_parse(FILE *fcfg,
> +				     struct image_cfg_element *image_cfg)
> +{
> +	int ret;
> +	int cfgi = 0;
> +
> +	/* Parse the configuration file */
> +	while (!feof(fcfg)) {
> +		char *line;
> +		char buf[256];
> +
> +		/* Read the current line */
> +		memset(buf, 0, sizeof(buf));
> +		line = fgets(buf, sizeof(buf), fcfg);
> +		if (!line)
> +			break;
> +
> +		/* Ignore useless lines */
> +		if (line[0] == '\n' || line[0] == '#')
> +			continue;
> +
> +		/* Strip final newline */
> +		if (line[strlen(line) - 1] == '\n')
> +			line[strlen(line) - 1] = 0;
> +
> +		/* Parse the current line */
> +		ret = image_create_config_parse_oneline(line,
> +							&image_cfg[cfgi]);
> +		if (ret)
> +			return ret;
> +
> +		cfgi++;
> +	}
> +
> +	return 0;
> +}
> +
> +static int image_create_config_count_lines(FILE *fcfg)
> +{
> +	int lines = 0;
> +
> +	/* Count number of useful lines */
> +	while (!feof(fcfg)) {
> +		char *line;
> +		char buf[256];
> +		memset(buf, 0, sizeof(buf));
> +		line = fgets(buf, sizeof(buf), fcfg);
> +		if (!line)
> +			break;
> +		if (line[0] == '\n' || line[0] == '#')
> +			continue;
> +		lines++;
> +	}
> +
> +	return lines;
> +}
> +
> +static int image_create(const char *input, const char *output)
> +{
> +	struct image_cfg_element *image_cfg;
> +	FILE *fcfg, *outputimg;
> +	void *image = NULL;
> +	int version = -1;
> +	size_t imagesz;
> +	int lines;
> +	int cfgi;
> +	int ret;
> +
> +	fcfg = fopen(input, "r");
> +	if (!fcfg) {
> +		fprintf(stderr, "Could not open input file %s\n",
> +			input);
> +		return -1;
> +	}
> +
> +	lines = image_create_config_count_lines(fcfg);
> +	if (lines == 0) {
> +		fprintf(stderr, "Configuration file %s is empty\n",
> +			input);
> +		return -1;
> +	}
> +
> +	image_cfg = malloc(lines * sizeof(struct image_cfg_element));
> +	if (!image_cfg) {
> +		fprintf(stderr, "Cannot allocate memory\n");
> +		fclose(fcfg);
> +		return -1;
> +	}
> +
> +	memset(image_cfg, 0, lines * sizeof(struct image_cfg_element));
> +	rewind(fcfg);
> +
> +	ret = image_create_config_parse(fcfg, image_cfg);
> +	if (ret)
> +		return -1;
> +
> +	for (cfgi = 0; cfgi < lines; cfgi++) {
> +		if (image_cfg[cfgi].type != IMAGE_CFG_VERSION)
> +			continue;
> +
> +		version = image_cfg[cfgi].version;
> +		break;
> +	}
> +
> +	if (version == -1) {
> +		fprintf(stderr, "File %s does not have the VERSION field\n",
> +			input);
> +		return -1;
> +	}
> +
> +	if (version == 0)
> +		image = image_create_v0(image_cfg, lines, output, &imagesz);
> +	else if (version == 1)
> +		image = image_create_v1(image_cfg, lines, output, &imagesz);
> +
> +	if (!image) {
> +		fprintf(stderr, "Could not create image\n");
> +		return -1;
> +	}
> +
> +	outputimg = fopen(output, "w");
> +	if (!outputimg) {
> +		fprintf(stderr, "Cannot open output image %s for writing\n",
> +			output);
> +		return -1;
> +	}
> +
> +	ret = fwrite(image, imagesz, 1, outputimg);
> +	if (ret != 1) {
> +		fprintf(stderr, "Cannot write to output image %s\n",
> +			output);
> +		return -1;
> +	}
> +
> +	fclose(outputimg);
> +	free(image);
> +
> +	return 0;
> +}
> +
> +enum {
> +	ACTION_CREATE,
> +	ACTION_EXTRACT,
> +	ACTION_DUMP,
> +	ACTION_HELP,
> +};
> +
> +int main(int argc, char *argv[])
> +{
> +	int action = -1, opt;
> +	const char *input = NULL, *output = NULL;
> +
> +	while ((opt = getopt(argc, argv, "hxci:o:")) != -1) {
> +		switch (opt) {
> +		case 'x':
> +			action = ACTION_EXTRACT;
> +			break;
> +		case 'c':
> +			action = ACTION_CREATE;
> +			break;
> +		case 'i':
> +			input = optarg;
> +			break;
> +		case 'o':
> +			output = optarg;
> +			break;
> +		case 'h':
> +			action = ACTION_HELP;
> +			break;
> +		}
> +	}
> +
> +	/* We should have consumed all arguments */
> +	if (optind != argc) {
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	if (action != ACTION_HELP && !input) {
> +		fprintf(stderr, "Missing input file\n");
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	if ((action == ACTION_EXTRACT || action == ACTION_CREATE) &&
> +	    !output) {
> +		fprintf(stderr, "Missing output file\n");
> +		usage(argv[1]);
> +		exit(1);
> +	}
> +
> +	switch (action) {
> +	case ACTION_EXTRACT:
> +		return image_extract(input, output);
> +	case ACTION_CREATE:
> +		return image_create(input, output);
> +	case ACTION_HELP:
> +		usage(argv[0]);
> +		return 0;
> +	default:
> +		fprintf(stderr, "No action specified\n");
> +		usage(argv[0]);
> +		exit(1);
> +	}
> +
> +	return 0;
> +}
> -- 
> 1.7.9.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
