Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cry5C-00051H-MK
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 02:39:09 +0000
Received: from player758.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 726F1B97A9
 for <barebox@lists.infradead.org>; Sun, 26 Mar 2017 04:38:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 26 Mar 2017 04:44:54 +0200
Message-Id: <1490496304-30850-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/13] bootm: make security generic
To: barebox@lists.infradead.org

so other secure format can be used

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c | 1 +
 common/image-fit.c   | 1 +
 include/bootm.h      | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 204344f87..5b90705cd 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -580,6 +580,7 @@ BAREBOX_MAGICVAR(aimage_noverwrite_tags, "Disable overwrite of the tags addr wit
 
 static struct image_handler arm_fit_handler = {
         .name = "FIT image",
+	.is_secure_supported = 1,
 	.open = fit_bootm_open,
         .bootm = do_bootm_linux,
         .filetype = filetype_oftree,
diff --git a/common/image-fit.c b/common/image-fit.c
index 5750199c3..7563eb955 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -617,6 +617,7 @@ static int do_bootm_sandbox_fit(struct image_data *data)
 
 static struct image_handler sandbox_fit_handler = {
 	.name = "FIT image",
+	.is_secure_supported = 1,
 	.open = fit_bootm_open,
 	.bootm = do_bootm_sandbox_fit,
 	.filetype = filetype_oftree,
diff --git a/include/bootm.h b/include/bootm.h
index 1c7a145c6..27c9f571e 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -88,6 +88,7 @@ struct image_handler {
 
 	struct list_head list;
 
+	int is_secure_supported;
 	int ih_os;
 
 	enum filetype filetype;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
