Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1bW6-0008Sn-ON
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 13:21:07 +0000
Received: from [69.196.158.250] (port=53631 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
 id 1X1bVk-00042I-5Z
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 09:20:44 -0400
Date: Mon, 30 Jun 2014 09:16:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.LFD.2.11.1406300914550.5509@localhost>
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
Subject: [PATCH] Makefile: Add missing closing quote for "make help"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  definitely prevents "make help" frum running.

diff --git a/Makefile b/Makefile
index 6dad637..a8e57ee 100644
--- a/Makefile
+++ b/Makefile
@@ -1076,7 +1076,7 @@ help:
 	@echo  '                    enough build support to build external modules'
 	@echo  '  mrproper	  - Remove all generated files + config + various backup files'
 	@echo  '  distclean	  - mrproper + remove editor backup and patch files'
-	@echo  '  docs            - build documentation
+	@echo  '  docs            - build documentation'
 	@echo  ''
 	@echo  'Configuration targets:'
 	@$(MAKE) -f $(srctree)/scripts/kconfig/Makefile help

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
