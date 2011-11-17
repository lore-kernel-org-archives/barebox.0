Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RR3Wu-0003Bi-Co
 for barebox@lists.infradead.org; Thu, 17 Nov 2011 15:05:34 +0000
Received: from zimbra1-e1.priv.proxad.net (unknown [172.20.243.151])
 by smtp4-g21.free.fr (Postfix) with ESMTP id 7E7E64C8468
 for <barebox@lists.infradead.org>; Thu, 17 Nov 2011 16:05:20 +0100 (CET)
Date: Thu, 17 Nov 2011 16:05:19 +0100 (CET)
From: robert.jarzmik@free.fr
Message-ID: <6cf41d5b-a894-46f5-90e3-23f2b615b104@zimbra1-e1.priv.proxad.net>
In-Reply-To: <15dd21bf-86c1-4ca8-a830-caef28d617ee@zimbra1-e1.priv.proxad.net>
MIME-Version: 1.0
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
Subject: Envfs embedded in barebox.bin
To: barebox@lists.infradead.org

Hi,

I'm working on a very specific board, where I lack :
 - a serial console (all UARTs are wired to GSM/Bluetooth/GPS chips)
 - a JTAG adapter
 - internal MTD access (I have not ported the MTD driver from linux kernel yet)
 - a USB ethernet / console access (put I didn't port the pxa27x_udc yet)

What I have is :
 - a smartphone screen (framebuffer of PXA270)

I launch barebox.bin using a tool which does it well : disable MMU, flush cache, copy barebox.bin to start of RAM, and transfer control to it.

My issue is that while I'm developping my board code, I have no feedback (because no console available).
I'd like to run some hush scripts, and the only available way (so far) is to embed the envfs into barebox.bin.

What I'm attempting is basically to :
 (1) ld -b binary barebox_default_env -o barebox_default_env.o
 (2) add barebox_default_env.o in Makefile, target barebox-common
 (3) add in my board code (board.c) the creation of env0 device:
     devfs_add_partition("ram0", _binary_barebox_default_env_start,
                         _binary_barebox_default_env_size,
                         PARTITION_FIXED, "env0")

I'm feeling like reinventing the wheel there. Have I missed another clean way of including my board default envfs into barebox.bin ?
Of course, that will only last until I port the correct drivers to have access to my MTD ...

Cheers.

--
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
