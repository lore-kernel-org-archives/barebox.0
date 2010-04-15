Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O2GJW-00049L-Sf
	for barebox@lists.infradead.org; Thu, 15 Apr 2010 04:04:28 +0000
Received: by gyb11 with SMTP id 11so524402gyb.36
	for <barebox@lists.infradead.org>; Wed, 14 Apr 2010 21:04:24 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <001301cadbab$43091640$c91b42c0$@cpdesign.com.au>
	<20100414083707.GJ7882@pengutronix.de>
In-Reply-To: <20100414083707.GJ7882@pengutronix.de>
Date: Thu, 15 Apr 2010 14:04:16 +1000
Message-ID: <003401cadc50$ba662070$2f326150$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: booting uImage for mx35 3stack
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Thanks for all your help, and speedy responses.

> > Nothing happens after "done, booting the kernel" (boot snippet at end
> > of
> > email)
> 
> Newer kernels have earlyprintk support that could be of help here.
> Please apply commit-id 93fd03a8c6728b58879f8af20ffd55d9c32a778b to your
> kernel and add 'earlyprintk' to your kernel command line.

Great tip. It shows the kernel is starting ok and getting stuck just after
irqs are enabled. 
I'm still a bit baffled as to why this only happens with barebox.

Uncompressing
Linux.......................................................................
......
........................................................................
done, booting the kerne
l.

[    0.000000] Linux version 2.6.31-00443-g587ea71-dirty (marc@susedev1)
(gcc version 4.3.3 (GCC
) ) #5 PREEMPT Thu Apr 15 13:45:48 EST 2010

[    0.000000] CPU: ARMv6-compatible processor [4117b363] revision 3
(ARMv6TEJ), cr=00c5387f    
[    0.000000] CPU: VIPT nonaliasing data cache, VIPT nonaliasing
instruction cache             
[    0.000000] Machine: Freescale MX35 3-Stack Board

[    0.000000] Memory policy: ECC disabled, Data cache writeback

[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total
pages: 32512       
[    0.000000] Kernel command line: earlyprintk=serial,ttymxc0,115200

[    0.000000] console [earlycon0] enabled

[    0.000000] PID hash table entries: 512 (order: 9, 2048 bytes)

[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536
bytes)                   
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)

[    0.000000] Memory: 128MB = 128MB total

[    0.000000] Memory: 124804KB available (4240K code, 490K data, 128K init,
0K highmem)        
[    0.000000] SLUB: Genslabs=11, HWalign=32, Order=0-3, MinObjects=0,
CPUs=1, Nodes=1          
[    0.000000] NR_IRQS:256

[    0.000000] irq.c: MXC IRQ initialized

 

Then nothing...

I'm thinking maybe some pin/input is initialized wrong and causing infinite
interrupts.
.. but I think I'm clutching at straws. Again, any more hints greatly
appreciated!

> Do you have MMU enabled? If yes you could try disabling it
No MMU enabled

Cheers,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
