Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NeTxk-00058Y-9m
	for barebox@lists.infradead.org; Mon, 08 Feb 2010 13:47:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Feb 2010 14:47:30 +0100
Message-Id: <1265636852-19054-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1265636852-19054-4-git-send-email-s.hauer@pengutronix.de>
References: <1265636852-19054-1-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-2-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-3-git-send-email-s.hauer@pengutronix.de>
	<1265636852-19054-4-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/6] cfi_flash_new: make code more readable,
	return is not a function
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nor/cfi_flash_new.c |    9 +++++----
 1 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nor/cfi_flash_new.c b/drivers/nor/cfi_flash_new.c
index f9306cb..88432c8 100644
--- a/drivers/nor/cfi_flash_new.c
+++ b/drivers/nor/cfi_flash_new.c
@@ -123,7 +123,6 @@ static int flash_write_cfiword (flash_info_t * info, ulong dest,
 	ctladdr.cp = flash_make_addr (info, 0, 0);
 	cptr.cp = (uchar *) dest;
 
-
 	/* Check if Flash is (sufficiently) erased */
 	if (bankwidth_is_1(info)) {
 		flag = ((cptr.cp[0] & cword.c) == cword.c);
@@ -488,7 +487,7 @@ static ulong flash_get_size (flash_info_t *info, ulong base)
 	}
 
 	flash_write_cmd (info, 0, 0, info->cmd_reset);
-	return (info->size);
+	return info->size;
 }
 
 /* loop through the sectors from the highest address
@@ -563,7 +562,9 @@ static int write_buff (flash_info_t * info, const uchar * src, ulong addr, ulong
 		}
 		for (; (cnt == 0) && (i < info->portwidth); ++i, ++cp)
 			flash_add_byte (info, &cword, (*(uchar *) cp));
-		if ((rc = flash_write_cfiword (info, wp, cword)) != 0)
+
+		rc = flash_write_cfiword (info, wp, cword);
+		if (rc)
 			return rc;
 		wp = cp;
 	}
@@ -609,7 +610,7 @@ static int write_buff (flash_info_t * info, const uchar * src, ulong addr, ulong
 	}
 #endif /* CONFIG_CFI_BUFFER_WRITE */
 	if (cnt == 0) {
-		return (0);
+		return 0;
 	}
 
 	/*
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
