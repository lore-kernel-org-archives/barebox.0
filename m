Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ip2.televic.com ([81.82.194.222])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VC7Yj-00013K-HA
 for barebox@lists.infradead.org; Wed, 21 Aug 2013 12:30:46 +0000
From: Vanhauwaert Wouter <W.Vanhauwaert@TELEVIC.com>
Date: Wed, 21 Aug 2013 14:30:17 +0200
Message-ID: <E78BBE677EB9144B8F0A0A29674CD5338ED087407D@SRV-VS06.TELEVIC.COM>
Content-Language: en-US
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: uImage doesn't boot
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello

Before, I was working with Barebox 2013.05, which worked fine. Now I updated my sources to barebox 2013.07, but my kernel doesn't boot anymore. Barebox itself works as expected. When I do:
bootm -v /mnt/tftp/uImage
   Image Name:   Linux-2.6.35.3-01169-gbc81590-di
   Created:      2013-06-03  13:29:30 UTC
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    2834488 Bytes = 2.7 MiB
   Load Address: 70008000
   Entry Point:  70008000

Loading OS U-Boot uImage '/mnt/tftp/uImage'
OS image is at 0x70008000-0x702bc037
Passing control to ARM Linux uImage handler

Starting kernel at 0x70008000...
commandline: console=ttymxc4,115200   mtdparts=mxc_nand:3M(nand0.systemkernel),-(nand0.root);m25p0:384k(m25p0.barebox)ro,128k(m25p0.bareboxenv),3M(m25p0.recoverykernel)ro,512k(m25p0.storage)
arch_number: 3297


And that's it, it doesn't do anything after it. Althought this works with the previous barebox. What can cause this?

Grtz,
Wouter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
