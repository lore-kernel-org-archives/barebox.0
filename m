Delivery-date: Mon, 05 Feb 2024 09:18:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWuBs-004056-0w
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 09:18:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWuBs-0005EY-AF
	for lore@pengutronix.de; Mon, 05 Feb 2024 09:18:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZDBKxzUm6PQt+N5P05y7EYHonEKRU85qGpqUDljJDg=; b=rPr8PeqaSDfkspUf553wpyGTrL
	6valTsKcFjUZ1t8Pk9T+flJqwd/eOvRZ7TG6/Z4lJdTH0NqJ3SzVxk7JWX6HD1JktQh2Ofgs/eAsp
	/jXlHAnmHNaDK+DuJunNYI6ahBFw/UDI11WB6nxCkqyp/w32gGZQ+ZcJvvqxroKEfLaCvVfWROXWV
	LkvDglDIC2p9/rYF9OzsnqWyxx0yGsIwkz96NmBSwDPi3LjlFryQXVfHry5Rm9D+ZiwaH8ruqLvyC
	+ZiSdQe2kSlioSDcgWCT3PrEDgAWSbNs6XUj44OMkyD7Q6urhNNXlAcPHbo+I7jG0ycbGlSdUzG7n
	9dAIVeTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWuBO-00000002QF0-1VaE;
	Mon, 05 Feb 2024 08:18:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWuBK-00000002QE7-3Sf4
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 08:18:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rWuBI-00057E-7j; Mon, 05 Feb 2024 09:18:20 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rWuBH-004atB-RW; Mon, 05 Feb 2024 09:18:19 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rWuBH-00CftE-2U;
	Mon, 05 Feb 2024 09:18:19 +0100
Date: Mon, 5 Feb 2024 09:18:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZcCZyz_AHbIvpkID@pengutronix.de>
References: <20240205074553.2005284-1-s.hauer@pengutronix.de>
 <20240205074553.2005284-6-s.hauer@pengutronix.de>
 <20240205081138.hjapkozekghq5rji@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240205081138.hjapkozekghq5rji@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240205_001823_217855_6F3AE44C 
X-CRM114-Status: GOOD (  49.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 5/8] common: add TQ EEPROM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Feb 05, 2024 at 09:11:38AM +0100, Marco Felsch wrote:
> Hi Sascha,
> 
> On 24-02-05, Sascha Hauer wrote:
> > Many TQ boards have an EEPROM with useful board information equipped.
> > Add support for reading this EEPROM. The code is based on the
> > corresponding U-Boot code from the TQ downstream U-Boot.
> > 
> > Right now not much of this information is actually used, the main
> > motivation for porting this code was to detect the DDR type on the
> > TQ i.MX93 boards. Distributing and printing the information is left
> > for a future excercise.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  common/boards/Kconfig        |   3 +
> >  common/boards/Makefile       |   1 +
> >  common/boards/tq/Makefile    |   1 +
> >  common/boards/tq/tq_eeprom.c | 140 +++++++++++++++++++++++++
> >  include/tq_eeprom.h          | 196 +++++++++++++++++++++++++++++++++++
> 
> should we bundle such includes under 'include/boards/' or
> 'include/boards/tq'?

There already is a include/boards/phytec/ containing includes
for code in common/boards/phytec. Following this pattern for new code is
a good idea. Will change that.

Sascha

