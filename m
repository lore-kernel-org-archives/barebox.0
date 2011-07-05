Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo1.mail-out.ovh.net ([178.33.45.107]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qdyr6-0006MT-45
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 06:11:32 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id 78D8B100C785
	for <barebox@lists.infradead.org>;
	Tue,  5 Jul 2011 08:11:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  5 Jul 2011 07:55:54 +0200
Message-Id: <1309845357-12285-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/4] twl4030: fix typo on EXPORT_SYMBOL twl4030_reg_read and
	twl4030_reg_write
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/mfd/twl4030.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/twl4030.c b/drivers/mfd/twl4030.c
index 81bf48b..6a06bd4 100644
--- a/drivers/mfd/twl4030.c
+++ b/drivers/mfd/twl4030.c
@@ -60,7 +60,7 @@ int twl4030_reg_read(struct twl4030 *twl4030, u16 reg, u8 *val)
 	}
 	return 0;
 }
-EXPORT_SYMBOL(twl4030_reg_read)
+EXPORT_SYMBOL(twl4030_reg_read);
 
 int twl4030_reg_write(struct twl4030 *twl4030, u16 reg, u8 val)
 {
@@ -94,7 +94,7 @@ int twl4030_reg_write(struct twl4030 *twl4030, u16 reg, u8 val)
 	}
 	return 0;
 }
-EXPORT_SYMBOL(twl4030_reg_write)
+EXPORT_SYMBOL(twl4030_reg_write);
 
 int twl4030_set_bits(struct twl4030 *twl4030, enum twl4030_reg reg, u8 mask, u8 val)
 {
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
