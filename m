Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TOXFM-0003Fm-S8
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 17:17:34 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D20A5DC2243
 for <barebox@lists.infradead.org>; Wed, 17 Oct 2012 19:24:11 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 17 Oct 2012 19:15:10 +0200
Message-Id: <1350494111-17861-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1350494111-17861-1-git-send-email-plagnioj@jcrosoft.com>
References: <20121017170252.GA446@game.jcrosoft.org>
 <1350494111-17861-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] sam9x5ek: drop uart2 as it's not always present
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9x5ek/init.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index d7dc30d..58c945c 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -157,7 +157,6 @@ static int at91sam9x5ek_console_init(void)
 {
 	at91_register_uart(0, 0);
 	at91_register_uart(1, 0);
-	at91_register_uart(2, 0);
 	return 0;
 }
 console_initcall(at91sam9x5ek_console_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
