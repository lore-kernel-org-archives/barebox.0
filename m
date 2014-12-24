Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y3dS7-0000uK-GR
 for barebox@lists.infradead.org; Wed, 24 Dec 2014 04:21:40 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 sBO4L9uI009856
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:09 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id sBO4L9B28692
 for <barebox@lists.infradead.org>; Wed, 24 Dec 2014 13:21:09 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 24 Dec 2014 13:20:59 +0900
Message-Id: <1419394862-31457-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/3] kbuild: drop redundant code
To: barebox@lists.infradead.org




Masahiro Yamada (3):
  kbuild: remove redundant -include include/generated/autoconf.h
  kbuild: do not create symbolic link include/asm
  kbuild: do not create include2 directory

 .gitignore |  1 -
 Makefile   | 45 +++------------------------------------------
 2 files changed, 3 insertions(+), 43 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
