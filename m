Delivery-date: Mon, 12 Apr 2021 11:50:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVtD1-0004K4-Qf
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 11:50:19 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVtD0-0001Tw-C0
	for lore@pengutronix.de; Mon, 12 Apr 2021 11:50:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gRgwFn47JwgA9Wts9LNDrolqMbaQKpZmhB01U4cV1nE=; b=YyiUnRagGui3X3wFhptc73o63
	w5Tnn67rJy+e3t6WFER6kwuv7on98XkTw3iwyXa88yM51tl7LEb01m0QLiHkrnv1VpcuuFmQNdb+F
	bmIkrUQby/JdFYkQ8McIYPgU9DWfTV0rflB97vjcE4/YEj2EpYAaVH/SWDodWisXKE0fuLalgD0wO
	GYPrFTLMY5zyDJCBCnDQgO0i5EWQ2TaJG5ncUXskXtlHl9pSvdwFN84Do371JNUoJvltRwqrJ2e6a
	RTLTpOYRRZbRUan1J/pU3WX0W/KCK5IzJvwo0IqjDezYS/s3ZuT63oAPp3K4hzfGT55KnVGIfV215
	pZKtLF/5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVtAi-006LYC-I7; Mon, 12 Apr 2021 09:47:58 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVt8H-006Ky7-Ic
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 09:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=+Oc5+f2IdXWyuEqxxbnmVaylkkGFg0O3BMJNFYJFFBw=; b=Hk8GMjYJln6UwbUuJQOle21p49
 KORU+D8TOmtUnP/LkMTDgAumCz65YU9AcqjxgwX5MyBXejecAKfxVuJz721AA86d1AP8Dmb5SoPHg
 S5cv3onqjEwBhUpATeIPdewVDR+jkGz7y1Qh43nv+KYvmhgXol2h0zJXxzEdJfY6nbVZ1Kw7tJtYT
 0J13Gy7kGsVcBdpHYqxtCUa3A4/faFqD7MblbqC3eKH01MA06sHMGtcC3p1WjLWp/jsc+o8XOMnrF
 Ms/GVhyazh1VSMw0WoV0chq69UvMVB6hPeWTHJUw4ZjT0LhCvjye2MH6ZPNYSX0ujvgl4zzyBomPv
 VAv1BHAw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVt8E-0065iI-5z
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 09:45:24 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lVt8C-0000SL-0r; Mon, 12 Apr 2021 11:45:20 +0200
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
 <20210412071651.8769-5-a.fatoum@pengutronix.de>
 <20210412092710.GA21066@tellis.lin.mbt.kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b269b87e-db9c-b590-6ec7-f551f5dd7b8c@pengutronix.de>
Date: Mon, 12 Apr 2021 11:45:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210412092710.GA21066@tellis.lin.mbt.kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_024522_421765_06007678 
X-CRM114-Status: GOOD (  30.37  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/17] MIPS: qemu-malta: generate swapped image as part of
 multi-image build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Jules,

On 12.04.21 11:27, Jules Maselbas wrote:
> Hi Ahmad,
> 
> Just in case you didn't know, the byte swap can be done
> without a writting C program but with a simple shell script.
> 
> You can use objcopy to create a byte swapped image:
> objcopy -I binary --reverse-bytes=4 barebox barebox.swapped
> 
> You can use truncate to make sure the file size is multiple of 4 bytes:
> truncate -s %4 file
> 
> bswap32 script could be implemented like this:
> cp $in $out
> truncate -s %4 $out
> objcopy -I binary --reverse-byte=4 $out

I did not know that objcopy can be used for that. Will try it out and
send a fixup.

Thanks!
Ahmad

