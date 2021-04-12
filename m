Delivery-date: Mon, 12 Apr 2021 11:28:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVssL-0004IK-Ok
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 11:28:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVssK-0006sX-M3
	for lore@pengutronix.de; Mon, 12 Apr 2021 11:28:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iuKZa8NjMS2Swwkbw1F90ccyT9qmL43wiPxhJSU47eU=; b=fDwU86xncg3eisUa0k7mNsCPq
	72nh2GL1NmKPSujuk9W5mhgQBVqQQKFgyiRMtMxO/FQNmIAdMEK0HzIIxB4pKofMJQ1cEU6+j89ws
	pByZ8WBp+LozGgZJ0dKu9xWDCDc8MlFpc4RikFbir8TaaMeSmHZTgu4yF1r98Pdfdoc0zz98el6GS
	WjCod790yzi0tlgjEDKH0IEhoYARffxfwmoBUm8O/lsaY6D1nCZJSov56liM6jx7WxJVDoO+nfX0k
	+z/79fAjkiM7Ed6GZ71yEhYp6QSMxVVI8GUDKWsQ5b2HWu+oiHXQU+E9aN1BEMRK95dfsLwJNfBoN
	SXnYaOx8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVsqz-006H86-A6; Mon, 12 Apr 2021 09:27:36 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVsqu-006H7F-5q
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 09:27:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=F74SGeqHy0pbngTV3Q8mytDPGuISIOWsL3iUfwC5puk=; b=Wut6k0P+QDyl4Yej2E2w8C3zFB
 GhF/ccDzgqxM8hyVFKPROazBT3FwfPZFuNhTBCF6Z6NdZzIFCmRAHReEHjxE9aRdchKVbpIX4qbLB
 PIaiAYtMYM/FV55qvfcPU9iBIigtfX72R4OuUKUqUjBehx6WsSVHM6sDvFY0Keb5RA9z7KcurowRI
 FdQOjlwOPLTy0HgEi1OPm7LUzOwJhVRTltdv5Uv0YK4RuLnrta+qaI36j225HwCnKFIbnn7XVGP5+
 kq4x+WjIsaGcNhKxtGobe1Sjojy3Fn1H4bFcm0I2AaMEao6jSyV/FpA9k+W/f+vw3gM071bqlDZHT
 Sx7AZwUQ==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVsqq-0063TC-T2
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 09:27:27 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 73C471A8A61
 for <barebox@lists.infradead.org>; Mon, 12 Apr 2021 09:27:19 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KNEE6WVJ;
 Mon, 12 Apr 2021 09:27:19 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id 39F791A8A5F;
 Mon, 12 Apr 2021 09:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 2867927E035D;
 Mon, 12 Apr 2021 11:27:19 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id xoGpq7eYZjWW; Mon, 12 Apr 2021 11:27:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 72A3C27E0877;
 Mon, 12 Apr 2021 11:27:18 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 72A3C27E0877
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1618219638;
 bh=F74SGeqHy0pbngTV3Q8mytDPGuISIOWsL3iUfwC5puk=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=RKfksQ8sJ3zj9a3gYZMoKji/kTAKNEswXlVcuBzLoAIKETvMHc9QNvIyO1n+wh2XX
 UfF6ptcbKqndUc/lPZrhdBtox2O8574QB+JNbTXHDIPbVUsObHZlGd2lRiX1AdRYt0
 jP14Is7puVDsx8w30A+drpjUwNF+99nuUMAkVn+M=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id eSJB2MJpv24r; Mon, 12 Apr 2021 11:27:18 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 59BDA27E035D;
 Mon, 12 Apr 2021 11:27:18 +0200 (CEST)
Date: Mon, 12 Apr 2021 11:27:10 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-ID: <20210412092710.GA21066@tellis.lin.mbt.kalray.eu>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
 <20210412071651.8769-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210412071651.8769-5-a.fatoum@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_022725_282221_56CBB96B 
X-CRM114-Status: GOOD (  28.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/17] MIPS: qemu-malta: generate swapped image as part
 of multi-image build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

Just in case you didn't know, the byte swap can be done
without a writting C program but with a simple shell script.

You can use objcopy to create a byte swapped image:
objcopy -I binary --reverse-bytes=4 barebox barebox.swapped

You can use truncate to make sure the file size is multiple of 4 bytes:
truncate -s %4 file

bswap32 script could be implemented like this:
cp $in $out
truncate -s %4 $out
objcopy -I binary --reverse-byte=4 $out

Best,
Jules

