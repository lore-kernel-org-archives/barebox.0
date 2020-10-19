Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f176.i.mail.ru ([94.100.178.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kURcu-00069V-86
 for barebox@lists.infradead.org; Mon, 19 Oct 2020 09:38:49 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Mon, 19 Oct 2020 12:38:37 +0300
Message-ID: <1603100317.363061027@f176.i.mail.ru>
In-Reply-To: <20201019090538.GQ13710@pengutronix.de>
References: <1602838156.455713761@f185.i.mail.ru>
 <20201019090538.GQ13710@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmU6IEFSTSBib290bSByZWdyZXNzaW9u?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>Hi Alexander,
>
>On Fri, Oct 16, 2020 at 11:49:16AM +0300, Alexander Shiyan wrote:
>> Hello.
>> 
>> Found a regression in arm/lib32/bootm.c after a patch
>> "ARM: bootm: make sure we place the kernel in free memory".
>> 
>> The initial memory size for the board is set to 8 MB (before reading the real value from DT),
>> so the stack, malloc_space, etc. are placed in the initial 8M space.
>> Then get_kernel_addresses() gets the real SDRAM area (for my board it is 64M),
>> but decreases this size by the first children size (malloc_space),
>> so mem_end is incorrect in this case.
>> 
>> barebox 2020.05.0-00393-gf5e96a296-dirty #80 Thu Oct 15 13:08:54 MSK 2020
>> Board: Mega-Milas Informer EP7312
>> cfi_flash 90000000.nor@0,0.of: found cfi flash at 0x90000000, size 32 MiB
>> i2c-gpio i2c0.of: using pins 16 (SDA) and 35 (SCL)
>> Hit any to stop autoboot:    1
>> Booting entry 'nor'
>> Loading ARM Linux zImage '/dev/nor0.kernel'
>
>The problem might be that you have the kernel in a raw flash partition.
>I think we have problems where we somewhere use the partition size where
>we should really use the zImage size. The zImage size must be taken from
>the zImage header while we just make a stat() on the file which happens
>to be the whole partition for you.
>
>Could you try and bootm the same zImage from ramfs?
I don't understand a little what to do...

zImage size is correct (0xc00fca18-0xbfdc6000=0x336a18=3369496)
__request_region: 0xbfdc6000:0xc00fca17 outside parent resource 0xc0000000:0xc3ffffff
ERROR: bootm/zImage: failed to request memory at 0xbfdc6000 to 0xc00fca18 (3369496).

Reverting "ARM: bootm: make sure we place the kernel in free memory" fix this problem.
---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
