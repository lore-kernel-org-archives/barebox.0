Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dx6Cj-00083j-7u
 for barebox@lists.infradead.org; Wed, 27 Sep 2017 06:52:23 +0000
Received: from vsmx004.vodafonemail.xion.oxcs.net (unknown [192.168.75.198])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTP id 9674C8CE0B4
 for <barebox@lists.infradead.org>; Wed, 27 Sep 2017 06:51:48 +0000 (UTC)
Received: from null (app-47.app.xion.oxcs.net [10.10.1.47])
 by mta-8-out.mta.xion.oxcs.net (Postfix) with ESMTPA id 7C0A7CDF82
 for <barebox@lists.infradead.org>; Wed, 27 Sep 2017 06:51:46 +0000 (UTC)
Date: Wed, 27 Sep 2017 08:51:46 +0200 (CEST)
From: Giorgio Dal Molin <iw3gtf@arcor.de>
Message-ID: <1905880803.90654.1506495106339@mail.vodafone.de>
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
Subject: barebox on an intel efi system
To: barebox@lists.infradead.org

Hi,

I'm currently working with an embedded system based on a "normal"
intel (atom) PC with an AMI Bios on it supporting EFI.

I've built a barebox for it based on the 'arch/x86/configs/efi_defconfig'
and it basically runs on the target: I get a prompt on the screen, the
keyboard works and I can issue commands and boot a kernel.

My problem is now that the '/boot' and '/efi' dirs do not automatically
appear as described in http://www.barebox.org/doc/latest/boards/efi.html

After a bit of grepping and browsing in the barebox sources I've found
the file:

 fs/efi.c

At the end of it there is the 'efi_fs_driver' and its probe function;
I think the driver is registered with the core but the probe function
is never called on my system.

Could this be OK on an EFI system or is it an indication that something
is not properly configured ?

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
