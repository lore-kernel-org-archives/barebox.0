Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout01.rmx.de ([94.199.90.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itu1U-0006lz-Jg
 for barebox@lists.infradead.org; Tue, 21 Jan 2020 13:56:57 +0000
Received: from kdin02.retarus.com (kdin02.dmz1.retloc [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout01.rmx.de (Postfix) with ESMTPS id 48297f48VMz2SVNN
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 14:56:46 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 48297d5dtxz2TTMK
 for <barebox@lists.infradead.org>; Tue, 21 Jan 2020 14:56:45 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Tue, 21 Jan 2020 14:56:35 +0100
Message-ID: <20200121135635.10170-1-ceggers@arri.de>
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
Subject: [PATCH] Partly revert "globalvar: fix crash if CONFIG_NVVAR is not
 set"
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

This partly reverts commit 804770590556be5c922c9fb7e779e72805911e57.

Checking for CONFIG_NVVAR is not required in nvvar_device_dispatch() as
nv_device is not used in this function (only the address is compared).

After fixing this, globalvar_simple_set() works again if CONFIG_NVVAR is
disabled.

Fixes: 8047705905 ("globalvar: fix crash if CONFIG_NVVAR is not set")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 common/globalvar.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 1bea7425d..cec0a9cc4 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -141,9 +141,6 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 	const char *dot;
 	int dotpos;
 
-	if (!IS_ENABLED(CONFIG_NVVAR))
-		return -ENOSYS;
-
 	*dev = NULL;
 
 	if (strncmp(name, "dev.", 4))
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
