Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0oaN-0007ym-9q
 for barebox@lists.infradead.org; Mon, 13 Aug 2012 06:57:12 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BBD5B1054AE6
 for <barebox@lists.infradead.org>; Mon, 13 Aug 2012 09:01:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 13 Aug 2012 08:57:11 +0200
Message-Id: <1344841034-10068-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120813065448.GM6271@game.jcrosoft.org>
References: <20120813065448.GM6271@game.jcrosoft.org>
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
Subject: [PATCH 1/4] arm/bootm: fix initrd_start init
To: barebox@lists.infradead.org

initrd_start need to be init to data->initrd_address and updated only if the
addr is invalid.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |    4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index a8840fe..c5b76ea 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -58,7 +58,9 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 
 	kernel = data->os_res->start + data->os_entry;
 
-	if (data->initrd_file && data->initrd_address == UIMAGE_INVALID_ADDRESS) {
+	initrd_start = data->initrd_address;
+
+	if (data->initrd_file && initrd_start == UIMAGE_INVALID_ADDRESS) {
 		initrd_start = data->os_res->start + SZ_8M;
 
 		if (bootm_verbose(data)) {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
