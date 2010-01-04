Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NRtOl-0002kW-S8
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 20:19:36 +0000
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id 32FDE38328
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 20:47:40 +0100 (CET)
Received: from d4rwin.no-ip.org (25.Red-79-153-8.dynamicIP.rima-tde.net
	[79.153.8.25])
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BC082225176
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 20:47:09 +0100 (CET)
Date: Mon, 4 Jan 2010 20:42:52 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100104194252.GB19855@darwin>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/2] CFI flash driver: Fix misleading trace when
	unprotecting a sector
To: barebox@lists.infradead.org

When (un)protecting a flash sector with the CFI flash driver a trace
"protect 0x..." is generated, independently of the type of operation. This is
misleading in case of an unprotect. Tell the truth when unprotecting a sector.

Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>
---
 drivers/nor/cfi_flash.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/drivers/nor/cfi_flash.c b/drivers/nor/cfi_flash.c
index 37206d0..938e2cb 100644
--- a/drivers/nor/cfi_flash.c
+++ b/drivers/nor/cfi_flash.c
@@ -380,7 +380,8 @@ static int cfi_protect(struct cdev *cdev, size_t count, unsigned long offset, in
 	unsigned long start, end;
 	int i, ret = 0;
 
-	debug("%s: protect 0x%08x (size %d)\n", __FUNCTION__, offset, count);
+	debug("%s: %sprotect 0x%08x (size %d)\n",
+		__FUNCTION__, (prot? "" : "un"), offset, count);
 
 	start = flash_find_sector(finfo, cdev->dev->map_base + offset);
 	end   = flash_find_sector(finfo, cdev->dev->map_base + offset + count - 1);
-- 
1.6.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
