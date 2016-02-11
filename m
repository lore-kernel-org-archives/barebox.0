Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aTndj-00048r-2A
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 09:34:20 +0000
Received: from weser.hi.4.pengutronix.de ([10.1.0.109]
 helo=weser.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aTndM-0002Pa-9G
 for barebox@lists.infradead.org; Thu, 11 Feb 2016 10:33:56 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 11 Feb 2016 10:33:55 +0100
Message-Id: <1455183236-25952-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ramoops: allow to build without OFTREE support
To: barebox@lists.infradead.org

Ramoops may be useful even without oftree support, as kernels
booted without a DT may have other means to reserve the
ramoops memory.

Fixes:
In function `ramoops_probe':
undefined reference to `of_add_reserve_entry'

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/pstore/ram.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 66b4975a3035..fdd92a60a57a 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -455,7 +455,8 @@ static int ramoops_probe(struct ramoops_platform_data *pdata)
 		  ramoops_ecc);
 	globalvar_add_simple("linux.bootargs.ramoops", kernelargs);
 
-	of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
+	if (IS_ENABLED(CONFIG_OFTREE))
+		of_add_reserve_entry(cxt->phys_addr, cxt->phys_addr + mem_size);
 
 	return 0;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
