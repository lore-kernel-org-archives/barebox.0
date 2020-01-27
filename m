Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout10.rmx.de ([94.199.88.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivz3A-0005sx-5F
 for barebox@lists.infradead.org; Mon, 27 Jan 2020 07:43:13 +0000
Received: from kdin01.retarus.com (kdin01.dmz1.retloc [172.19.17.48])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout10.rmx.de (Postfix) with ESMTPS id 485hYn07K5z3768
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:43:09 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin01.retarus.com (Postfix) with ESMTPS id 485hYj5srwz2ywD
 for <barebox@lists.infradead.org>; Mon, 27 Jan 2020 08:43:05 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Mon, 27 Jan 2020 08:42:53 +0100
Message-ID: <20200127074253.17093-1-ceggers@arri.de>
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
Subject: [PATCH] gadget: f_fastboot: Fix memory leak
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

bootm_data::os_file is not required to be a copied string. It isn't
freed anywhere.

Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 35c4b8cf4..0a3aff3cf 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -769,7 +769,7 @@ static void __maybe_unused cb_boot(struct f_fastboot *f_fb, const char *opt)
 	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set_match("bootm.image", "");
 
-	data.os_file = xstrdup(FASTBOOT_TMPFILE);
+	data.os_file = FASTBOOT_TMPFILE;
 
 	ret = bootm_boot(&data);
 
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
