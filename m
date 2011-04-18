Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from aa003msb.fastweb.it ([85.18.95.82])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QBpzA-0004PJ-FC
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 15:03:33 +0000
Message-ID: <4DAC52C2.9020201@selea.com>
Date: Mon, 18 Apr 2011 17:03:30 +0200
From: Omar Pighi <pighi@selea.com>
MIME-Version: 1.0
References: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>
	<20110418072941.GH14770@pengutronix.de>
In-Reply-To: <20110418072941.GH14770@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: again on enviroment and partition problems
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

reading here:
http://www.spinics.net/lists/u-boot-v2/msg02944.html

it seems that now it works and save enviroments with correct crc.
but when i triy to ypdate_kernel it says_
partition dev/nand0.kernel.bb not found... no one .bb partition has been
created.
it should be done by hush_hack but it doesn't.

reading here:
http://www.spinics.net/lists/u-boot-v2/msg02957.html

but "CONFIG_GLOB=y"

I cannot find it in any kconfig file... so it is not possible to set
using menuconfig... should i add by hand. this means something missin in
the kconfigs...

Thanks
Omar

Dott. Ing. Omar Pighi
R&D Selea s.r.l.
Via A.Moro 69
46015 Cicognara (MN)
ITALY
tel +39-0375-889091
fax +39-0375-889080
web:www.selea.com


Il 18/04/2011 09:29, Sascha Hauer ha scritto:
> On Sat, Apr 16, 2011 at 11:14:13AM -0700, Greg Topmiller wrote:
>   
>> We're are using the Freescale release L2.6.31_MX51_SDK_0912_Image and
>> it will do this on a Freescale Babbage board and our design.  It also
>> does the same thing in Linux when we mmap the address 0xf0000000 and
>> try to read from it.  It does not hang on the Redboot.bin image
>> supplied with the Freescale SDK.  The Redboot dump command displays
>> some data.  On the Freescale 3Stack board we get an illegal address
>> error in Redboot, but it will hang in u-boot.  We realize this is a
>> reserved physical address but would hope that an error of some kind
>> would occur rather than locking up the CPU.  Could it be some sort of
>> MMU initialization difference between Redboot and u-boot?
>>     
> I have no idea how redboot maps the memory in the mmu, but barebox and
> u-boot use a 1:1 mapping which results in the behaviour you see.
> Accessing reserved memory can result in a abort.
>
> Sascha
>
>   

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
