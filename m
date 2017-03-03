Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjp25-0007TF-Iu
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 15:22:15 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 376655A10A
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 16:21:49 +0100 (CET)
Received: from localhost (unknown [91.134.156.222])
 (Authenticated sender: plagnioj@jcrosoft.com)
 by player691.ha.ovh.net (Postfix) with ESMTPA id 0F49A2600B0
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 16:21:48 +0100 (CET)
Date: Fri, 3 Mar 2017 16:27:59 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170303152759.GF4120@mail.ovh.net>
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
Subject: [PATCH 0/2] efivarfs: rework the filesystem to make it human readable
To: barebox@lists.infradead.org

Hi,

efivarfs: rework the filesystem to make it human readable

today we use <varname>-<guid as %pUl>

such as Boot0000-8be4df61-93ca-11d2-aa0d-00e098032b8c

now we will use a different approach where will represent first the vendor
as a directory and then inside the associates variable.

But also create symlink on the vendor with readable name.

so it will look like this:

barebox@barebox EFI payload:/ ls -l /efivars/
drwxrwxrwx             36 04b37fe8-f6ae-480b-bdd5-37d98c5e89aa
drwxrwxrwx             36 4a67b082-0a4c-41cf-b6c7-440b29bb8c4f
drwxrwxrwx             36 4c19049f-4137-4dd3-9c10-8b97a83ffdfa
drwxrwxrwx             36 5b446ed1-e30b-4faa-871a-3654eca36080
drwxrwxrwx             36 5b91f69c-8b88-4a2b-9269-5f1d802b5175
drwxrwxrwx             36 8be4df61-93ca-11d2-aa0d-00e098032b8c
lrwxrwxrwx              3 Efi -> 8be4df61-93ca-11d2-aa0d-00e098032b8c
lrwxrwxrwx              7 barebox -> 5b91f69c-8b88-4a2b-9269-5f1d802b5175
drwxrwxrwx             36 eb704011-1402-11d3-8e77-00a0c969723b
lrwxrwxrwx              7 systemd -> 4a67b082-0a4c-41cf-b6c7-440b29bb8c4f
barebox@barebox EFI payload:/ ls -l /efivars/Efi/
-rw-rw-rw-             62 Boot0000
-rw-rw-rw-             80 Boot0001
-rw-rw-rw-             84 Boot0002
-rw-rw-rw-            106 Boot0003
-rw-rw-rw-            108 Boot0004
-rw-rw-rw-            141 Boot0005
-rw-rw-rw-             88 Boot0006
-rw-rw-rw-              2 BootCurrent
-rw-rw-rw-              4 BootOptionSupport
-rw-rw-rw-             14 BootOrder
-rw-rw-rw-            107 ConIn
-rw-rw-rw-           1567 ConInDev
-rw-rw-rw-            103 ConOut
-rw-rw-rw-           1855 ConOutDev
-rw-rw-rw-             73 ErrOut
-rw-rw-rw-           1563 ErrOutDev
-rw-rw-rw-             14 Key0000
-rw-rw-rw-             14 Key0001
-rw-rw-rw-              4 Lang
-rw-rw-rw-             13 LangCodes
-rw-rw-rw-              8 OsIndicationsSupported
-rw-rw-rw-              3 PlatformLang
-rw-rw-rw-             18 PlatformLangCodes
-rw-rw-rw-            108 PlatformRecovery0000
-rw-rw-rw-              2 Timeout
barebox@barebox EFI payload:/ ls -l /efivars/barebox/
barebox@barebox EFI payload:/ ls -l /efivars/systemd/
-rw-rw-rw-             14 LoaderTimeInitUSec

please pull

The following changes since commit f14af7444ad9d8ce674382f222119f5fcd3f2576:

  efi: add veriable to report secure boot support and status (2017-02-28 23:05:31 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/efivarfs

for you to fetch changes up to a757520bfccf17064181ebc15646efdb83ee581b:

  efivarfs: rework the filesystem to make it human readable (2017-03-01 00:15:38 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      ls: allow to list a symlink ending with '/' as a dir
      efivarfs: rework the filesystem to make it human readable

 commands/ls.c     |  41 +++++++++++++++++----
 common/efi-guid.c |  17 +++++++--
 common/efi/efi.c  |   2 +-
 fs/efivarfs.c     | 379 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-------------------------------------------
 include/efi.h     |   1 +
 5 files changed, 347 insertions(+), 93 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
