Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y97Th-0003aW-Ta
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 07:25:59 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t087Paok013201
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:36 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t087PaJ07408
 for <barebox@lists.infradead.org>; Thu, 8 Jan 2015 16:25:36 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu,  8 Jan 2015 16:25:23 +0900
Message-Id: <1420701925-11177-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/2] kbuild: trivial fixes of "make mrproper"
To: barebox@lists.infradead.org




Masahiro Yamada (2):
  kbuild: delete include/generated directory by "make mrproper"
  kbuild: drop include/asm from MRPROPER_FILES

 Makefile | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
