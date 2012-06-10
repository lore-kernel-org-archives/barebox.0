Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sdh18-0007WU-TJ
 for barebox@lists.infradead.org; Sun, 10 Jun 2012 12:13:15 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
Date: Sun, 10 Jun 2012 14:08:53 +0200
Message-ID: <m34nqjgyi2.fsf@intrepid.localdomain>
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
Subject: Is Intel/Marvell PXA really ARMv4?
To: barebox@lists.infradead.org

(Commit 36c47ce426cbe7aea59fab4c0218fe07cd80bdc0)

arch/arm/cpu/Kconfig:

+# Xscale PXA25x, PXA27x
+config CPU_XSCALE
+	bool
+	select CPU_32v4T
+

I think all XScale CPUs are (at least) ARM v5TE, aren't they?

StrongARM is/was v4.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
