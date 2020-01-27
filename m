Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout12.rmx.de ([94.199.88.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz6m-0007hH-0w
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 07:46:57 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout12.rmx.de (Postfix) with ESMTPS id 485hf46nh5zRrCB
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:46:52 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 485hf15vvVz2TSGr
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:46:49 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 08:46:39 +0100
Message-ID: <20200127074639.17310-1-ceggers@arri.de>
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
Subject: [PATCH] bootchooser: Change name of kernel parameter
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

When passing the target name as "bootchooser.active", Linux will not
pass the parameter as environment variable to the init process. The only
way to get the bootchooser result (e.g. in an initramfs), is to parse it
out of /proc/cmdline (requires mounting of /proc, sed, ...).

After renaming, the bootchooser result will be passed as environment
variable which can easily accessed from /init (e.g. for selecting the
associated root fs).

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/bootchooser.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/bootchooser.c b/common/bootchooser.c
index c08db03eb..f0e3294dc 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -817,7 +817,7 @@ static int bootchooser_boot_one(struct bootchooser *bc, int *tryagain)
 		goto out;
 	}
 
-	system = basprintf("bootchooser.active=%s", target->name);
+	system = basprintf("bootchooser_active=%s", target->name);
 	globalvar_add_simple("linux.bootargs.bootchooser", system);
 	free(system);
 
-- 
Christian Eggers
Embedded software developer

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRA 57918
Persoenlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: Muenchen - Registergericht: Amtsgericht Muenchen - Handelsregisternummer: HRB 54477
Geschaeftsfuehrer: Dr. Michael Neuhaeuser; Stephan Schenk; Walter Trauninger; Markus Zeiler


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
