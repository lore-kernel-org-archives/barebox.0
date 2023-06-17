Delivery-date: Sat, 17 Jun 2023 09:27:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAQLE-00A3hV-Hj
	for lore@lore.pengutronix.de; Sat, 17 Jun 2023 09:27:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qAQLB-0001Di-Jx
	for lore@pengutronix.de; Sat, 17 Jun 2023 09:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:References:In-Reply-To:Subject:CC:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4usJ2ZTi8eHnX8R7jDnpBjPCO8vN/85AwxlrSkbEpvA=; b=4xAXrhFlmRbQCZPJRChFOEgFpC
	gFQ8FSIYNc6HYHBXvBXeWrozNsJBKhnBzgLUQ9RV9R4LZsAylkdbtxvp292yuss/EnJrm4LBLQ2+R
	pzlMvXRlWDS64YSAGwpXtZ7WhftURhyKI0ZWLmkcqUggS6WtmqBCa8nLaAB9a8iHYrak9GkNHHOGI
	2TA1kLZbFA8hxB3aVhpuBTAFtsQjt8GkiIhnopdAQZ0y/lrcBhzjtrZRYfMM4uTDuuHgJ/rl3p+bo
	glEXAWtfkoBo669ERytdZS8FLjgqhkLCSGQfCq0c5B+e1AIpK+eRpNdGp26V0Njl6cu7lzuyE2//P
	CrQFqLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQJk-002zIq-14;
	Sat, 17 Jun 2023 07:25:52 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAQJg-002zHv-2c
	for barebox@lists.infradead.org;
	Sat, 17 Jun 2023 07:25:51 +0000
X-GND-Sasl: jmaselbas@zdiv.net
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id 187011BF205;
	Sat, 17 Jun 2023 07:25:42 +0000 (UTC)
Date: Sat, 17 Jun 2023 09:25:41 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: Marco Felsch <m.felsch@pengutronix.de>
CC: barebox@lists.infradead.org
User-Agent: K-9 Mail for Android
In-Reply-To: <20230616220057.bvz75z5hnyqgzkw5@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net> <20230524234328.82741-3-jmaselbas@zdiv.net> <20230616220057.bvz75z5hnyqgzkw5@pengutronix.de>
Message-ID: <6F176D27-AD10-4F80-AD5E-3B3C56C33327@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_002549_133985_2B0331AD 
X-CRM114-Status: GOOD (  53.61  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/13] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Marco,

