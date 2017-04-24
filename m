Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2gyP-0008E9-AW
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 16:36:26 +0000
Received: by mail-lf0-x242.google.com with SMTP id i3so17328333lfh.2
 for <barebox@lists.infradead.org>; Mon, 24 Apr 2017 09:36:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Apr 2017 19:35:59 +0300
Message-Id: <20170424163559.22379-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] eeprom: at24: add the "read-only" dt parameter support
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/eeprom/at24.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 1227286fbe..050a35aed8 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -454,6 +454,10 @@ static int at24_probe(struct device_d *dev)
 	at24->cdev.size = chip.byte_len;
 
 	writable = !(chip.flags & AT24_FLAG_READONLY);
+
+	if (of_get_property(dev->device_node, "read-only", NULL))
+		writable = 0;
+
 	if (writable) {
 		unsigned write_max = chip.page_size;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
