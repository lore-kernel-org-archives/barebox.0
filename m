Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo5.mail-out.ovh.net ([46.105.56.132]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzWjH-0003dd-5c
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 18:13:19 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 02657FFA4E0
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 19:23:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 27 Jan 2013 19:11:56 +0100
Message-Id: <1359310316-20121-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359310316-20121-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130127180957.GO26329@game.jcrosoft.o>
 <1359310316-20121-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] at91rm9200ek: auto detect sdram size
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91rm9200ek/init.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/at91rm9200ek/init.c b/arch/arm/boards/at91rm9200ek/init.c
index 0a360ae..66ea6b7 100644
--- a/arch/arm/boards/at91rm9200ek/init.c
+++ b/arch/arm/boards/at91rm9200ek/init.c
@@ -39,7 +39,7 @@ static struct at91_ether_platform_data ether_pdata = {
 
 static int at91rm9200ek_mem_init(void)
 {
-	at91_add_device_sdram(32 * 1024 * 1024);
+	at91_add_device_sdram(0);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
