Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUxIb-0006B9-6H
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 10:51:42 +0000
Received: from s246.sam-solutions.net ([217.21.35.55])
 by s250.sam-solutions.net with esmtps (TLSv1:RC4-MD5:128) (Exim 4.77)
 (envelope-from <U.Bely@sam-solutions.com>) id 1UUxIX-0007ty-DT
 for barebox@lists.infradead.org; Wed, 24 Apr 2013 13:51:37 +0300
Message-ID: <5177B92A.6090900@sam-solutions.net>
Date: Wed, 24 Apr 2013 13:51:22 +0300
From: Uladzimir Bely <u.bely@sam-solutions.net>
MIME-Version: 1.0
References: <014261>
 <1366799600-10058-1-git-send-email-u.bely@sam-solutions.com>
In-Reply-To: <1366799600-10058-1-git-send-email-u.bely@sam-solutions.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: OMAP5 processors support
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Previous patch 
(http://lists.infradead.org/pipermail/barebox/2013-April/014243.html) 
was broken (wrapped long lines) by mailer, so it's a correct version.

Since commit:
      43f9a96a ubimkvol: Typo fix

Patch adds basic OMAP5 support to barebox.

Tested on SD card with 2 partitions: vfat (MLO, barebox.bin, zImage)
and ext3 (rootfs). Barebox successfully starts kernel
from commandline with "bootm /boot/zImage" command.

Building MLO: make omap5_sevm_xload_defconfig; make.
Building barebox.bin: make omap5_sevm_defconfig; make.


-- 
With regards,
Uladzimir Bely.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