> 
> Best,
> Jules
> 
> On Mon, Apr 12, 2021 at 09:16:38AM +0200, Ahmad Fatoum wrote:
>> Having to manually swap the words in the MIPS Malta image for QEMU
>> little endian emulation is annoying.
>>
>> Have the multi-image build for Malta generate a second .swapped
>> image that can be readily used if needed.
>>
>> Cc: Antony Pavlov <antonynpavlov@gmail.com>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  Documentation/boards/mips/qemu-malta.rst | 16 ++---
>>  images/.gitignore                        |  1 +
>>  images/Makefile                          |  2 +-
>>  images/Makefile.malta                    |  8 ++-
>>  scripts/Makefile                         |  1 +
>>  scripts/bswap.c                          | 83 ++++++++++++++++++++++++
>>  6 files changed, 97 insertions(+), 14 deletions(-)
>>  create mode 100644 scripts/bswap.c
>>
>> diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
>> index e188ae8c642a..fd37d5edb229 100644
>> --- a/Documentation/boards/mips/qemu-malta.rst
>> +++ b/Documentation/boards/mips/qemu-malta.rst
>> @@ -10,31 +10,23 @@ QEMU run string:
>>  
>>    qemu-system-mips -nodefaults -M malta -m 256 \
>>        -device VGA -serial stdio -monitor null \
>> -      -bios barebox-flash-image
>> +      -bios ./images/barebox-qemu-malta.img
>>  
>>  
>>  Little-endian mode
>>  ------------------
>>  
>> -Running little-endian Malta is a bit tricky.
>>  In little-endian mode the 32bit words in the boot flash image are swapped,
>>  a neat trick which allows bi-endian firmware.
>>  
>> -You have to swap words of ``zbarebox.bin`` image, e.g.:
>> -
>> -.. code-block:: sh
>> -
>> -  echo arch/mips/pbl/zbarebox.bin \
>> -      | cpio --create \
>> -      | cpio --extract --swap --unconditional
>> -
>> -QEMU run string:
>> +The barebox build generates a second ``./images/barebox-qemu-malta.img.swapped``
>> +image that can be used in this case, e.g.:
>>  
>>  .. code-block:: sh
>>  
>>    qemu-system-mipsel -nodefaults -M malta -m 256 \
>>        -device VGA -serial stdio -monitor null \
>> -      -bios barebox-flash-image
>> +      -bios ./images/barebox-qemu-malta.img.swapped
>>  
>>  
>>  Using GXemul
>> diff --git a/images/.gitignore b/images/.gitignore
>> index eafdb44b5bdd..3a9a77dad16e 100644
>> --- a/images/.gitignore
>> +++ b/images/.gitignore
>> @@ -32,3 +32,4 @@ barebox.sum
>>  *.mvebu1img
>>  *.stm32
>>  *.nmon
>> +*.swapped
>> diff --git a/images/Makefile b/images/Makefile
>> index c185982c17ed..cc330d957597 100644
>> --- a/images/Makefile
>> +++ b/images/Makefile
>> @@ -218,5 +218,5 @@ $(flash-list): $(image-y-path)
>>  clean-files := *.pbl *.pblb *.map start_*.imximg *.img barebox.z start_*.kwbimg \
>>  	start_*.kwbuartimg *.socfpgaimg *.mlo *.t20img *.t20img.cfg *.t30img \
>>  	*.t30img.cfg *.t124img *.t124img.cfg *.mlospi *.mlo *.mxsbs *.mxssd \
>> -	start_*.simximg start_*.usimximg *.zynqimg *.image
>> +	start_*.simximg start_*.usimximg *.zynqimg *.image *.swapped
>>  clean-files += pbl.lds
>> diff --git a/images/Makefile.malta b/images/Makefile.malta
>> index 5739ec464092..ce7b4424b63b 100644
>> --- a/images/Makefile.malta
>> +++ b/images/Makefile.malta
>> @@ -1,3 +1,9 @@
>> +quiet_cmd_bswap32_image = BSWAP4  $@
>> +      cmd_bswap32_image = scripts/bswap -B 4 $< > $@
>> +
>> +$(obj)/%.img.swapped: $(obj)/%.img FORCE
>> +	$(call if_changed,bswap32_image)
>> +
>>  pblb-$(CONFIG_BOARD_QEMU_MALTA) += start_qemu_malta
>>  FILE_barebox-qemu-malta.img = start_qemu_malta.pblb
>> -image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img
>> +image-$(CONFIG_BOARD_QEMU_MALTA) += barebox-qemu-malta.img barebox-qemu-malta.img.swapped
>> diff --git a/scripts/Makefile b/scripts/Makefile
>> index 2d322fd1c923..57861fa9b2f8 100644
>> --- a/scripts/Makefile
>> +++ b/scripts/Makefile
>> @@ -16,6 +16,7 @@ hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
>>  hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
>>  hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
>>  hostprogs-always-$(CONFIG_ARCH_OMAP)			+= omap_signGP mk-omap-image
>> +hostprogs-always-$(CONFIG_BOARD_QEMU_MALTA)		+= bswap
>>  hostprogs-always-$(CONFIG_ARCH_S5PCxx)			+= s5p_cksum
>>  hostprogs-always-$(CONFIG_ARCH_DAVINCI)			+= mkublheader
>>  HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
>> diff --git a/scripts/bswap.c b/scripts/bswap.c
>> new file mode 100644
>> index 000000000000..e87d30cfe51e
>> --- /dev/null
>> +++ b/scripts/bswap.c
>> @@ -0,0 +1,83 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +// SPDX-FileCopyrightText: 2012 Jan Luebbe <j.luebbe@pengutronix.de>
>> +
>> +#define _BSD_SOURCE
>> +#define _DEFAULT_SOURCE
>> +
>> +#include <stdio.h>
>> +#include <sys/types.h>
>> +#include <sys/stat.h>
>> +#include <fcntl.h>
>> +#include <unistd.h>
>> +#include <stdint.h>
>> +#include <limits.h>
>> +#include <errno.h>
>> +#include <stdlib.h>
>> +#include <string.h>
>> +#include <getopt.h>
>> +#include <endian.h>
>> +
>> +static void usage(char *prgname)
>> +{
>> +	printf("usage: %s [OPTION] FILE > IMAGE\n"
>> +	       "\n"
>> +	       "options:\n"
>> +	       "  -B           number of bytes to swap each time\n",
>> +	       prgname);
>> +}
>> +
>> +int main(int argc, char *argv[])
>> +{
>> +	FILE *input;
>> +	int opt;
>> +	size_t size;
>> +	unsigned long bytes = 0;
>> +	uint32_t temp_u32;
>> +
>> +	while((opt = getopt(argc, argv, "B:")) != -1) {
>> +		switch (opt) {
>> +		case 'B':
>> +			bytes = strtoul(optarg, NULL, 0);
>> +			break;
>> +		}
>> +	}
>> +
>> +	if (optind >= argc) {
>> +		usage(argv[0]);
>> +		return 1;
>> +	}
>> +
>> +	if (bytes != 4) {
>> +		fprintf(stderr, "-B %s unsupported\n", optarg);
>> +		return 1;
>> +	}
>> +
>> +	input = fopen(argv[optind], "r");
>> +	if (input == NULL) {
>> +		perror("fopen");
>> +		return 1;
>> +	}
>> +
>> +	for (;;) {
>> +		size = fread(&temp_u32, 1, sizeof(uint32_t), input);
>> +		if (!size)
>> +			break;
>> +		if (size < 4 && !feof(input)) {
>> +			perror("fread");
>> +			return 1;
>> +		}
>> +
>> +		temp_u32 = htobe32(le32toh(temp_u32));
>> +		if (fwrite(&temp_u32, 1, sizeof(uint32_t), stdout) != 4) {
>> +			perror("fwrite");
>> +			return 1;
>> +		}
>> +	}
>> +
>> +	if (fclose(input) != 0) {
>> +		perror("fclose");
>> +		return 1;
>> +	}
>> +
>> +	return 0;
>> +}
>> -- 
>> 2.29.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

