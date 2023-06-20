Delivery-date: Tue, 20 Jun 2023 06:54:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBTOP-00E0Zl-1J
	for lore@lore.pengutronix.de; Tue, 20 Jun 2023 06:54:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBTOM-0001Cq-8h
	for lore@pengutronix.de; Tue, 20 Jun 2023 06:54:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXTtY3LnpiEQieKE+O26h1FzY0w3e8gmdIwiXalmmO4=; b=kQNDOe/q7UNIMwjsNE1OvoQm0b
	XMQV/YtF0VnBls0QfjN9FTar+iwUr0Cd8ePNW6COeaT3w/KHQc0LicWQOp+9IQJAAhc19XrEPNjUp
	+GHK/dWPHEnm8o57r4ZE9jyDyh1WetFd35dSaBGI91biHgd9UCvmGGdLrO0uKmTf0nYNAibOwMrWx
	SDRKBFH+e2d1BhzHIlSfBEQdOukPJakKYJ5u/wq7EhJBMpso4iVoybBtZsx0FGOd710+ldD+wKWfu
	2EIj7j+HxU6otDvl92QwE85N6I69dDZ+hNI8BHMz2SlZbG6dxqZXJK2VQK9jh3NjGuW4i/dIL5Zef
	wMYqeUqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBTMN-00A9Wb-0X;
	Tue, 20 Jun 2023 04:52:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBTMI-00A9Vw-1T
	for barebox@lists.infradead.org;
	Tue, 20 Jun 2023 04:52:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBTMD-00017I-JQ; Tue, 20 Jun 2023 06:52:45 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBTMD-0006DM-5L; Tue, 20 Jun 2023 06:52:45 +0200
Date: Tue, 20 Jun 2023 06:52:45 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230620045245.u5mwv3v335roq35l@pengutronix.de>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-3-jmaselbas@zdiv.net>
 <20230616220057.bvz75z5hnyqgzkw5@pengutronix.de>
 <6F176D27-AD10-4F80-AD5E-3B3C56C33327@zdiv.net>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wapklawm5eiwwpvd"
Content-Disposition: inline
In-Reply-To: <6F176D27-AD10-4F80-AD5E-3B3C56C33327@zdiv.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_215250_660023_CCA49767 
X-CRM114-Status: GOOD (  52.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 02/13] scripts: Add Allwinner eGON image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


--wapklawm5eiwwpvd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 23-06-17, Jules Maselbas wrote:
> Hi Marco,
> 
> On June 17, 2023 12:00:57 AM GMT+02:00, Marco Felsch <m.felsch@pengutronix.de> wrote:
> > Hi Jules,
> > 
> > since I work on the D1 support I also had to port the eGON image support
> > to barebox ^^ Please see my below comments.
> > 
> > On 23-05-25, Jules Maselbas wrote:

...

> > > +#define EGON_HDR_BRANCH (0xea000000 | (sizeof(struct egon_header) / 4 - 2))
> > > +#define sunxi_egon_header(section) {					\
> > > +		__section(section) static const struct egon_header hdr= \
> > > +			{ .branch = EGON_HDR_BRANCH, .magic = "eGON" };	\
> > > +		__keep_symbolref(hdr);					\
> > > +	}
> > 
> > Using an additional sections seems a bit odd here. We can just write the
> > header within the image tool.
>
> That's what I wanted to do in the first place but I struggled a lot to
> get barebox relocation working.
> Having the eGON header embedded in the .text (since the header is
> loaded by bootrom) is the only solution i found to get the relocation
> working.

Hm.. at least on RISC-V I had no problems with
relocate_to_current_adr(). Also checking the ARM relocation code does
not show why the header should be a problem if
relocate_to_current_adr() is used.

