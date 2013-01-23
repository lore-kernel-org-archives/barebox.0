Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-f42.google.com ([209.85.219.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty0Dd-0008Cb-5n
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 13:18:21 +0000
Received: by mail-oa0-f42.google.com with SMTP id j1so8501252oag.1
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 05:18:20 -0800 (PST)
MIME-Version: 1.0
From: Fabio Porcedda <fabio.porcedda@gmail.com>
Date: Wed, 23 Jan 2013 14:17:59 +0100
Message-ID: <CAHkwnC-GnpSVxs-Apoka3LWLtcqYD5PrswtxnuqB_bEKTCH4ZA@mail.gmail.com>
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
Subject: AT91SAM9260EK DFU - Error using dfu-util
To: barebox@lists.infradead.org

Hi All,
I'm trying the dfu support for AT91SAM9260EK.

I've succefully activated it using th bp button, but
the dfu-util give me the error "Cannot open device".
I'm doing something wrong?
Can someone help me?

-----
I'm using:
 - Barebox 2013.01.0 - at91sam9260ek_defconfig
 - Ubuntu 12.10


-------
AT91SAM9260EK serial output:
dfu_bp pressed detected wait 5s

Start DFU Mode

dfu: register alt0(barebox) with device /dev/nand0.barebox.bb
dfu: register alt1(kernel) with device /dev/nand0.kernel.bb
dfu: register alt2(rootfs) with device /dev/nand0.rootfs.bb


-------
$ dfu-util -l
dfu-util 0.7
...
Found Runtime: [4321:1234] devnum=0, cfg=1, intf=0, alt=0, name="UNDEFINED"
Found Runtime: [4321:1234] devnum=0, cfg=1, intf=0, alt=1, name="UNDEFINED"
Found Runtime: [4321:1234] devnum=0, cfg=1, intf=0, alt=2, name="UNDEFINED"


-------
$ dfu-util -a 1 -D zImage
dfu-util 0.7
...
Cannot open device
Opening DFU capable USB device...



Best regards
--
Fabio Porcedda

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