On Mon, Apr 12, 2021 at 09:16:38AM +0200, Ahmad Fatoum wrote:
> Having to manually swap the words in the MIPS Malta image for QEMU
> little endian emulation is annoying.
> 
> Have the multi-image build for Malta generate a second .swapped
> image that can be readily used if needed.
> 
> Cc: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/mips/qemu-malta.rst | 16 ++---
>  images/.gitignore                        |  1 +
>  images/Makefile                          |  2 +-
>  images/Makefile.malta                    |  8 ++-
>  scripts/Makefile                         |  1 +
>  scripts/bswap.c                          | 83 ++++++++++++++++++++++++
>  6 files changed, 97 insertions(+), 14 deletions(-)
>  create mode 100644 scripts/bswap.c
> 
> diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
> index e188ae8c642a..fd37d5edb229 100644
> --- a/Documentation/boards/mips/qemu-malta.rst
> +++ b/Documentation/boards/mips/qemu-malta.rst
> @@ -10,31 +10,23 @@ QEMU run string:
>  
>    qemu-system-mips -nodefaults -M malta -m 256 \
>        -device VGA -serial stdio -monitor null \
> -      -bios barebox-flash-image
> +      -bios ./images/barebox-qemu-malta.img
>  
>  
>  Little-endian mode
>  ------------------
>  
> -Running little-endian Malta is a bit tricky.
>  In little-endian mode the 32bit words in the boot flash image are swapped,
>  a neat trick which allows bi-endian firmware.
>  
> -You have to swap words of ``zbarebox.bin`` image, e.g.:
> -
> -.. code-block:: sh
> -
> -  echo arch/mips/pbl/zbarebox.bin \
> -      | cpio --create \
> -      | cpio --extract --swap --unconditional
> -
> -QEMU run string:
> +The barebox build generates a second ``./images/barebox-qemu-malta.img.swapped``
> +image that can be used in this case, e.g.:
>  
>  .. code-block:: sh
>  
>    qemu-system-mipsel -nodefaults -M malta -m 256 \
>        -device VGA -serial stdio -monitor null \
> -      -bios barebox-flash-image
> +      -bios ./images/barebox-qemu-malta.img.swapped
>  
>  
>  Using GXemul
> diff --git a/images/.gitignore b/images/.gitignore
> index eafdb44b5bdd..3a9a77dad16e 100644
> --- a/images/.gitignore
> +++ b/images/.gitignore
> @@ -32,3 +32,4 @@ barebox.sum
>  *.mvebu1img
>  *.stm32
>  *.nmon
> +*.swapped
> diff --git a/images/Makefile b/images/Makefile
> index c185982c17ed..cc330d957597 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -218,5 +218,5 @@ $(flash-list): $(image-y-path)
>  clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
>  	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
>  	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
> -	start_*.simximg start_*.usimximg *.zynqimg *.image
> +	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
>  clean-files += pbl.lds
> diff --git a/images/Makefile.malta b/images/Makefile.malta
> index 5739ec464092..ce7b4424b63b 100644
> --- a/images/Makefile.malta
> +++ b/images/Makefile.malta
> @@ -1,3 +1,9 @@
> +quiet_cmd_bswap32_image = BSWAP4  $@
> +      cmd_bswap32_image = scripts/bswap -B 4 $< > $@
> +
> +$(obj)/%.img.swapped: $(obj)/%.img FORCE
> +	$(call if_changed,bswap32_image)
> +
>  pblb-$(CONFIG_BOARD_QEMU_MALTA) += start_qemu_malta
>  FILE_barebox-qemu-malta.img = start_qemu_malta.pblb
> -image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img
> +image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img barebox-qemu-malta.img.swapped
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 2d322fd1c923..57861fa9b2f8 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -16,6 +16,7 @@ hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
>  hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
>  hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
>  hostprogs-always-$(CONFIG_ARCH_OMAP)			+= omap_signGP mk-omap-image
> +hostprogs-always-$(CONFIG_BOARD_QEMU_MALTA)		+= bswap
>  hostprogs-always-$(CONFIG_ARCH_S5PCxx)			+= s5p_cksum
>  hostprogs-always-$(CONFIG_ARCH_DAVINCI)			+= mkublheader
>  HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
> diff --git a/scripts/bswap.c b/scripts/bswap.c
> new file mode 100644
> index 000000000000..e87d30cfe51e
> --- /dev/null
> +++ b/scripts/bswap.c
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2012 Jan Luebbe <j.luebbe@pengutronix.de>
> +
> +#define _BSD_SOURCE
> +#define _DEFAULT_SOURCE
> +
> +#include <stdio.h>
> +#include <sys/types.h>
> +#include <sys/stat.h>
> +#include <fcntl.h>
> +#include <unistd.h>
> +#include <stdint.h>
> +#include <limits.h>
> +#include <errno.h>
> +#include <stdlib.h>
> +#include <string.h>
> +#include <getopt.h>
> +#include <endian.h>
> +
> +static void usage(char *prgname)
> +{
> +	printf("usage: %s [OPTION] FILE > IMAGE\n"
> +	       "\n"
> +	       "options:\n"
> +	       "  -B           number of bytes to swap each time\n",
> +	       prgname);
> +}
> +
> +int main(int argc, char *argv[])
> +{
> +	FILE *input;
> +	int opt;
> +	size_t size;
> +	unsigned long bytes = 0;
> +	uint32_t temp_u32;
> +
> +	while((opt = getopt(argc, argv, "B:")) != -1) {
> +		switch (opt) {
> +		case 'B':
> +			bytes = strtoul(optarg, NULL, 0);
> +			break;
> +		}
> +	}
> +
> +	if (optind >= argc) {
> +		usage(argv[0]);
> +		return 1;
> +	}
> +
> +	if (bytes != 4) {
> +		fprintf(stderr, "-B %s unsupported\n", optarg);
> +		return 1;
> +	}
> +
> +	input = fopen(argv[optind], "r");
> +	if (input == NULL) {
> +		perror("fopen");
> +		return 1;
> +	}
> +
> +	for (;;) {
> +		size = fread(&temp_u32, 1, sizeof(uint32_t), input);
> +		if (!size)
> +			break;
> +		if (size < 4 && !feof(input)) {
> +			perror("fread");
> +			return 1;
> +		}
> +
> +		temp_u32 = htobe32(le32toh(temp_u32));
> +		if (fwrite(&temp_u32, 1, sizeof(uint32_t), stdout) != 4) {
> +			perror("fwrite");
> +			return 1;
> +		}
> +	}
> +
> +	if (fclose(input) != 0) {
> +		perror("fclose");
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