> I am all for a better way but I really whish to have a first version
> applied.
> 
> > 
> > > +#endif
> > > diff --git a/scripts/Kconfig b/scripts/Kconfig
> > > index dcd5f32d1d..7517f5b79f 100644
> > > --- a/scripts/Kconfig
> > > +++ b/scripts/Kconfig
> > > @@ -56,6 +56,13 @@ config RK_IMAGE
> > >  	help
> > >  	  This enables building the image creation tool for Rockchip SoCs
> > >  
> > > +config EGON_IMAGE
> > > +       bool "Allwinner eGON image tool" if COMPILE_HOST_TOOLS
> > > +       depends on ARCH_SUNXI || COMPILE_HOST_TOOLS
> > > +       default y if ARCH_SUNXI
> > > +       help
> > > +         This enables building the image creation tool for Allwinner sunxi SoCs
> > > +
> > >  config OMAP_IMAGE
> > >  	bool "TI OMAP image tools" if COMPILE_HOST_TOOLS
> > >  	depends on ARCH_OMAP || COMPILE_HOST_TOOLS
> > > diff --git a/scripts/Makefile b/scripts/Makefile
> > > index 72ad9ad7a6..13e80db7af 100644
> > > --- a/scripts/Makefile
> > > +++ b/scripts/Makefile
> > > @@ -28,6 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
> > >  hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
> > >  hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
> > >  hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
> > > +hostprogs-always-$(CONFIG_EGON_IMAGE)			+= egon_mkimage
> > >  HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
> > >  HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
> > >  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
> > > diff --git a/scripts/egon_mkimage.c b/scripts/egon_mkimage.c
> > > new file mode 100644
> > > index 0000000000..5983bdb28a
> > > --- /dev/null
> > > +++ b/scripts/egon_mkimage.c
> > > @@ -0,0 +1,122 @@
> > > +/* SPDX-License-Identifier: GPL-2.0-or-later */
> > > +
> > > +#include <stdio.h>
> > > +#include <errno.h>
> > > +#include <stdlib.h>
> > > +#include <stdint.h>
> > > +#include <string.h>
> > > +#include <linux/kernel.h>
> > > +
> > > +#include "../include/mach/sunxi/egon.h"
> > > +
> > > +#include "compiler.h"
> > > +#include "common.h"
> > > +#include "common.c"
> > > +
> > > +#define STAMP_VALUE 0x5f0a6c39
> > > +
> > > +static void mkimage(char *infile, char *outfile)
> > > +{
> > > +	struct egon_header *hdr;
> > > +	uint32_t *p32;
> > > +	uint32_t sum;
> > > +	int i;
> > > +	size_t hdr_size = sizeof(*hdr);
> > > +	size_t bin_size;
> > > +	size_t img_size;
> > > +	void *bin;
> > > +	int fd, ret;
> > > +
> > > +	bin = read_file(infile, &bin_size);
> > > +	if (!bin) {
> > > +		perror("read_file");
> > > +		exit(1);
> > > +	}
> > > +
> > > +	/* test if the binary has reserved space for the header */
> > > +	hdr = bin;
> > > +	if (hdr->branch == EGON_HDR_BRANCH && memcmp(hdr->magic, "eGON", 4) == 0) {
> > > +		/* strip/skip existing header */
> > > +		bin += hdr_size;
> > > +		bin_size -= hdr_size;
> > > +	}
> > 
> > Hm.. the 'normal' way is to write the header via the image tool, like it
> > is done for the i.MX. The infile don't need to have reserved space in
> > front, instead this tool should prepend the header.
>
> Yes, thisis only to accomodate for having the header in the .text (see
> my reply above)

Thanks for the explanation.

> > I attached you my two patches adding the eGON image support. Since I
> > work on the D1 it is RSIC-V related but the eGON image creation should
> > not differ that much, maybe the offset must be adapted which can be done
> > via the command line. We could skip this special section handling if my
> > patches do work for you as well :)
>
> Sounds nice, I don't when I will have time to test this.

No worries, I will start picking your patches as well for the D1
lowlevel support.

> Does the eGON header starts will a risc-v jump instruction ? Or is it
> still an arm32 insn ?

Yep, there is a special handling for each architecture. That been said,
I noticed that I had a fixup patch ontop of my image generation tool,
which I attached.

--wapklawm5eiwwpvd
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment; filename="0001-fixup-sunxi-add-image-support.patch"

>From 1e9e0c9515e644abeda066c5387d1338d927cbda Mon Sep 17 00:00:00 2001
From: Marco Felsch <marco.felsch@gmail.com>
Date: Wed, 26 Apr 2023 21:51:26 +0200
Subject: [PATCH] fixup! sunxi: add image support