On June 17, 2023 12:00:57 AM GMT+02:00, Marco Felsch <m=2Efelsch@pengutron=
ix=2Ede> wrote:
> Hi Jules,
>=20
> since I work on the D1 support I also had to port the eGON image support
> to barebox ^^ Please see my below comments=2E
>=20
> On 23-05-25, Jules Maselbas wrote:
> > On power-up Allwinner SoC starts in boot ROM, aka BROM, which will sea=
rch
> > for an eGON image: first from the SD card, then from eMMC=2E If no ima=
ge is
> > found then the BROM will enter into FEL mode that can be used for init=
ial
> > programming and recovery of devices using USB=2E
> >=20
> > The eGON header, followed by the actual image, must be located at a fi=
xed
> > offset of 8192 bytes (4K) from the start of the disk, either SD; or eM=
MC=2E
> >=20
> > The eGON header structure is adapted from u-boot: /include/sunxi_image=
=2Eh,
> > the header structure is also documented on https://linux-sunxi=2Eorg/E=
GON
> >=20
> > BROM will load, at most, the first 32KB of the image into SRAM, includ=
ing
>=20
> Nit: as noted on https://linux-sunxi=2Eorg it's not always limited to 32=
KB=2E
>=20
> > the header itself! The jump instruction in the header needs to be patc=
hed
> > accordingly with the image size=2E
> >=20
> > Signed-off-by: Jules Maselbas <jmaselbas@zdiv=2Enet>
> > ---
> > rfc->v2:
> >  - removed arch/arm/mach-sunxi/egon_header=2Ec (unused)
> >  - reworked egon_mkimage=2Ec to handle images size not multiple of 4by=
tes
> >    and added comments
> >=20
> >  include/mach/sunxi/egon=2Eh |  59 ++++++++++++++++++
> >  scripts/Kconfig           |   7 +++
> >  scripts/Makefile          |   1 +
> >  scripts/egon_mkimage=2Ec    | 122 +++++++++++++++++++++++++++++++++++=
+++
> >  4 files changed, 189 insertions(+)
> >  create mode 100644 include/mach/sunxi/egon=2Eh
> >  create mode 100644 scripts/egon_mkimage=2Ec
> >=20
> > diff --git a/include/mach/sunxi/egon=2Eh b/include/mach/sunxi/egon=2Eh
> > new file mode 100644
> > index 0000000000=2E=2Ee00992eb7d
> > --- /dev/null
> > +++ b/include/mach/sunxi/egon=2Eh
> > @@ -0,0 +1,59 @@
> > +/* SPDX-License-Identifier: GPL-2=2E0-or-later */
> > +#ifndef MACH_SUNXI_EGON_H
> > +#define MACH_SUNXI_EGON_H
> > +
> > +struct egon_header {
> > +	uint32_t branch; /* branch instruction to jump over the header */
> > +	uint8_t magic[8]; /* "eGON=2EBT0" or "eGON=2EBT1" */
> > +	uint32_t check_sum;
> > +	uint32_t length;
> > +	/*
> > +	 * We use a simplified header, only filling in what is needed
> > +	 * by the boot ROM=2E To be compatible with Allwinner tools we
> > +	 * would need to implement the proper fields here instead of
> > +	 * padding=2E
> > +	 *
> > +	 * Actually we want the ability to recognize our "sunxi" variant
> > +	 * of the SPL=2E To do so, let's place a special signature into the
> > +	 * "pub_head_size" field=2E We can reasonably expect Allwinner's
> > +	 * boot0 to always have the upper 16 bits of this set to 0 (after
> > +	 * all the value shouldn't be larger than the limit imposed by
> > +	 * SRAM size)=2E
> > +	 * If the signature is present (at 0x14), then we know it's safe
> > +	 * to use the remaining 8 bytes (at 0x18) for our own purposes=2E
> > +	 * (E=2Eg=2E sunxi-tools "fel" utility can pass information there=2E=
)
> > +	 */
> > +	union {
> > +		uint32_t header_size;
> > +		uint8_t spl_signature[4];
> > +	};
> > +	uint32_t fel_script_address;/* since v0=2E1, set by sunxi-fel */
> > +	/*
> > +	 * If the fel_uEnv_length member below is set to a non-zero value,
> > +	 * it specifies the size (byte count) of data at fel_script_address=
=2E
> > +	 * At the same time this indicates that the data is in uEnv=2Etxt
> > +	 * compatible format, ready to be imported via "env import -t"=2E
> > +	 */
> > +	uint32_t fel_uEnv_length;/* since v0=2E1, set by sunxi-fel */
> > +	/*
> > +	 * Offset of an ASCIIZ string (relative to the SPL header), which
> > +	 * contains the default device tree name (CONFIG_DEFAULT_DEVICE_TREE=
)=2E
> > +	 * This is optional and may be set to NULL=2E Is intended to be used
> > +	 * by flash programming tools for providing nice informative message=
s
> > +	 * to the users=2E
> > +	 */
> > +	uint32_t dt_name_offset;/* since v0=2E2, set by mksunxiboot */
> > +	uint32_t dram_size;/* in MiB, since v0=2E3, set by SPL */
> > +	uint32_t boot_media;/* written here by the boot ROM */
> > +	/* A padding area (may be used for storing text strings) */
> > +	uint32_t string_pool[13];/* since v0=2E2, filled by mksunxiboot */
> > +	/* The header must be a multiple of 32 bytes (for VBAR alignment) */
> > +	/* And at least 64 byte (https://patchwork=2Eozlabs=2Eorg/patch/6221=
73) */
> > +};
> > +#define EGON_HDR_BRANCH (0xea000000 | (sizeof(struct egon_header) / 4=
 - 2))
> > +#define sunxi_egon_header(section) {					\
> > +		__section(section) static const struct egon_header hdr=3D \
> > +			{ =2Ebranch =3D EGON_HDR_BRANCH, =2Emagic =3D "eGON" };	\
> > +		__keep_symbolref(hdr);					\
> > +	}
>=20
> Using an additional sections seems a bit odd here=2E We can just write t=
he
> header within the image tool=2E
That's what I wanted to do in the first place but I struggled a lot to get=
 barebox relocation working=2E
Having the eGON header embedded in the =2Etext (since the header is loaded=
 by bootrom) is the only solution i found to get the relocation working=2E
I am all for a better way but I really whish to have a first version appli=
ed=2E

