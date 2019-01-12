Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbM-0001uy-Bh
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id b7so8048496pfi.8
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:50 -0800
Message-Id: <20190112082456.7441-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 0/6] Support for digesting large files (> 4 GiB)
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Everyone:

This is the series of patches I made while to fix incorrect behaviour
while trying to md5sum a 128 GiB file. Most of the patches should be
pretty straightforward. If "crypto: digest: Split memory vs. file code
into separate functions" is too controversial it can be dropped.

Feedback is welcome!

Thanks,
Andrey Smirnov

Andrey Smirnov (6):
  treewide: Introduce MAP_FAILED and replace ad-hoc constants with it
  crypto: digest: Remove unused variable
  crypto: digest: Replace 4096 with PAGE_SIZE
  crypto: digest: Split memory vs. file code into separate functions
  commands: digest: Use MAX_LFS_FILESIZE instead of ~0
  crypto: digest: Change the signature of digest_file_window()

 commands/digest.c |   3 +-
 commands/go.c     |   2 +-
 commands/md.c     |   2 +-
 common/ratp/md.c  |   2 +-
 crypto/digest.c   | 122 +++++++++++++++++++++++++++-------------------
 fs/fs.c           |   2 +-
 include/digest.h  |   2 +-
 include/fs.h      |   2 +
 8 files changed, 80 insertions(+), 57 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
