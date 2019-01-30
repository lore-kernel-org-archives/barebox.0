Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f490.i.mail.ru ([217.69.138.157])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gom31-0007ze-7g
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 09:20:48 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
MIME-Version: 1.0
Date: Wed, 30 Jan 2019 12:20:38 +0300
Message-ID: <1548840038.556794175@f490.i.mail.ru>
In-Reply-To: <20190130091441.b6tnhtk5ppob7qju@pengutronix.de>
References: <1548322649.666663534@f388.i.mail.ru>
 <1548835382.499237981@f484.i.mail.ru>
 <20190130091441.b6tnhtk5ppob7qju@pengutronix.de>
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
Subject: =?UTF-8?B?UmU6IGluaXRyZCBwcm9ibGVt?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>> >On Thu, Jan 24, 2019 at 12:37:29PM +0300, Alexander Shiyan wrote:
>> >> I decided to change the size of the UBI volume for the root file system to 60 MB.
>> >> Now I get a weird OOM error. Turning on debug information shows a conflict,
>> >> but I do not quite understand where to look for the problem.
>> >> Where is the starting point to try to solve this problem?
>> >> 
>> >> malloc space: 0x95df8d40 -> 0x97df8d3f (size 32 MiB)
>> >> 
>> >> Loading ARM Linux zImage '/dev/nand0.system.ubi.kernel'
>> >> __request_region ok: 0x92000000:0x922a244f
>> >The Kernel documentation recommends putting the Kernel 32MiB into SDRAM
>> >to avoid relocation. This is what we see here.
>> >
>> >> __request_region: 0x923a3000:0x95e02fff conflicts with 0x95df8d40:0x97df8d3f
>> >
>> >Now we try allocate space for the initrd above it which is 60MiB. This
>> >conflicts with the malloc space.
>> >
>> >So yes, you're out of memory.
>> Memory should be enough (256 Mb). I think the problem is that the memory is
>> divided into two banks of 128 Mb each.
>> 
>> Just look for a next line:
>> __request_region: 0x923a3000:0x95e02fff outside parent resource 0x98000000:0x9fffffff
>> 
>> Maybe we need some kind of option to merge nearby banks?
>
>If I'm not mistaken the banks are not really nearby. You should have two
>banks, one from 0x90000000 to 0x97ffffff and one from 0xa0000000 to
>0xa7ffffff.
>I don't know where the resource 0x98000000:0x9fffffff comes from. Could
>you paste the output of the iomem command? Are you using the code from
>arch/arm/mach-imx/esdctl.c or are you bypassing it?

It is not an error. CCMX51 not using ESDCTL.
The first bank is minimal size 128M. The second is a chain to first, its size
depends on module variant.

barebox@Mega-Milas Informer i.MX51:/ iomem
0x00000000 - 0xffffffff (size 0x00000000) iomem
  0x1ffe0000 - 0x1fffffff (size 0x00020000) 1ffe0000.iram@1ffe0000
  0x40000000 - 0x5fffffff (size 0x20000000) 40000000.ipu@40000000
  0x70004000 - 0x70007fff (size 0x00004000) 70004000.esdhc@70004000
  0x70008000 - 0x7000bfff (size 0x00004000) 70008000.esdhc@70008000
  0x7000c000 - 0x7000ffff (size 0x00004000) 7000c000.serial@7000c000
  0x70010000 - 0x70013fff (size 0x00004000) 70010000.spi@70010000
  0x73f80000 - 0x73f801ff (size 0x00000200) 73f80000.usb@73f80000
  0x73f80200 - 0x73f803ff (size 0x00000200) 73f80200.usb@73f80200
  0x73f80800 - 0x73f809ff (size 0x00000200) 73f80800.usbmisc@73f80800
  0x73f84000 - 0x73f87fff (size 0x00004000) 73f84000.gpio@73f84000
  0x73f88000 - 0x73f8bfff (size 0x00004000) 73f88000.gpio@73f88000
  0x73f8c000 - 0x73f8ffff (size 0x00004000) 73f8c000.gpio@73f8c000
  0x73f90000 - 0x73f93fff (size 0x00004000) 73f90000.gpio@73f90000
  0x73f98000 - 0x73f9bfff (size 0x00004000) 73f98000.wdog@73f98000
  0x73fa0000 - 0x73fa3fff (size 0x00004000) 73fa0000.timer@73fa0000
  0x73fa8000 - 0x73fabfff (size 0x00004000) 73fa8000.iomuxc@73fa8000
  0x73fb4000 - 0x73fb7fff (size 0x00004000) 73fb4000.pwm@73fb4000
  0x73fb8000 - 0x73fbbfff (size 0x00004000) 73fb8000.pwm@73fb8000
  0x73fbc000 - 0x73fbffff (size 0x00004000) 73fbc000.serial@73fbc000
  0x73fc0000 - 0x73fc3fff (size 0x00004000) 73fc0000.serial@73fc0000
  0x73fd0000 - 0x73fd3fff (size 0x00004000) 73fd0000.src@73fd0000
  0x73fd4000 - 0x73fd7fff (size 0x00004000) 73fd4000.ccm@73fd4000
  0x83f98000 - 0x83f9bfff (size 0x00004000) 83f98000.iim@83f98000
  0x83fac000 - 0x83faffff (size 0x00004000) 83fac000.spi@83fac000
  0x83fc4000 - 0x83fc7fff (size 0x00004000) 83fc4000.i2c@83fc4000
  0x83fd9000 - 0x83fd9fff (size 0x00001000) imx51-esdctl0
  0x83fda000 - 0x83fdafff (size 0x00001000) 83fda000.weim@83fda000
  0x83fdb000 - 0x83fdbfff (size 0x00001000) 83fdb000.nand@83fdb000
  0x90000000 - 0x97ffffff (size 0x08000000) ram0
    0x95df8d40 - 0x97df8d3f (size 0x02000000) malloc space
    0x97df8d40 - 0x97dfffde (size 0x0000729f) board data
    0x97e00000 - 0x97e6e537 (size 0x0006e538) barebox
    0x97e6e538 - 0x97e86727 (size 0x000181f0) barebox data
    0x97e86728 - 0x97e897ff (size 0x000030d8) bss
    0x97fe4000 - 0x97fe7fff (size 0x00004000) ttb
    0x97fe8000 - 0x97feffff (size 0x00008000) stack
  0x98000000 - 0x9fffffff (size 0x08000000) ram1
  0xcfff0000 - 0xcfffffff (size 0x00010000) 83fdb000.nand@83fdb000

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
