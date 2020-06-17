Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlgsd-0000AA-Ni
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 22:50:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id A172B9C0342
 for <barebox@lists.infradead.org>; Wed, 17 Jun 2020 18:49:59 -0400 (EDT)
From: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
Date: Thu, 18 Jun 2020 00:48:51 +0200
Message-Id: <20200617224851.1163860-1-gilles.doffe@savoirfairelinux.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] common: avoid bootchooser double watchdog configuration
To: barebox@lists.infradead.org
Cc: rennes-dev@savoirfairelinux.com, jerome.oufella@savoirfairelinux.com

In case bootchooser is used, boot_entry() will be called twice:
1) boot bootchooser
2) boot <chosen_entry>
Thus it will lead to twice watchdog configuration if watchdog_timeout
is set.
Except that it should be activated only once in any way, it leads
to unwanted reset when issuing too much "near" calls of the watchdog
configuration for da9062.
Can be reproduced with this command:
 barebox/ wd 30;wd 30
Even if this commands are intentional, 'boot bootchooser' is not.
Resetting watchdog_timeout to 0 after first watchdog
configuration solves this problem ensuring watchdog will not be
configured a second time.

Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
---
 common/boot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index f546fce62..8d09f96b6 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -150,6 +150,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 					   boot_watchdog_timeout);
 		if (ret)
 			pr_warn("Failed to enable watchdog: %s\n", strerror(-ret));
+
+		boot_watchdog_timeout = 0;
 	}
 
 	ret = be->boot(be, verbose, dryrun);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
