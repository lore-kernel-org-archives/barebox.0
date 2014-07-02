Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2QYY-0006ba-Cx
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 19:51:03 +0000
Received: from [99.240.204.5] (port=49070 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X2QYB-00017K-4r
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 15:50:39 -0400
Date: Wed, 2 Jul 2014 15:50:36 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1407021543560.7005@localhost>
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
Subject: why would i get "Out of memory" error in a sandbox build?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  playing around with an absolutely generic sandbox build and i ran
into the following issue. i built sandbox on my fedora rawhide system
with no customization whatsoever, and executed it with no root
privilege, so i definitely expected some things not to work. i got the
following:

$ ./barebox


barebox 2014.06.0-00365-g96c53b1 #1 Wed Jul 2 15:03:37 EDT 2014


Board: barebox sandbox
could not open /dev/net/tun: Permission denied
tap tap0: probe failed: Operation not permitted
malloc space: 0x7f249f5e9010 -> 0x7f249fde900f (size 8 MiB)
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
no valid environment found on /dev/env0. Using default environment
running /env/bin/init...
\nHit any key to stop autoboot:  0
booting net
ifup: Cannot find device eth0
ifup: No such file or directory
running automount command 'ifup eth0 && mount -t tftp $eth0.serverip
/mnt/tftp' failed
ifup: Cannot find device eth0
ifup: No such file or directory
running automount command 'ifup eth0 && mount -t tftp $eth0.serverip
/mnt/tftp' failed
could not open /mnt/tftp/none-linux-barebox: No such file or directory
Booting net failed: No such file or directory
booting net failed: No such file or directory
boot: No such file or directory
barebox@barebox sandbox:/

  i'm actually good with this, it's about what i expected since i set
no environment or networking, etc.  but just for fun, i "cd"ed down
into /mnt/tftp, knowing this shouldn't work, and here's what happened:

barebox@barebox sandbox:/ cd /mnt/tftp
ifup: Cannot find device eth0
ifup: No such file or directory
running automount command 'ifup eth0 && mount -t tftp $eth0.serverip
/mnt/tftp' failed
barebox@barebox sandbox:/mnt/tftp cd /
ERROR: out of memory

no stack data available
[rpjday@localhost barebox_build]$

  in short, "cd"ing into /mnt/tftp failed as it should have, but just
trying to "cd" back to the root caused the "out of memory" error. it
seems entirely reproducible. should i have expected this?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
