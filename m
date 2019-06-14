Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr770040.outbound.protection.outlook.com
 ([40.107.77.40] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsul-0002ko-Vx
 for barebox@lists.infradead.org; Fri, 14 Jun 2019 20:35:13 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Fri, 14 Jun 2019 20:35:08 +0000
Message-ID: <20190614203438.18900-2-cory.tusar@zii.aero>
References: <20190614203438.18900-1-cory.tusar@zii.aero>
In-Reply-To: <20190614203438.18900-1-cory.tusar@zii.aero>
Content-Language: en-US
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
Subject: [PATCH 1/2] common: boot: Instantiate storage for
 global.boot.machine_id
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Chris Healy <Chris.Healy@zii.aero>

There are references throughout the documentation (and elsewhere in the
boot code) regarding the use of machine-id in a bootloader spec file.
However, there was no global storage allocated for this variable.

This commit adds the necessary storage and associated initialization.

Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
---
 common/boot.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/boot.c b/common/boot.c
index 974eaf5d0..fae2ff935 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -348,4 +348,13 @@ void bootsources_list(struct bootentries *bootentries)
 		printf("%-20s %s\n", entry->title, entry->description);
 }
 
+static int boot_init(void)
+{
+	globalvar_add_simple("boot.machine_id", NULL);
+
+	return 0;
+}
+late_initcall(boot_init);
+
 BAREBOX_MAGICVAR_NAMED(global_boot_default, global.boot.default, "default boot order");
+BAREBOX_MAGICVAR_NAMED(global_boot_machine_id, global.boot.machine_id, "optional machine-id, per Bootloader Spec");
-- 
2.21.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
