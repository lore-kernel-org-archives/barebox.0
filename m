Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzE-0006RC-Ut
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-Dx
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:48 +0100
Message-Id: <20191129151505.23946-23-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 22/39] pstore: ramoops: use correct format specifier for
 size_t variables
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 fs/pstore/ram.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index b96857969269..958f46b0ead0 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -623,10 +623,10 @@ static int ramoops_probe(struct device_d *dev)
 
 	if (!IS_ENABLED(CONFIG_OFTREE)) {
 		scnprintf(kernelargs, sizeof(kernelargs),
-			  "ramoops.record_size=0x%x "
-			  "ramoops.console_size=0x%x "
-			  "ramoops.ftrace_size=0x%x "
-			  "ramoops.pmsg_size=0x%x "
+			  "ramoops.record_size=0x%zx "
+			  "ramoops.console_size=0x%zx "
+			  "ramoops.ftrace_size=0x%zx "
+			  "ramoops.pmsg_size=0x%zx "
 			  "ramoops.mem_address=0x%llx "
 			  "ramoops.mem_size=0x%lx "
 			  "ramoops.ecc=%d",
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
