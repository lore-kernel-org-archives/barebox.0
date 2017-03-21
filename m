Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqHSK-0006eX-QE
 for barebox@lists.infradead.org; Tue, 21 Mar 2017 10:56:02 +0000
Received: by mail-lf0-x242.google.com with SMTP id v2so12713634lfi.2
 for <barebox@lists.infradead.org>; Tue, 21 Mar 2017 03:55:39 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 21 Mar 2017 13:55:29 +0300
Message-Id: <20170321105531.11896-2-antonynpavlov@gmail.com>
In-Reply-To: <20170321105531.11896-1-antonynpavlov@gmail.com>
References: <20170321105531.11896-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] scripts/tags.sh: drop __TestClearPage*() helpers
To: barebox@lists.infradead.org

This is an adoption of the linux kernel commit

| commit 685eaade56c66c806dbe8102f12e2926cf4ec870
| Author: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
| Date:   Fri Jan 15 16:52:10 2016 -0800
|
|     page-flags: drop __TestClearPage*() helpers
|
|     Nobody uses them.
|
|     Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
|     Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
|     Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 scripts/tags.sh | 2 --
 1 file changed, 2 deletions(-)

diff --git a/scripts/tags.sh b/scripts/tags.sh
index 79fdafb0d..c3ce5f945 100755
--- a/scripts/tags.sh
+++ b/scripts/tags.sh
@@ -153,7 +153,6 @@ exuberant()
 	--regex-c++='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
 	--regex-c++='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/'	\
 	--regex-c++='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
-	--regex-c++='/__TESTCLEARFLAG_FALSE\(([^,)]*).*/__TestClearPage\1/' \
 	--regex-c++='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
 	--regex-c='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
 	--regex-c='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
@@ -198,7 +197,6 @@ emacs()
 	--regex='/CLEARPAGEFLAG_NOOP\(([^,)]*).*/ClearPage\1/'	\
 	--regex='/__CLEARPAGEFLAG_NOOP\(([^,)]*).*/__ClearPage\1/' \
 	--regex='/TESTCLEARFLAG_FALSE\(([^,)]*).*/TestClearPage\1/' \
-	--regex='/__TESTCLEARFLAG_FALSE\(([^,)]*).*/__TestClearPage\1/' \
 	--regex='/_PE\(([^,)]*).*/PEVENT_ERRNO__\1/'		\
 	--regex='/PCI_OP_READ\(([a-z]*[a-z]).*[1-4]\)/pci_bus_read_config_\1/' \
 	--regex='/PCI_OP_WRITE\(([a-z]*[a-z]).*[1-4]\)/pci_bus_write_config_\1/'
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
