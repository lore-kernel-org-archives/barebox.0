Delivery-date: Wed, 28 Feb 2024 09:57:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFks-00D4hs-1v
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 09:57:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfFkr-0004x6-St
	for lore@pengutronix.de; Wed, 28 Feb 2024 09:57:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PRvdeYA+kh9mxhMuzjSo4YHUqOe3tfvOwwJYVN2JeeY=; b=AAFvAeKJoTSaQ2LxB09jzRitaq
	0eDenwHzmt4/ikKIbRhnxXNpkJyBQRKUSaZaRs+d8O/wd6ae+ekPSNXlP5/AtkPzttXLNqzSz8wCC
	jVwnOGlW4tdR6n+rTc4LD4Ijtf8G2i4cIc/NGzIVETLkuAvm9hRwYH+W1t+lgGQGWdxg+BDVYaAzr
	bU+UsLK69vKwMuo0TxGtEjdinGP9j85R/OGLJXR4C3xn2pk22YrlVrwVdcVAqzLmdH0mwbnQq0iWC
	0J6GJt+UmqdWz9sTey2GZWn22KV+xLFRkL68LRfG4hs6ydEgmF1Ta/2rqjlI3OwjS8GZfPi+3p1J6
	loOyupPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFkN-00000008ZKY-3Zbf;
	Wed, 28 Feb 2024 08:57:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfFkL-00000008ZK2-1Ea9
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 08:57:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfFkI-0004p6-Gu; Wed, 28 Feb 2024 09:56:58 +0100
Message-ID: <e2ec53f0-fe44-46fb-a51a-1877a1c1466e@pengutronix.de>
Date: Wed, 28 Feb 2024 09:56:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org,
 Sascha Hauer <s.hauer@pengutronix.de>
References: <20240227073923.148943-1-antonynpavlov@gmail.com>
 <20240228114736.4f9e9a00d35f7bfaba1cb546@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240228114736.4f9e9a00d35f7bfaba1cb546@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_005701_372226_6BBC1E06 
X-CRM114-Status: GOOD (  22.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] net: drop unused rarp.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 28.02.24 09:47, Antony Pavlov wrote:
> On Tue, 27 Feb 2024 10:39:23 +0300
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> Hi All!
> 
> Actually there are much more unused header files:
> 
>     $ git clone https://github.com/barebox/barebox
>     $ cd barebox
>     barebox$ for i in $(git grep -h "#.*include" | sed "s/ //g" | grep "^#include" | sed "s/^#include[\"<]//g" | sed "s/[>\"]$//g" | sort | uniq); do basename $i; done | sort | uniq > /tmp/list1
>     barebox$ for i in $(find -iname '*.h'); do basename $i; done | sort | uniq > /tmp/list2
> 
> 
> Show unused header files:
> 
>     barebox$ for i in $(comm -13 /tmp/list1 /tmp/list2); do find -iname $i -type f ; done | grep -v ^./dts/ | sort
> 
> ./arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h

Ok to drop, I think.

> ./arch/arm/include/asm/arch-check.h

This one is referenced from arch/arm/Makefile

> ./arch/powerpc/include/asm/pci_io.h
> ./arch/powerpc/include/asm/status_led.h
> ./arch/x86/include/asm/modes.h
> ./arch/x86/include/asm/segment.h

Ok to drop, I think.

> ./drivers/mtd/nand/atmel/atmel_nand_ecc.h

This is included in drivers/mtd/nand/atmel/legacy.c.
(I see now you mentioned that below)

> ./drivers/usb/host/ehci-core.h

Ok to drop, I think.

> ./fs/fat/ffconf.h

This likewise looks as if it is actually used.
(I see now you mentioned that below)

> ./include/gpiod.h

This one here is an intentional compatibility header for out-of-tree
board code.

> ./include/linux/mtd/ndfc.h
> ./include/linux/mtd/nftl.h
> ./include/linux/usb/usbroothubdes.h

Ok to drop, I think.

> ./include/mach/imx/ccm.h

I think this should be dropped. I am unsure this even applies to all CCM
versions. It can always be brought back with a correct imxVER suffix.

> ./include/mach/imx/devices-imx21.h
> ./include/mach/imx/devices-imx31.h
> ./include/mach/imx/devices-imx35.h
> ./include/mach/imx/devices-imx50.h

These are non-DT device creation helpers. Maybe Sascha has an opinion
on whether they should be kept or removed?

> ./include/mach/imx/habv3-imx25-gencsf.h

There's i.MX25 support in drivers/hab, which I assume was added for a reason,
so some out-of-tree board is likely including this. 

> ./include/mach/imx/iomux-mx21.h
> ./include/mach/imx/iomux-mx35.h
> ./include/mach/imx/iomux-mx50.h

I think these definitions should remain. It's not unlikely that out-of-tree
boards use them.

> ./include/mach/omap/intc.h
> ./include/usb_dfu_trailer.h
> ./lib/bzlib_private.h
> ./lib/zstd/zstd_opt.h
> ./net/nfs.h
> ./net/rarp.h

I am ok with dropping the other headers if indeed unreferenced.

> Check for false positives:
> 
>     barebox$ for i in $(comm -13 /tmp/list1 /tmp/list2); do git grep $i ; done  | grep -v ^dts\/ | grep "#include"

Maybe exclude #, so also #  include and gcc -include is matched.


Cheers,
Ahmad

> 
> drivers/mtd/nand/atmel/legacy.c:#include "atmel_nand_ecc.h"	/* Hardware ECC registers */
> fs/fat/ff.h:#include "ffconf.h"	/* FatFs configuration options */
> arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S:#include <mach/pxa/regs-intc.h>
> 
> 
> 
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>>  net/rarp.h | 23 -----------------------
>>  1 file changed, 23 deletions(-)
>>
>> diff --git a/net/rarp.h b/net/rarp.h
>> deleted file mode 100644
>> index 0986b02513f..00000000000
>> --- a/net/rarp.h
>> +++ /dev/null
>> @@ -1,23 +0,0 @@
>> -/* SPDX-License-Identifier: GPL-2.0-or-later */
>> -/* SPDX-FileCopyrightText: 2000 Wolfgang Denk <wd@denx.de>, DENX Software Engineering */
>> -
>> -#ifndef __RARP_H__
>> -#define __RARP_H__
>> -
>> -#ifndef __NET_H__
>> -#include <net.h>
>> -#endif /* __NET_H__ */
>> -
>> -
>> -/**********************************************************************/
>> -/*
>> - *	Global functions and variables.
>> - */
>> -
>> -extern int	RarpTry;
>> -
>> -extern void RarpRequest (void);	/* Send a RARP request */
>> -
>> -/**********************************************************************/
>> -
>> -#endif /* __RARP_H__ */
>> -- 
>> 2.39.0
>>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



