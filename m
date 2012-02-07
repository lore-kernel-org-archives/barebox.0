Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RusAp-0000sk-Lt
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 21:02:01 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RusAi-0007XG-SM
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:01:53 -0500
Date: Tue, 7 Feb 2012 16:01:44 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202071600020.402@oneiric>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Correct Kconfig comment for MCI_OMAP_HSMMC to include OMAP3.
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  based on patch described here:

http://lists.infradead.org/pipermail/barebox/2011-April/003396.html

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index 8279e5d..73efa66 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -69,8 +69,8 @@ config MCI_OMAP_HSMMC
 	bool "OMAP HSMMC"
 	depends on ARCH_OMAP4 || ARCH_OMAP3
 	help
-	  Enable this entry to add support to read and write SD cards on a
-	  OMAP4 based system.
+	  Enable this entry to add support to read and write SD cards on
+	  both OMAP3 and OMAP4 based systems.

 config MCI_PXA
 	bool "PXA"

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
