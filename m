Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cABWk-0004Ml-3y
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 08:06:39 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 874F3A0034E
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 09:06:50 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 25 Nov 2016 09:06:01 +0100
Message-Id: <1480061167-21590-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 0/6] ubi: remove character device flag from static volumes
To: barebox@lists.infradead.org

Instead of marking static volume device files as character devices 
introduced a truncate callback for device files.
This makes it possible to dump static ubi volumes from flash.

Teresa Remmet (6):
  libfile: copy_file: Only open regular files with O_TRUNC
  devfs: Add optional truncate callback for device files
  ubi: Add truncate callback
  fs: Remove O_TRUNC check for devices when open files
  commands: ubi: ubiupdatevol: Open device with O_TRUNC
  ubi: barebox: Remove character device flag from static volumes

 commands/ubi.c            |  2 +-
 drivers/mtd/ubi/barebox.c | 19 ++++++++++++++++---
 fs/devfs.c                |  5 +++++
 fs/fs.c                   |  2 +-
 include/driver.h          |  1 +
 lib/libfile.c             | 22 ++++++++++++++++------
 6 files changed, 40 insertions(+), 11 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
