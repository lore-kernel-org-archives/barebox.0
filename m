Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([185.7.73.95])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHqvp-0007v5-4a
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 16:02:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 700AD32D2EA
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 16:02:15 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KF2PTWST
 for barebox@lists.infradead.org;
 Mon, 14 Sep 2020 16:02:15 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 2E58032D2E9
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 16:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id B62A327E0AF1
 for <barebox@lists.infradead.org>; Mon, 14 Sep 2020 18:02:14 +0200 (CEST)
From: Yann Sionneau <ysionneau@kalray.eu>
Date: Mon, 14 Sep 2020 18:02:08 +0200
Message-Id: <20200914160208.14747-1-ysionneau@kalray.eu>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: 4a5bc850-9785-0db5-350a-7ae6d5b22cd6@pengutronix.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci: fix wrong sd/mmc/emmc card size computation for arch
 where char is signed
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalray.eu>

char type can be either signed or unsigned according to C standard.
If your arch has signed char, this kind of computation will end up wrong
because of sign extension:

https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/mci-core.c#n869

mci->capacity = mci->ext_csd[EXT_CSD_SEC_COUNT] << 0 |
		mci->ext_csd[EXT_CSD_SEC_COUNT + 1] << 8 |
		mci->ext_csd[EXT_CSD_SEC_COUNT + 2] << 16 |
		mci->ext_csd[EXT_CSD_SEC_COUNT + 3] << 24;

Turning the ext_csd field into u8 * fixes the issue.

Signed-off-by: Yann Sionneau <ysionneau@kalray.eu>
---
 include/mci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 96547fb39..f6d845440 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -456,7 +456,7 @@ struct mci {
 	uint64_t capacity;	/**< Card's data capacity in bytes */
 	int ready_for_use;	/** true if already probed */
 	int dsr_imp;		/**< DSR implementation state from CSD */
-	char *ext_csd;
+	u8 *ext_csd;
 	int probe;
 	struct param_d *param_boot;
 	int bootpart;
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
