Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YIaVl-0004KQ-Ey
 for barebox@lists.infradead.org; Tue, 03 Feb 2015 10:15:14 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t13AEpRS002570
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili16) with ESMTP id t13AEpM17420
 for <barebox@lists.infradead.org>; Tue, 3 Feb 2015 19:14:51 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue,  3 Feb 2015 19:14:43 +0900
Message-Id: <1422958489-8855-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/5] MAKEALL: fixes and refactorings
To: barebox@lists.infradead.org




Masahiro Yamada (5):
  MAKEALL: check the return code of "make" rather than "printf"
  MAKEALL: remove false positive error check
  MAKEALL: use $(...) instead of `...` for readability
  MAKEALL: do not pass meaningless -C option to make
  MAKEALL: consolidate -j{JOBS} option

 MAKEALL | 42 +++++++++++++++++++-----------------------
 1 file changed, 19 insertions(+), 23 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
