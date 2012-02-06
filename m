Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RuVto-0006Ef-V5
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 21:14:57 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([99.241.91.63] helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
 id 1RuVtl-0006Dg-Hn
 for barebox@lists.infradead.org; Mon, 06 Feb 2012 16:14:53 -0500
Date: Mon, 6 Feb 2012 16:14:45 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1202061612300.17751@oneiric>
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
Subject: what is the purpose of config option HAS_OMAP_NAND?
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  based on the output from grep:

$ grep -r HAS_OMAP_NAND *
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:	select HAS_OMAP_NAND
arch/arm/mach-omap/Kconfig:config HAS_OMAP_NAND
arch/arm/configs/phycard_a_l1_defconfig:CONFIG_HAS_OMAP_NAND=y
$

i'm not sure of the purpose of that Kconfig option.  if nothing in the
source tree tests it, what value does it have?  the definition of that
option is simply:

config HAS_OMAP_NAND
        bool

am i missing something subtle?

rday

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
