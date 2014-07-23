Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sqk-0001uO-Bd
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:28:38 +0000
Received: by mail-we0-f182.google.com with SMTP id k48so874456wev.41
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 02:28:16 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 23 Jul 2014 11:28:06 +0200
Message-Id: <1406107690-8605-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406107690-8605-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/5] ARM: execute OF fixups early
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, barebox@lists.infradead.org
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>

Device trees can be passed by primary boot loader or appended to
barebox binary. Unfortunately, before probing devices from such
a device tree, no fixup can be applied.

Add a call to of_fix_tree() right before probing devices to catch
some very early fixups.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: barebox@lists.infradead.org
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/cpu/dtb.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
index abc3ccb4c095..ae4ff2a9adcd 100644
--- a/arch/arm/cpu/dtb.c
+++ b/arch/arm/cpu/dtb.c
@@ -50,6 +50,7 @@ static int of_arm_init(void)
 	root = of_unflatten_dtb(fdt);
 	if (root) {
 		of_set_root_node(root);
+		of_fix_tree(root);
 		if (IS_ENABLED(CONFIG_OFDEVICE))
 			of_probe();
 	}
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
