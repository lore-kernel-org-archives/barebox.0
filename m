Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo68.mail-out.ovh.net ([46.105.63.100])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJX-0006At-SM
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:13:58 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id AA1533F769
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:33 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:27 +0100
Message-Id: <1488190770-4034-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/8] clocksource: allow to have multiple device from clock
 source
To: barebox@lists.infradead.org

use the one with the most priority.

We can not select the clocksource at user level.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/clock.c  | 11 +++++++++++
 include/clock.h |  3 ++-
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/common/clock.c b/common/clock.c
index 2c5dd91cc..d99d06853 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -213,6 +213,17 @@ EXPORT_SYMBOL(mdelay_non_interruptible);
 
 int init_clock(struct clocksource *cs)
 {
+	if (current_clock && cs->priority < current_clock->priority)
+		return -EBUSY;
+
+	if (cs->init) {
+		int ret;
+
+		ret = cs->init(cs);
+		if (ret)
+			return ret;
+	}
+
 	current_clock = cs;
 	time_beginning = get_time_ns();
 
diff --git a/include/clock.h b/include/clock.h
index d65e404e8..5f2f53ab6 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -12,7 +12,8 @@ struct clocksource {
 	uint64_t	(*read)(void);
 	uint64_t	cycle_last;
 	uint64_t	mask;
-
+	int		priority;
+	int		(*init)(struct clocksource*);
 };
 
 static inline uint32_t cyc2ns(struct clocksource *cs, uint64_t cycles)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
