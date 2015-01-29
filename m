Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGeqD-0001AI-EA
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:28:22 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0T2S0M0023616
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:28:00 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0T2RxJ17767
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:27:59 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:27:51 +0900
Message-Id: <1422498476-28986-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/5] Refactor .gitignore and Makefile
To: barebox@lists.infradead.org


Please apply this series to the for-next/misc branch
to avoid conflicts.


Masahiro Yamada (5):
  gitignore: simplify .gitignore file with pattern "/barebox*"
  gitignore: move "barebox_default_env*" to subdirectory
  gitignore: sync with Linux's .gitignore
  kbuild: simplify CLEAN_FILES with pattern "barebox*"
  kbuild: drop bogus "common/barebox_default_env*" from CLEAN_FILES

 .gitignore            | 41 +++++++++++++++--------------------------
 Makefile              | 10 +++-------
 defaultenv/.gitignore |  1 +
 3 files changed, 19 insertions(+), 33 deletions(-)
 create mode 100644 defaultenv/.gitignore

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
