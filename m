Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vm5xB-0008Ul-Ga
 for barebox@lists.infradead.org; Thu, 28 Nov 2013 18:04:42 +0000
Received: from mail427.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B71E6FFA6F8
 for <barebox@lists.infradead.org>; Thu, 28 Nov 2013 19:04:19 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 28 Nov 2013 19:06:42 +0100
Message-Id: <1385662007-13057-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20131128180526.GA27628@ns203013.ovh.net>
References: <20131128180526.GA27628@ns203013.ovh.net>
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
Subject: [PATCH 1/6] arm: gen-mach-types: add MAX_MACH_TYPE
To: barebox@lists.infradead.org

this will be usefull to check that we set a valid machine id

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/tools/gen-mach-types | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/tools/gen-mach-types b/arch/arm/tools/gen-mach-types
index 04fef71..fd771aa 100644
--- a/arch/arm/tools/gen-mach-types
+++ b/arch/arm/tools/gen-mach-types
@@ -34,9 +34,15 @@ END	{
 	  printf("#endif\n\n");
 
 	  printf("/* see arch/arm/kernel/arch.c for a description of these */\n");
+	  max_mach_type = 0
 	  for (i = 0; i < nr; i++)
-	    if (num[i] ~ /..*/)
+	    if (num[i] ~ /..*/) {
 	      printf("#define %-30s %d\n", mach_type[i], num[i]);
+	      if (num[i] > max_mach_type)
+	        max_mach_type = num[i]
+	    }
+
+	      printf("#define MAX_MACH_TYPE %d\n", max_mach_type);
 
 	  printf("\n");
 
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