>=20
> > +#endif
> > diff --git a/scripts/Kconfig b/scripts/Kconfig
> > index dcd5f32d1d=2E=2E7517f5b79f 100644
> > --- a/scripts/Kconfig
> > +++ b/scripts/Kconfig
> > @@ -56,6 +56,13 @@ config RK_IMAGE
> >  	help
> >  	  This enables building the image creation tool for Rockchip SoCs
> > =20
> > +config EGON_IMAGE
> > +       bool "Allwinner eGON image tool" if COMPILE_HOST_TOOLS
> > +       depends on ARCH_SUNXI || COMPILE_HOST_TOOLS
> > +       default y if ARCH_SUNXI
> > +       help
> > +         This enables building the image creation tool for Allwinner =
sunxi SoCs
> > +
> >  config OMAP_IMAGE
> >  	bool "TI OMAP image tools" if COMPILE_HOST_TOOLS
> >  	depends on ARCH_OMAP || COMPILE_HOST_TOOLS
> > diff --git a/scripts/Makefile b/scripts/Makefile
> > index 72ad9ad7a6=2E=2E13e80db7af 100644
> > --- a/scripts/Makefile
> > +++ b/scripts/Makefile
> > @@ -28,6 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+=3D=
 pblimage
> >  hostprogs-always-$(CONFIG_STM32_IMAGE)			+=3D stm32image
> >  hostprogs-always-$(CONFIG_RISCV)			+=3D prelink-riscv
> >  hostprogs-always-$(CONFIG_RK_IMAGE)			+=3D rkimage
> > +hostprogs-always-$(CONFIG_EGON_IMAGE)			+=3D egon_mkimage
> >  HOSTCFLAGS_rkimage =3D `pkg-config --cflags openssl`
> >  HOSTLDLIBS_rkimage =3D `pkg-config --libs openssl`
> >  KBUILD_HOSTCFLAGS +=3D -I$(srctree)/scripts/include/
> > diff --git a/scripts/egon_mkimage=2Ec b/scripts/egon_mkimage=2Ec
> > new file mode 100644
> > index 0000000000=2E=2E5983bdb28a
> > --- /dev/null
> > +++ b/scripts/egon_mkimage=2Ec
> > @@ -0,0 +1,122 @@
> > +/* SPDX-License-Identifier: GPL-2=2E0-or-later */
> > +
> > +#include <stdio=2Eh>
> > +#include <errno=2Eh>
> > +#include <stdlib=2Eh>
> > +#include <stdint=2Eh>
> > +#include <string=2Eh>
> > +#include <linux/kernel=2Eh>
> > +
> > +#include "=2E=2E/include/mach/sunxi/egon=2Eh"
> > +
> > +#include "compiler=2Eh"
> > +#include "common=2Eh"
> > +#include "common=2Ec"
> > +
> > +#define STAMP_VALUE 0x5f0a6c39
> > +
> > +static void mkimage(char *infile, char *outfile)
> > +{
> > +	struct egon_header *hdr;
> > +	uint32_t *p32;
> > +	uint32_t sum;
> > +	int i;
> > +	size_t hdr_size =3D sizeof(*hdr);
> > +	size_t bin_size;
> > +	size_t img_size;
> > +	void *bin;
> > +	int fd, ret;
> > +
> > +	bin =3D read_file(infile, &bin_size);
> > +	if (!bin) {
> > +		perror("read_file");
> > +		exit(1);
> > +	}
> > +
> > +	/* test if the binary has reserved space for the header */
> > +	hdr =3D bin;
> > +	if (hdr->branch =3D=3D EGON_HDR_BRANCH && memcmp(hdr->magic, "eGON",=
 4) =3D=3D 0) {
> > +		/* strip/skip existing header */
> > +		bin +=3D hdr_size;
> > +		bin_size -=3D hdr_size;
> > +	}
>=20
> Hm=2E=2E the 'normal' way is to write the header via the image tool, lik=
e it
> is done for the i=2EMX=2E The infile don't need to have reserved space i=
n
> front, instead this tool should prepend the header=2E
Yes, thisis only to accomodate for having the header in the =2Etext (see m=
y reply above)

> I attached you my two patches adding the eGON image support=2E Since I
> work on the D1 it is RSIC-V related but the eGON image creation should
> not differ that much, maybe the offset must be adapted which can be done
> via the command line=2E We could skip this special section handling if m=
y
> patches do work for you as well :)
Sounds nice, I don't when I will have time to test this=2E

Does the eGON header starts will a risc-v jump instruction ? Or is it stil=
l an arm32 insn ?


Cheers


