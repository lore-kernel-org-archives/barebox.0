Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOoqg-0000O0-Cf
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:32:58 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SOoqe-0005qs-N3
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 13:32:56 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SOoqe-0003tp-Lh
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 13:32:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:32:51 +0200
Message-Id: <1335785575-14953-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: misc patches
To: barebox@lists.infradead.org

Some misc patches

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      edit: Add proper screen size handling
      remove dlmalloc.src
      dhcp: set start time
      tlsf_malloc: return valid pointer for malloc(0)

 commands/edit.c      |   50 +-
 common/dlmalloc.src  | 3265 --------------------------------------------------
 common/tlsf_malloc.c |    7 +
 net/dhcp.c           |    1 +
 4 files changed, 28 insertions(+), 3295 deletions(-)
 delete mode 100644 common/dlmalloc.src

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
