Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YDnY0-00052i-23
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 05:09:47 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0L59MpI001165
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili11) with ESMTP id t0L59MR15150
 for <barebox@lists.infradead.org>; Wed, 21 Jan 2015 14:09:22 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Wed, 21 Jan 2015 14:09:14 +0900
Message-Id: <1421816959-19004-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/5] rafactor _*MAX, *_MIN macros
To: barebox@lists.infradead.org




Masahiro Yamada (5):
  fs: ubifs: remove redundant macro defines
  lib: decompress: remove redundant INT_MAX define
  linux/kernel.h: move *_MAX, *_MIN macros
  linux/kernel.h: rename USHORT_MAX, SHORT_MAX, SHORT_MIN
  linux/kernel.h: add more *_MAX, *_MIN macros

 fs/parseopt.c            |  2 +-
 fs/ubifs/ubifs.h         |  4 ----
 include/common.h         | 13 -------------
 include/linux/kernel.h   | 27 +++++++++++++++++++++++++++
 lib/decompress_bunzip2.c |  4 ----
 5 files changed, 28 insertions(+), 22 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
