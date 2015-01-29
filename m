Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGecq-00030s-Mf
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 02:14:33 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0T2EA9H016416
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:10 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0T2EBi19954
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 11:14:11 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 11:14:04 +0900
Message-Id: <1422497647-28863-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/3] Slim down include/common.h more
To: barebox@lists.infradead.org




Masahiro Yamada (3):
  linux/bug.h: move BUILD_BUG_ON*() macros
  asm-generic/bug.h: move BUG(), BUG_ON(), WARN(), WARN_ON() macros
  linux/kernel.h: move some macros and prototypes

 include/asm-generic/bug.h |  37 ++++++++++++++++
 include/common.h          | 108 ----------------------------------------------
 include/linux/bug.h       |  30 +++++++++++++
 include/linux/kernel.h    |  61 ++++++++++++++++++++++++++
 4 files changed, 128 insertions(+), 108 deletions(-)
 create mode 100644 include/asm-generic/bug.h
 create mode 100644 include/linux/bug.h

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
