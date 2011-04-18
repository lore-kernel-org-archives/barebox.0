Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from aa003msb.fastweb.it ([85.18.95.82])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1QBoIp-00034I-H7
	for barebox@lists.infradead.org; Mon, 18 Apr 2011 13:15:48 +0000
Received: from fw.selea.com (89.96.133.2) by aa003msb.fastweb.it (8.5.016.6)
	id 4DA45F5900A8447C for barebox@lists.infradead.org;
	Mon, 18 Apr 2011 15:15:40 +0200
Received: from [192.168.100.217] (linux-xsj9.selea.lan [192.168.100.217])
	by fw.selea.com (Postfix) with ESMTP id 7ED473380AB
	for <barebox@lists.infradead.org>;
	Mon, 18 Apr 2011 15:15:40 +0200 (CEST)
Message-ID: <4DAC397C.8090803@selea.com>
Date: Mon, 18 Apr 2011 15:15:40 +0200
From: Omar Pighi <pighi@selea.com>
MIME-Version: 1.0
References: <F384D1288827C547A75DEBA2647D64BA172BA39F6B@MILEXCH1.ds.jdsu.net>,
	<20110418072941.GH14770@pengutronix.de>
	<F384D1288827C547A75DEBA2647D64BA172AE7EABC@MILEXCH1.ds.jdsu.net>
In-Reply-To: <F384D1288827C547A75DEBA2647D64BA172AE7EABC@MILEXCH1.ds.jdsu.net>
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
Subject: on enviromen
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

...
some problems on enviroment loading. (imx25 3stack board)
ad the startup first time i have :
devfs: wrong magic on /dev/env0
if i perform a saveenv then reset:
wrong crc on env...
something wrong ... if i try to update_kernel it say that it cannot find
the nand.kernel partition..
but i can see the partition on dev directory...

in menuconfig->generalsettings i checked only "compile in default
enviroment"

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


Il 18/04/2011 11:44, Greg Topmiller ha scritto:
> Thank you for your response.
>
> Is there any way we can put code in u-boot to handle the abort?
>
> Thanks,
>
> Greg
>
> ________________________________________
> From: Sascha Hauer [s.hauer@pengutronix.de]
> Sent: Monday, April 18, 2011 3:29 AM
> To: Greg Topmiller
> Cc: barebox@lists.infradead.org
> Subject: Re: Imx51 processor hangs when we do an md 0xf0000000 (memory display) in u-boot
>
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
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>
>   

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
