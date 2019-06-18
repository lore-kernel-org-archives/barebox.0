Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-114.126.com ([220.181.15.114])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBBd-0004gL-EC
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 10:17:59 +0000
References: <3bd6cd70.90d9.16b65a8086a.Coremail.zzs213@126.com>
 <20190618074606.iq3i6gb5yazs5bfq@pengutronix.de>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <af35c2a1-420e-c2a4-0856-c6b667890a5e@126.com>
Date: Tue, 18 Jun 2019 18:17:52 +0800
MIME-Version: 1.0
In-Reply-To: <20190618074606.iq3i6gb5yazs5bfq@pengutronix.de>
Content-Language: en-US
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
Subject: Re: bugfix: _barebox_image_size wrong if enable
To: barebox@lists.infradead.org
Cc: =?UTF-8?B?5oiR?= <zzs213@126.com>

> No, it is corrected during runtime in relocate_to_current_adr(). It
> seems older compilers need a runtime relocation fixup for this.

Yes, in relocate_to_current_adr() the address all be fixed up.

But if _barebox_image_size, __bss_start and __bss_stop all zero. the
barebox_base calculated by arm_mem_barebox_image() would wrong. but because it
align the base to 1M. So mostly it works fine. If the barebox size larger than
1M. It should fail.

>
> AFAIR this only happened for linker variables that point to absolute
> addresses. Differences between addresses also worked with the older
> compilers, and I think this is what your patch does:

No. my patch just for new toolchain. with old toolchain it has no effect,
Because all of the size is zero.

By using the newer toolchain:
	arm-poky-eabi-gcc (GCC) 8.2.0
	GNU ld (GNU Binutils) 2.31.1.20180818

In barebox config file:
        CONFIG_TEXT_BASE=0x23e00000
        CONFIG_RELOCATABLE=y

Without my patch, in barebox.map

                0x000000000001ff40                __bss_start = .

                0x0000000000021bec                __bss_stop = .
                0x0000000000021bec                _end = .
                0xffffffffdc21ff40                _barebox_image_size = (__bss_start - 0x23e00000)

In code, printout barebox_base calculated by arm_mem_barebox_image():

        barebox_image_size     : 0xdc21ff40
        __bss_stop     : 0x00021bec
        __bss_start     : 0x0001ff40
        membase     : 0x20000000
        endmem      : 0x60000000
        barebox_base: 0x83d00000

barebox_base outof memory region!

After using my patch, the outpus is:

        barebox_image_size     : 0x0001ff40
        __bss_stop     : 0x00021bec
        __bss_start     : 0x0001ff40
        membase     : 0x20000000
        endmem      : 0x60000000
        barebox_base: 0x5ff00000


-- 
Best Regards,
zzs


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
