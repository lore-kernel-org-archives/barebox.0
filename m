Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SIdjw-00048N-4D
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 10:28:28 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8E097FF85F7
 for <barebox@lists.infradead.org>; Fri, 13 Apr 2012 12:29:33 +0200 (CEST)
Date: Fri, 13 Apr 2012 12:10:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120413101046.GF11079@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/2] zImage fix
To: barebox@lists.infradead.org

HI,

	fix zImage support when a oftree is concataned

	if the oftree is enabled used it
	otherwise just copy it

The following changes since commit d034757079c34d6ce258c1fd08f0bb1352e75622:

  arm: add Android boot image support (2012-04-13 18:13:53 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git zImage

for you to fetch changes up to cc80bdcb3991f995091697c035d156e1f03c6a35:

  arm: bootm: zImage allow to use the concataned oftree (2012-04-13 18:22:36 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      arm: fix zImage support when a oftree is concatenated
      arm: bootm: zImage allow to use the concataned oftree

 arch/arm/lib/bootm.c |   69 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 files changed, 69 insertions(+), 0 deletions(-)


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
