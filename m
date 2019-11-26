Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZYZs-0007Zh-J3
 for barebox@lists.infradead.org; Tue, 26 Nov 2019 11:00:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 26 Nov 2019 11:57:00 +0100
Message-Id: <20191126105659.9555-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191126105659.9555-1-a.fatoum@pengutronix.de>
References: <20191126105659.9555-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] pstore: remove unused goto label
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Previous refactoring removed jumps to fail_clear. Remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index 86049f989e13..b96857969269 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -646,7 +646,6 @@ static int ramoops_probe(struct device_d *dev)
 	return 0;
 
 fail_buf:
-fail_clear:
 	kfree(cxt->mprz);
 fail_init_mprz:
 	kfree(cxt->fprz);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
