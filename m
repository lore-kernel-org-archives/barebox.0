Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpPOJ-0005a3-Dm
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 20:54:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Jun 2013 22:53:39 +0200
Message-Id: <1371675222-25433-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Some small menu updates
To: barebox@lists.infradead.org


Some minor fixes to the menu code.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      menu: Align entries
      Fix gotoXY argument order
      menu: Make action callback optional

 common/menu.c     | 15 ++++++++-------
 include/readkey.h |  2 +-
 2 files changed, 9 insertions(+), 8 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
