Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-iy0-f177.google.com ([209.85.210.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T61NO-0001wz-5y
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 15:37:18 +0000
Received: by iaai1 with SMTP id i1so8784558iaa.36
 for <barebox@lists.infradead.org>; Mon, 27 Aug 2012 08:37:16 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 27 Aug 2012 11:37:16 -0400
Message-ID: <CACO6GO7pfavefJa_wTcR7ifHwWVS8up7-TRW8ArQzXoeL1JHCA@mail.gmail.com>
From: Fadil Berisha <f.koliqi@gmail.com>
Reply-To: f.koliqi@gmail.com
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
Subject: barebox on imx23-olinuxino
To: barebox@lists.infradead.org

Based on falconfing and mx23-evk, I did barebox port on
imx23-olinuxino board.  Here is barebox boot:

Board: Olimex.ltd imx23-olinuxino
registered netconsole as cs1
Min. frequency is 1476 Hz
Max. frequency is 48000000 Hz
mxs_mci@mci0: registered as mci0
ehci@ehci0: USB EHCI 1.00
No MCI card preset
Cannot create the 'env0' persistant environment storage (-19)
Malloc space: 0x40c00000 -> 0x40ffffff (size  4 MB)
Stack space : 0x40bf8000 -> 0x40c00000 (size 32 kB)
Open /dev/env0 No such file or directory
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...

I can't get activated SD card.
When compile with CONFIG_MCI_STARTUP, system hang after mxs_mci@mci0:
registered as mci0.
If compile without  CONFIG_MCI_STARTUP, after probe mci0.probe=1
system hang again.
Looking at code mci-core.c found  following note:
 /*
		 * If it fails, add the 'probe' parameter to give the user
		 * a chance to insert a card and try again. Note: This may fail
		 * systems that rely on the MCI card for startup (for the
		 * persistant environment for example)
		 */
imx23-olinuxino board rely on the MCI for startup. Any input to do
probe in this case is greatly appreciated.

Fadil Berisha

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
