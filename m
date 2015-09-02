Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZXAkv-00018P-Kv
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 16:19:26 +0000
Received: by lbpo4 with SMTP id o4so9226356lbp.2
 for <barebox@lists.infradead.org>; Wed, 02 Sep 2015 09:19:03 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Wed,  2 Sep 2015 19:20:50 +0300
Message-Id: <1441210850-14159-1-git-send-email-pmamonov@gmail.com>
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
Subject: [PATCH] ata: ide-sff: fix integer overflow in ata_wait_ready()
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/ata/ide-sff.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index a8f2b26..e32cc3f 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -118,7 +118,7 @@ static int ata_wait_ready(struct ide_port *ide, unsigned timeout)
 {
 	uint8_t status;
 	uint64_t start = get_time_ns();
-	uint64_t toffs = timeout * 1000 * 1000;
+	uint64_t toffs = timeout * MSECOND;
 
 	do {
 		status = ata_rd_status(ide);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
