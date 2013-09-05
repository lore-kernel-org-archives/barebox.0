Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-02-ewr.mailhop.org ([204.13.248.72])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHO0N-0003hU-FE
 for barebox@lists.infradead.org; Thu, 05 Sep 2013 01:05:04 +0000
Received: from pool-72-84-113-162.nrflva.fios.verizon.net ([72.84.113.162]
 helo=titan)
 by mho-02-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.72) (envelope-from <barebox@lakedaemon.net>)
 id 1VHO00-0003cZ-Vu
 for barebox@lists.infradead.org; Thu, 05 Sep 2013 01:04:41 +0000
Received: from titan.lakedaemon.net (localhost [127.0.0.1])
 by titan (Postfix) with ESMTP id 72D664994A3
 for <barebox@lists.infradead.org>; Wed,  4 Sep 2013 21:04:36 -0400 (EDT)
Date: Wed, 4 Sep 2013 21:04:36 -0400
From: Jason Cooper <barebox@lakedaemon.net>
Message-ID: <20130905010436.GP19598@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: imx-usb-image write to usb error
To: barebox@lists.infradead.org

All,

This is the first I've messed with i.MX, so I'm a little lost. :)

I'm putting together a patch to add support for the SanDisk Connect
Wireless Media Drive [1], code dump from SanDisk is here [2].  It turns
out when you unplug the battery, it'll show up as the Freescale hid.

Here's what I get:

$ ./scripts/imx/imx-image -c \
arch/arm/boards/sandisk-connect-wmd/flash-header-lpddr1.imxcfg -f \
barebox.bin -o barebox.imx
$ sudo ./scripts/imx/imx-usb-loader -vvvvv ./barebox.imx 
found i.MX50 USB device [15a2:0052]
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=1
report 1, wrote 0 bytes, err=0
report=3
report 3, read 0 bytes, err=-7
read=00 00 00 00
report=4
4 in err=-7, last_trans=0  00 00 00 00
status failed

Looking at the code, it looks like transfer() is always returning 0
bytes in last_trans.  Has anyone seen this before?  $searchengine came
up blank.  What simple thing am I missing?

thx,

Jason.

[1] http://www.sandisk.com/products/wireless/media-drive/
[2] http://www.sandisk.com/products/connect/disclaimer/

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
