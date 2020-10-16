Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f185.i.mail.ru ([128.140.171.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTLQP-00051S-E8
 for barebox@lists.infradead.org; Fri, 16 Oct 2020 08:49:22 +0000
Received: by f185.i.mail.ru with local (envelope-from <shc_work@mail.ru>)
 id 1kTLQK-00051o-4d
 for barebox@lists.infradead.org; Fri, 16 Oct 2020 11:49:16 +0300
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Fri, 16 Oct 2020 11:49:16 +0300
Message-ID: <1602838156.455713761@f185.i.mail.ru>
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
Subject: =?UTF-8?B?QVJNIGJvb3RtIHJlZ3Jlc3Npb24=?=
To: barebox@lists.infradead.org

Hello.

Found a regression in arm/lib32/bootm.c after a patch
"ARM: bootm: make sure we place the kernel in free memory".

The initial memory size for the board is set to 8 MB (before reading the real value from DT),
so the stack, malloc_space, etc. are placed in the initial 8M space.
Then get_kernel_addresses() gets the real SDRAM area (for my board it is 64M),
but decreases this size by the first children size (malloc_space),
so mem_end is incorrect in this case.

barebox 2020.05.0-00393-gf5e96a296-dirty #80 Thu Oct 15 13:08:54 MSK 2020
Board: Mega-Milas Informer EP7312
cfi_flash 90000000.nor@0,0.of: found cfi flash at 0x90000000, size 32 MiB
i2c-gpio i2c0.of: using pins 16 (SDA) and 35 (SCL)
Hit any to stop autoboot:    1
Booting entry 'nor'
Loading ARM Linux zImage '/dev/nor0.kernel'
__request_region: 0xbfdc6000:0xc00fca17 outside parent resource 0xc0000000:0xc3ffffff
ERROR: bootm/zImage: failed to request memory at 0xbfdc6000 to 0xc00fca18 (3369496).
ERROR: Booting entry 'nor' failed
Nothing bootable found

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
