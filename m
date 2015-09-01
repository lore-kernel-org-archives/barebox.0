Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZWfkA-000763-Hr
 for barebox@lists.infradead.org; Tue, 01 Sep 2015 07:12:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Sep 2015 09:12:09 +0200
Message-Id: <1441091529-10337-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: do not ignore data aborts initially
To: Barebox List <barebox@lists.infradead.org>

arm_ignore_data_abort can be set to nonzero to ignore data aborts. The
default should be not to ignore data aborts. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/exceptions.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/exceptions.S b/arch/arm/cpu/exceptions.S
index f17f1e1..eda0d6a 100644
--- a/arch/arm/cpu/exceptions.S
+++ b/arch/arm/cpu/exceptions.S
@@ -220,9 +220,9 @@ _fiq: .word fiq
 .align 4
 .global arm_ignore_data_abort
 arm_ignore_data_abort:
-.word arm_ignore_data_abort /* When != 0 data aborts are ignored */
+.word 0 /* When != 0 data aborts are ignored */
 .global arm_data_abort_occurred
 arm_data_abort_occurred:
-.word arm_data_abort_occurred /* set != 0 by the data abort handler */
+.word 0 /* set != 0 by the data abort handler */
 abort_stack:
 .space 8
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
