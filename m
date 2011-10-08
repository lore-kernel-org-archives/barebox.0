Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYHe-0001Uc-Gv
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:53:52 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id EBE28DD2E0A
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:55:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:29:53 +0200
Message-Id: <1318084193-2648-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
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
Subject: [PATCH 5/5] defaultenv: add bootm_opt var to allow the board to pass
	parameter to bootm
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 652ae0c..6761d84 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -115,7 +115,7 @@ fi
 echo "booting kernel of type $kernelimage_type from $kdev"
 
 if [ x$kernelimage_type = xuimage ]; then
-	bootm $kdev
+	bootm $bootm_opt $kdev
 elif [ x$kernelimage_type = xzimage ]; then
 	bootz $kdev
 elif [ x$kernelimage_type = xraw ]; then
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
