Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuBaL-0000wC-G2
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 23:33:30 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuBaH-0001M2-3B
 for barebox@lists.infradead.org; Sun, 05 Feb 2012 18:33:25 -0500
Date: Sun, 5 Feb 2012 18:33:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202051831540.23951@oneiric>
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
Subject: [PATCH] Typo fix in Kconfig file: "Invlidate" -> "Invalidate"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index b600179..4c0ee58 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -113,7 +113,7 @@ config CMD_ARM_CPUINFO
 	  information about the cp15 registers

 config CPU_V7_DCACHE_SKIP
-	bool "Skip DCache Invlidate"
+	bool "Skip DCache Invalidate"
 	depends on CPU_V7
 	default n
 	help

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
