Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.z9.com ([64.142.101.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1g4F-0007GB-7g
 for barebox@lists.infradead.org; Sat, 02 Feb 2013 16:35:51 +0000
Received: from GPontisPC by z9.com (MDaemon PRO v12.5.8)
 with ESMTP id md50000244442.msg
 for <barebox@lists.infradead.org>; Sat, 02 Feb 2013 08:35:29 -0800
From: "George Pontis" <GPontis@z9.com>
Date: Sat, 2 Feb 2013 08:35:39 -0800
Message-ID: <009d01ce0163$5629e7a0$027db6e0$@com>
MIME-Version: 1.0
Content-Language: en-us
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
Subject: Lost access to M25Pxx in move to 2013.01
To: barebox@lists.infradead.org

Under 2012.11 I created a new board support package for custom hardware,
which included a M25P32. I store barebox and its environment there, and boot
from it. The board file also defines partitions for it. The first three look
like this:

        devfs_add_partition("m25p0",        0, 0x050000,
DEVFS_PARTITION_FIXED, "barebox");
        devfs_add_partition("m25p0", 0x050000, 0x010000,
DEVFS_PARTITION_FIXED, "env0");
        devfs_add_partition("m25p0", 0x060000, 0x330000,
DEVFS_PARTITION_FIXED, "kernel");

This created devices /dev/barebox, /dev/env0, and so on. It also allowed for
simple commands like "erase /dev/barebox", "tftp barebox.bin /dev/barebox",
etc.

More recently I updated to the 2013.01 release. My config file is not much
different and it still has enabled CONFIG_MTD, CONFIG_MTD_M25P80,
CONFIG_MTD_WRITE. The new release starts up just fine and boots the kernel
as usual. However, it does not see the M25P32.

With the earlier release, I saw a line displayed at startup as so:

m25p m25p0: m25p32 (4096 Kbytes)

Also, devinfo listed the partitions on the part. That m25p line is not
displayed with the 2013.01 release and there are no partitions. Devinfo does
show one line for the m25p driver.

Any suggestions where to look for a fix ?



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