---
 scripts/sunxi_egon.c | 40 +++++++++++++++++++++-------------------
 1 file changed, 21 insertions(+), 19 deletions(-)

diff --git a/scripts/sunxi_egon.c b/scripts/sunxi_egon.c
index 6d74a83ad8..b339955295 100644
--- a/scripts/sunxi_egon.c
+++ b/scripts/sunxi_egon.c
@@ -29,11 +29,12 @@ static int write_image(int infd, int outfd, enum sunxi_arch arch,
 		       unsigned long pblsize, unsigned long ofs)
 {
 	struct boot_file_head *header;
+	unsigned int header_sz;
 	uint32_t checksum = 0;
-	void *buf, *origbuf;
 	unsigned long size;
 	uint32_t *buf32;
        	uint32_t value;
+	void *buf;
 	int ret;
 	int i;
 
@@ -43,8 +44,10 @@ static int write_image(int infd, int outfd, enum sunxi_arch arch,
 	if (!buf)
 		return 1;
 
+	memset(buf, 0, size);
+
 	header = buf;
-	buf32 = buf;
+	header_sz = sizeof(*header);
 
 	/*
 	 * Different architectures need different first instruction to
@@ -53,7 +56,7 @@ static int write_image(int infd, int outfd, enum sunxi_arch arch,
 	switch (arch) {
 	case SUNXI_ARCH_ARM:
 		/* Generate an ARM branch instruction to jump over the header. */
-		value = 0xea000000 | (sizeof(*header) / 4 - 2);
+		value = 0xea000000 | (header_sz / 4 - 2);
 		header->b_instruction = cpu_to_le32(value);
 		break;
 	case SUNXI_ARCH_RISCV:
@@ -68,10 +71,10 @@ static int write_image(int infd, int outfd, enum sunxi_arch arch,
 		 * is not allowed).
 		 */
 		value = 0x0000006f |
-			((sizeof(*header) & 0x00100000) << 11) |
-			((sizeof(*header) & 0x000007fe) << 20) |
-			((sizeof(*header) & 0x00000800) << 9) |
-			((sizeof(*header) & 0x000ff000) << 0);
+			((header_sz & 0x00100000) << 11) |
+			((header_sz & 0x000007fe) << 20) |
+			((header_sz & 0x00000800) << 9) |
+			((header_sz & 0x000ff000) << 0);
 		header->b_instruction = cpu_to_le32(value);
 		break;
 	default:
@@ -85,33 +88,32 @@ static int write_image(int infd, int outfd, enum sunxi_arch arch,
 	memcpy(header->spl_signature, SPL_SIGNATURE, 3);
 	header->spl_signature[3] = SPL_ENV_HEADER_VERSION;
 
-	/* Calculate the checksum. Yes, it's that simple. */
-	for (i = 0; i < size / 4; i++)
-		checksum += le32_to_cpu(buf32[i]);
-	header->check_sum = cpu_to_le32(checksum);
-
-	origbuf = buf;
-	buf += sizeof(*header);
-	ret = read(infd, buf, pblsize);
+	ret = read(infd, buf + header_sz, pblsize);
 	if (ret > pblsize) {
 		printf("Error: While read: 0x%d > 0x%ld bytes!\n",
 		       ret, pblsize);
-		free(origbuf);
+		free(buf);
 		return 1;
 	}
 
+	/* Calculate the checksum. Yes, it's that simple. */
+	buf32 = buf;
+	for (i = 0; i < size / 4; i++)
+		checksum += le32_to_cpu(buf32[i]);
+	header->check_sum = cpu_to_le32(checksum);
+
 	if (ofs)
 		lseek(outfd, ofs, SEEK_SET);
 
-	ret = write(outfd, origbuf, size);
+	ret = write(outfd, buf, size);
 	if (ret != size) {
 		printf("Error: While write: 0x%d != 0x%ld bytes!\n",
 		       ret, size);
-		free(origbuf);
+		free(buf);
 		return 1;
 	}
 
-	free(origbuf);
+	free(buf);
 
 	return 0;
 }
-- 
2.39.2


--wapklawm5eiwwpvd--


