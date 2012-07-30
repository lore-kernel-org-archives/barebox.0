Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SvmoP-0001g8-VE
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 10:02:54 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E8EE8FF9A39
 for <barebox@lists.infradead.org>; Mon, 30 Jul 2012 12:08:50 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Jul 2012 12:02:37 +0200
Message-Id: <1343642565-32257-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 04/12] pbl: discard unwind symbol if enable in barebox
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/pbl/zbarebox.lds.S |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
index 1cbcef4..0902067 100644
--- a/arch/arm/pbl/zbarebox.lds.S
+++ b/arch/arm/pbl/zbarebox.lds.S
@@ -46,6 +46,10 @@ SECTIONS
 		__bare_init_end = .;
 		*(.text*)
 	}
+
+	/* Discard unwind if enable in barebox */
+	/DISCARD/ : { *(.ARM.ex*) }
+
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
