Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from top.free-electrons.com ([176.31.233.9]
 helo=mail.free-electrons.com)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Veqpo-0002Rk-IB
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:31:10 +0000
Received: from localhost (AToulouse-651-1-90-186.w90-16.abo.wanadoo.fr
 [90.16.209.186])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 74FAB7CA
 for <barebox@lists.infradead.org>; Fri,  8 Nov 2013 19:30:39 +0100 (CET)
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Fri,  8 Nov 2013 19:30:37 +0100
Message-Id: <1383935439-23623-1-git-send-email-thomas.petazzoni@free-electrons.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] x86 minor fixes and questions
To: barebox@lists.infradead.org

Hello,

Here are two minor fixes for the x86 support. The first patch avoids
linking problems on recent gcc versions, and the second one fixes the
documentation.

Also, I've tested the x86 support under Qemu, it starts fine. Thanks
to the bios disk driver, it detects one hard disk drive. However,
since the driver doesn't set num_blocks, the disk size is zero, and no
partition can be detected. Is this bios disk driver supposed to work
to read the entire hard drive, access a filesystem and load the kernel
image, or is the x86 support generally too limited for this at the
moment?

Thanks,

Thomas

Thomas Petazzoni (2):
  scripts/setupmbr: fix documentation
  arch/x86: fix link with recent gcc

 arch/x86/Makefile           | 3 ++-
 scripts/setupmbr/setupmbr.c | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
