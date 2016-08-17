Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward17j.cmail.yandex.net ([2a02:6b8:0:1630::f4])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bZvka-0003U0-QR
 for barebox@lists.infradead.org; Wed, 17 Aug 2016 07:59:02 +0000
Received: from smtp2m.mail.yandex.net (smtp2m.mail.yandex.net
 [IPv6:2a02:6b8:0:2519::122])
 by forward17j.cmail.yandex.net (Yandex) with ESMTP id 1949021499
 for <barebox@lists.infradead.org>; Wed, 17 Aug 2016 10:58:36 +0300 (MSK)
From: Aleksey Kuleshov <rndfax@yandex.ru>
Date: Wed, 17 Aug 2016 10:58:05 +0300
Message-Id: <1471420687-14367-1-git-send-email-rndfax@yandex.ru>
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
Subject: [PATCH 0/2] rework menu so that it can support multiline titles
To: barebox@lists.infradead.org
Cc: Aleksey Kuleshov <rndfax@yandex.ru>

Aleksey Kuleshov (2):
  hush: do not do anything if string is zero length
  rework menu so that it can support multiline titles

 commands/menu.c   | 14 +++++++---
 common/boot.c     |  8 ++++--
 common/hush.c     |  3 +++
 common/menu.c     | 78 +++++++++++++++++++++++++++++++++++++++++++++++++------
 common/menutree.c | 13 ++++++++--
 include/menu.h    |  8 +++++-
 6 files changed, 107 insertions(+), 17 deletions(-)

-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
