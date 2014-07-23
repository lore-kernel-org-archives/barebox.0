Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9sz2-0007Eh-6a
 for barebox@lists.infradead.org; Wed, 23 Jul 2014 09:37:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B7B4EBF08D
 for <barebox@lists.infradead.org>; Wed, 23 Jul 2014 11:36:44 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 23 Jul 2014 11:36:44 +0200
Message-Id: <1406108204-7201-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] barebox: common: Add missing filetype description
To: barebox@lists.infradead.org

Added missing filetype description for UBIFS.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 common/filetype.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index a04fbdd..86e544a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -51,6 +51,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_png] = { "PNG image", "png" },
 	[filetype_ext] = { "EXT filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
+	[filetype_ubifs] = { "UBIFS image", "ubifs" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
 	[filetype_ch_image] = { "TI OMAP CH boot image", "ch-image" },
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
