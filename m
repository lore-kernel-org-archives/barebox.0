Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faZ84-0006NI-J8
 for barebox@lists.infradead.org; Wed, 04 Jul 2018 04:10:58 +0000
Received: by mail-pg0-x242.google.com with SMTP id q14-v6so1893890pgt.13
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 21:10:46 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  3 Jul 2018 21:10:21 -0700
Message-Id: <20180704041024.32569-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] nvmem: rave-sp-eeprom: Remove VLA usage
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This is a backport of patch [1] by Kees Cook

[1] https://lkml.kernel.org/r/20180620182600.GA24297@beast

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/nvmem/rave-sp-eeprom.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/rave-sp-eeprom.c b/drivers/nvmem/rave-sp-eeprom.c
index 5fd429f16..ff91f39f7 100644
--- a/drivers/nvmem/rave-sp-eeprom.c
+++ b/drivers/nvmem/rave-sp-eeprom.c
@@ -55,6 +55,7 @@ enum rave_sp_eeprom_header_size {
 	RAVE_SP_EEPROM_HEADER_SMALL = 4U,
 	RAVE_SP_EEPROM_HEADER_BIG   = 5U,
 };
+#define RAVE_SP_EEPROM_HEADER_MAX	RAVE_SP_EEPROM_HEADER_BIG
 
 #define	RAVE_SP_EEPROM_PAGE_SIZE	32U
 
@@ -115,9 +116,12 @@ static int rave_sp_eeprom_io(struct rave_sp_eeprom *eeprom,
 	const unsigned int rsp_size =
 		is_write ? sizeof(*page) - sizeof(page->data) : sizeof(*page);
 	unsigned int offset = 0;
-	u8 cmd[cmd_size];
+	u8 cmd[RAVE_SP_EEPROM_HEADER_MAX + sizeof(page->data)];
 	int ret;
 
+	if (WARN_ON(cmd_size > sizeof(cmd)))
+		return -EINVAL;
+
 	cmd[offset++] = eeprom->address;
 	cmd[offset++] = 0;
 	cmd[offset++] = type;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
