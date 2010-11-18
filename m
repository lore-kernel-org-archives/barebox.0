Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WE-0005aU-HV
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:19 +0000
Received: by fxm1 with SMTP id 1so1559330fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:17 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:27 +0100
Message-Id: <1290086971-5467-2-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 1/5] common: Add define for IOMEM helper macro.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

IOMEM helper macro is used for address casting which then
is used in read(bwl)/write(bwl) functions.

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 include/common.h |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/include/common.h b/include/common.h
index 394542f..a14bfc1 100644
--- a/include/common.h
+++ b/include/common.h
@@ -220,4 +220,6 @@ int memory_display(char *addr, ulong offs, ulong nbytes, int size);
 
 extern const char version_string[];
 
+#define IOMEM(addr)	((void __force __iomem *)(addr))
+
 #endif	/* __COMMON_H_ */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
