Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwZln-0002wr-41
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 15:23:59 +0000
Received: by mail-lb0-f178.google.com with SMTP id y6so4753190lbh.37
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 08:23:36 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue,  9 Jul 2013 21:23:14 +0600
Message-Id: <1373383397-13205-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH 0/3] Fix friendlyarm-tiny210 regression
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Tiny210 was broken in the most recent releases of barebox. This is the fix.

Alexey Galakhov (3):
  friendlyarm-tiny210: do not restart barebox twice
  friendlyarm-tiny210: use LEDs for boot errors
  friendlyarm-tiny210: add heartbeat LED

 arch/arm/boards/friendlyarm-tiny210/lowlevel.c |   57 ++++++++++++++++++++----
 arch/arm/boards/friendlyarm-tiny210/tiny210.c  |    2 +
 2 files changed, 51 insertions(+), 8 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
