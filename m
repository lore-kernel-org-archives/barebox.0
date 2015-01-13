Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvmy-0000T1-De
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 07:21:20 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile12) with ESMTP id
 t0D7KuAU007860
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:20:56 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili15) with ESMTP id t0D7KuB20381
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 16:20:56 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 16:20:41 +0900
Message-Id: <1421133646-17418-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH 0/5] .gitignore fixes
To: barebox@lists.infradead.org




Borislav Petkov (1):
  gitignore: add all.config

Jani Nikula (1):
  gitignore: Add GNU GLOBAL files to top .gitignore

Jike Song (1):
  .gitignore: match ncscope.out

Masahiro Yamada (2):
  gitignore: do not ignore .mailmap
  gitignore: remove bogus ignore patterns

 .gitignore | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
