Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faZ85-0006NO-BI
 for barebox@lists.infradead.org; Wed, 04 Jul 2018 04:10:58 +0000
Received: by mail-pg0-x243.google.com with SMTP id r1-v6so1895670pgp.11
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 21:10:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  3 Jul 2018 21:10:22 -0700
Message-Id: <20180704041024.32569-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180704041024.32569-1-andrew.smirnov@gmail.com>
References: <20180704041024.32569-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/4] nvmem: rave-sp-eeprom: Add support for "zii,eeprom-name"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Upstream kernel driver allows specifying EEPROM name via
"zii,eeprom-name" property. Add code to support that in Barebox as
well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/rave-sp-eeprom.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index ff91f39f7..6c6ed17f1 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -337,6 +337,11 @@ static int rave_sp_eeprom_probe(struct device_d *dev)
 		eeprom->header_size = RAVE_SP_EEPROM_HEADER_SMALL;
 
 	config.name      = dev_name(dev);
+	/*
+	 * If a name is specified via DT, override the above with it.
+	 */
+	of_property_read_string(dev->device_node, "zii,eeprom-name",
+				&config.name);
 	config.dev       = dev;
 	config.word_size = 1;
 	config.stride    = 1;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