> 
> Regards,
>   Marco
> 
> >  5 files changed, 341 insertions(+)
> >  create mode 100644 common/boards/tq/Makefile
> >  create mode 100644 common/boards/tq/tq_eeprom.c
> >  create mode 100644 include/tq_eeprom.h
> > 
> > diff --git a/common/boards/Kconfig b/common/boards/Kconfig
> > index a1d87c0215..fe3a60d508 100644
> > --- a/common/boards/Kconfig
> > +++ b/common/boards/Kconfig
> > @@ -10,3 +10,6 @@ config BOARD_PHYTEC_SOM_DETECTION
> >  config BOARD_PHYTEC_SOM_IMX8M_DETECTION
> >  	bool
> >  	select BOARD_PHYTEC_SOM_DETECTION
> > +
> > +config BOARD_TQ
> > +	bool
> > diff --git a/common/boards/Makefile b/common/boards/Makefile
> > index c1e1b78df3..147c36643d 100644
> > --- a/common/boards/Makefile
> > +++ b/common/boards/Makefile
> > @@ -2,3 +2,4 @@
> >  
> >  obj-$(CONFIG_BOARD_QEMU_VIRT)	+= qemu-virt/
> >  obj-$(CONFIG_BOARD_PHYTEC_SOM_DETECTION) += phytec/
> > +obj-$(CONFIG_BOARD_TQ) += tq/
> > diff --git a/common/boards/tq/Makefile b/common/boards/tq/Makefile
> > new file mode 100644
> > index 0000000000..9950cbdb00
> > --- /dev/null
> > +++ b/common/boards/tq/Makefile
> > @@ -0,0 +1 @@
> > +obj-pbl-y += tq_eeprom.o
> > diff --git a/common/boards/tq/tq_eeprom.c b/common/boards/tq/tq_eeprom.c
> > new file mode 100644
> > index 0000000000..83a24bbb04
> > --- /dev/null
> > +++ b/common/boards/tq/tq_eeprom.c
> > @@ -0,0 +1,140 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (c) 2014-2023 TQ-Systems GmbH <u-boot@ew.tq-group.com>,
> > + * D-82229 Seefeld, Germany.
> > + * Author: Markus Niebel
> > + */
> > +
> > +#include <common.h>
> > +#include <net.h>
> > +#include <linux/ctype.h>
> > +#include <crc.h>
> > +#include <pbl/i2c.h>
> > +#include <pbl/eeprom.h>
> > +
> > +#include "tq_eeprom.h"
> > +
> > +/*
> > + * static EEPROM layout
> > + */
> > +#define TQ_EE_HRCW_BYTES		0x20
> > +#define TQ_EE_RSV1_BYTES		10
> > +#define TQ_EE_RSV2_BYTES		8
> > +
> > +struct __packed tq_eeprom_data {
> > +	union {
> > +		struct tq_vard vard;
> > +		_Static_assert(sizeof(struct tq_vard) == TQ_EE_HRCW_BYTES, \
> > +			"struct tq_vard has incorrect size");
> > +		u8 hrcw_primary[TQ_EE_HRCW_BYTES];
> > +	} tq_hw_data;
> > +	u8 mac[TQ_EE_MAC_BYTES];		/* 0x20 ... 0x25 */
> > +	u8 rsv1[TQ_EE_RSV1_BYTES];
> > +	u8 serial[TQ_EE_SERIAL_BYTES];		/* 0x30 ... 0x37 */
> > +	u8 rsv2[TQ_EE_RSV2_BYTES];
> > +	u8 id[TQ_EE_BDID_BYTES];		/* 0x40 ... 0x7f */
> > +};
> > +
> > +static bool tq_vard_valid(const struct tq_vard *vard)
> > +{
> > +	const unsigned char *start = (const unsigned char *)(vard) +
> > +		sizeof(vard->crc);
> > +	u16 crc;
> > +
> > +	crc = crc_itu_t(0, start, sizeof(*vard) - sizeof(vard->crc));
> > +
> > +	return vard->crc == crc;
> > +}
> > +
> > +phys_size_t tq_vard_memsize(u8 val, unsigned int multiply, unsigned int tmask)
> > +{
> > +	phys_size_t result = 0;
> > +
> > +	if (val != VARD_MEMSIZE_DEFAULT) {
> > +		result = 1 << (size_t)(val & VARD_MEMSIZE_MASK_EXP);
> > +		if (val & tmask)
> > +			result *= 3;
> > +		result *= multiply;
> > +	}
> > +
> > +	return result;
> > +}
> > +
> > +void tq_vard_show(const struct tq_vard *vard)
> > +{
> > +	/* display data anyway to support developer */
> > +	printf("HW\tREV.%02uxx\n", (unsigned int)vard->hwrev);
> > +	printf("RAM\ttype %u, %lu MiB, %s\n",
> > +	       (unsigned int)(vard->memtype & VARD_MEMTYPE_MASK_TYPE),
> > +	       (unsigned long)(tq_vard_ramsize(vard) / (SZ_1M)),
> > +	       (tq_vard_has_ramecc(vard) ? "ECC" : "no ECC"));
> > +	printf("RTC\t%c\nSPINOR\t%c\ne-MMC\t%c\nSE\t%c\nEEPROM\t%c\n",
> > +	       (tq_vard_has_rtc(vard) ? 'y' : 'n'),
> > +	       (tq_vard_has_spinor(vard) ? 'y' : 'n'),
> > +	       (tq_vard_has_emmc(vard) ? 'y' : 'n'),
> > +	       (tq_vard_has_secelem(vard) ? 'y' : 'n'),
> > +	       (tq_vard_has_eeprom(vard) ? 'y' : 'n'));
> > +
> > +	if (tq_vard_has_eeprom(vard))
> > +		printf("EEPROM\ttype %u, %lu KiB, page %lu\n",
> > +		       (unsigned int)(vard->eepromtype & VARD_EETYPE_MASK_MFR) >> 4,
> > +		       (unsigned long)(tq_vard_eepromsize(vard) / (SZ_1K)),
> > +		       tq_vard_eeprom_pgsize(vard));
> > +
> > +	printf("FORMFACTOR: ");
> > +
> > +	switch (tq_vard_get_formfactor(vard)) {
> > +	case VARD_FORMFACTOR_TYPE_LGA:
> > +		printf("LGA\n");
> > +		break;
> > +	case VARD_FORMFACTOR_TYPE_CONNECTOR:
> > +		printf("CONNECTOR\n");
> > +		break;
> > +	case VARD_FORMFACTOR_TYPE_SMARC2:
> > +		printf("SMARC-2\n");
> > +		break;
> > +	case VARD_FORMFACTOR_TYPE_NONE:
> > +		/*
> > +		 * applies to boards with no variants or older boards
> > +		 * where this field is not written
> > +		 */
> > +		printf("UNSPECIFIED\n");
> > +		break;
> > +	default:
> > +		/*
> > +		 * generic fall trough
> > +		 * unhandled form factor or invalid data
> > +		 */
> > +		printf("UNKNOWN\n");
> > +		break;
> > +	}
> > +}
> > +
> > +static void tq_read_string(const char *src, char *dst, int len)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < len && isprint(src[i]) && isascii(src[i]); ++i)
> > +		dst[i] = src[i];
> > +	dst[i] = '\0';
> > +}
> > +
> > +struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr)
> > +{
> > +	struct tq_eeprom_data raw;
> > +	static struct tq_eeprom eeprom;
> > +	int ret;
> > +
> > +	ret = eeprom_read(i2c, addr, 0, &raw, sizeof(raw));
> > +	if (ret)
> > +		return NULL;
> > +
> > +	if (tq_vard_valid(&eeprom.vard))
> > +		eeprom.vard = raw.tq_hw_data.vard;
> > +
> > +	memcpy(eeprom.mac, raw.mac, TQ_EE_MAC_BYTES);
> > +	tq_read_string(raw.serial, eeprom.serial, TQ_EE_SERIAL_BYTES);
> > +	tq_read_string(raw.id, eeprom.id, TQ_EE_BDID_BYTES);
> > +
> > +	return &eeprom;
> > +}
> > diff --git a/include/tq_eeprom.h b/include/tq_eeprom.h
> > new file mode 100644
> > index 0000000000..9a81e6e61d
> > --- /dev/null
> > +++ b/include/tq_eeprom.h
> > @@ -0,0 +1,196 @@
> > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > +/*
> > + * Copyright (c) 2014-2023 TQ-Systems GmbH <u-boot@ew.tq-group.com>,
> > + * D-82229 Seefeld, Germany.
> > + * Author: Markus Niebel
> > + */
> > +
> > +#ifndef __TQ_EEPROM_H__
> > +#define __TQ_EEPROM_H__
> > +
> > +#include <linux/sizes.h>
> > +
> > +#define VARD_FEATURE_BYTES	8
> > +
> > +/*
> > + * VARD - variant and revision detection
> > + * must have an exact size of 32 bytes to fit in EEPROM just before
> > + * the module data
> > + */
> > +struct __packed tq_vard {
> > +	u16 crc;		/* checksum of vard data - CRC16 XMODEM */
> > +	u8 hwrev;		/* hardware major revision */
> > +	u8 memsize;		/* RAM size */
> > +	u8 memtype;		/* RAM Type + ECC */
> > +	u8 features[VARD_FEATURE_BYTES];	/* feature bitmask */
> > +	u8 eepromsize;		/* user eeprom size (feature EEPROM) */
> > +	u8 eepromtype;		/* user eeprom type (feature EEPROM) */
> > +	u8 formfactor;		/* SOM Form factor. mask 0xf0 */
> > +	u8 rsv[0x10];		/* for future use */
> > +};
> > +
> > +#define VARD_MEMTYPE_MASK_TYPE		0x7f /* board specific RAM Type */
> > +#define VARD_MEMTYPE_MASK_ECC		0x80 /* extra ECC RAM assembled */
> > +#define VARD_MEMTYPE_DEFAULT		0xff /* use board specific default */
> > +
> > +#define VARD_MEMSIZE_MASK_EXP		0x1f /* 2^n MBytes */
> > +#define VARD_MEMSIZE_MASK_FACTOR	0x20 /* x3 */
> > +#define VARD_MEMSIZE_DEFAULT		0xff /* use board specific default */
> > +
> > +/* feature is present if bit is zero */
> > +#define VARD_FEATURE_0_RESERVED		0xf0 /* Do not use */
> > +#define VARD_FEATURE_0_EMMC		0x08 /* e-MMC assembled */
> > +#define VARD_FEATURE_0_EEPROM		0x04 /* user EEPROM assembled */
> > +#define VARD_FEATURE_0_SPINOR		0x02 /* [Q,O]SPI-NOR assembled */
> > +#define VARD_FEATURE_0_SECELEM		0x01 /* secure element assembled */
> > +
> > +#define VARD_FEATURE_4_RESERVED		0xf0 /* Do not use */
> > +#define VARD_FEATURE_4_RTC		0x08 /* RTC assembled */
> > +
> > +#define VARD_EESIZE_MASK_EXP		0x1f /* 2^n Bytes */
> > +#define VARD_EETYPE_DEFAULT		0xff /* use board specific default */
> > +#define VARD_EETYPE_MASK_MFR		0xf0 /* manufacturer / type mask */
> > +#define VARD_EETYPE_MASK_PGSIZE		0x0f /* page size */
> > +
> > +#define VARD_FORMFACTOR_MASK_TYPE	0xf0 /* SOM type mask */
> > +#define VARD_FORMFACTOR_TYPE_CONNECTOR	0x00 /* SOM with connector, no board standard */
> > +#define VARD_FORMFACTOR_TYPE_LGA	0x10 /* LGA SOM, no board standard */
> > +#define VARD_FORMFACTOR_TYPE_SMARC2	0x20 /* SOM conforms to SMARC-2 standard */
> > +#define VARD_FORMFACTOR_TYPE_NONE	0xf0 /* unspecified SOM type */
> > +
> > +/*
> > + * all data should only be handled as valid, if CRC is OKAY
> > + */
> > +static inline
> > +bool tq_vard_has_ramecc(const struct tq_vard *vard)
> > +{
> > +	return (vard->memtype & VARD_MEMTYPE_MASK_ECC);
> > +}
> > +
> > +/*
> > + * Calculate size in byte using byte from vard
> > + * This works as long as coding for EEPROM / RAM size is the same
> > + * val - memsize byte from tq_vard structure
> > + * multiply - multiplier, aka 1 / SZ_1K / SZ_1M
> > + * tmask - mask for triple factor (use only for RAM sizes)
> > + *
> > + * return size in bytes or zero in case the val is equal to VARD_MEMSIZE_DEFAULT
> > + */
> > +phys_size_t tq_vard_memsize(u8 val, unsigned int multiply, unsigned int tmask);
> > +
> > +static inline
> > +phys_size_t tq_vard_ramsize(const struct tq_vard *vard)
> > +{
> > +	return tq_vard_memsize(vard->memsize, SZ_1M, VARD_MEMSIZE_MASK_FACTOR);
> > +}
> > +
> > +static inline
> > +size_t tq_vard_eepromsize(const struct tq_vard *vard)
> > +{
> > +	return tq_vard_memsize(vard->eepromsize, 1, 0x0);
> > +}
> > +
> > +static inline
> > +size_t tq_vard_eeprom_pgsize(const struct tq_vard *vard)
> > +{
> > +	return 1 << (size_t)(vard->eepromtype & VARD_EETYPE_MASK_PGSIZE);
> > +}
> > +
> > +static inline
> > +int tq_vard_has_feature(const struct tq_vard *vard, unsigned int fbyte,
> > +			unsigned int fbit)
> > +{
> > +	if (fbyte < VARD_FEATURE_BYTES && fbit < 8)
> > +		return !(vard->features[fbyte] & BIT(fbit));
> > +	else
> > +		return -ERANGE;
> > +}
> > +
> > +static inline
> > +bool tq_vard_has_emmc(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_has_feature(vard, 0, 3) > 0);
> > +}
> > +
> > +static inline
> > +bool tq_vard_has_eeprom(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_has_feature(vard, 0, 2) > 0);
> > +}
> > +
> > +static inline
> > +bool tq_vard_has_spinor(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_has_feature(vard, 0, 1) > 0);
> > +}
> > +
> > +static inline
> > +bool tq_vard_has_secelem(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_has_feature(vard, 0, 0) > 0);
> > +}
> > +
> > +static inline
> > +bool tq_vard_has_rtc(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_has_feature(vard, 4, 3) > 0);
> > +}
> > +
> > +static inline u32 tq_vard_get_formfactor(const struct tq_vard *vard)
> > +{
> > +	return (u32)(vard->formfactor & VARD_FORMFACTOR_MASK_TYPE);
> > +};
> > +
> > +static inline
> > +bool tq_vard_is_lga(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_get_formfactor(vard) == VARD_FORMFACTOR_TYPE_LGA);
> > +}
> > +
> > +static inline
> > +bool tq_vard_is_connector(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_get_formfactor(vard) == VARD_FORMFACTOR_TYPE_CONNECTOR);
> > +}
> > +
> > +static inline
> > +bool tq_vard_is_smarc2(const struct tq_vard *vard)
> > +{
> > +	return (tq_vard_get_formfactor(vard) == VARD_FORMFACTOR_TYPE_SMARC2);
> > +}
> > +
> > +void tq_vard_show(const struct tq_vard *vard);
> > +
> > +struct tq_som_feature_list;
> > +
> > +/**
> > + * fill in presence information from VARD.
> > + *
> > + * @param[in] vard pointer to VARD structure from SOM EEPROM
> > + * @param[in] features SOM specific feature list
> > + *
> > + * @return 0 on success
> > + *
> > + * Must be called after data was read to vard. The function checks
> > + * if vard is valid, goes through the list and sets the present flag
> > + * for each entry depending on the flags in vard.
> > + */
> > +int tq_vard_detect_features(const struct tq_vard *vard,
> > +			     struct tq_som_feature_list *features);
> > +
> > +#define TQ_EE_MAC_BYTES		6
> > +#define TQ_EE_SERIAL_BYTES	8
> > +#define TQ_EE_BDID_BYTES	0x40
> > +
> > +struct tq_eeprom {
> > +	struct tq_vard vard;
> > +	u8 mac[TQ_EE_MAC_BYTES];
> > +	u8 serial[TQ_EE_SERIAL_BYTES + 1];
> > +	u8 id[TQ_EE_BDID_BYTES + 1];
> > +};
> > +
> > +struct pbl_i2c;
> > +
> > +struct tq_eeprom *pbl_tq_read_eeprom(struct pbl_i2c *i2c, u8 addr);
> > +
> > +#endif
> > -- 
> > 2.39.2
> > 
> > 
> > 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


