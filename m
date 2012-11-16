Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZRRL-00072W-K9
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 19:19:00 +0000
Received: from cpebcc8100fb8db-cmbcc8100fb8d8.cpe.net.cable.rogers.com
 ([174.116.196.46]:51101 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1TZRRI-0002fw-SR
 for barebox@lists.infradead.org; Fri, 16 Nov 2012 14:18:56 -0500
Date: Fri, 16 Nov 2012 14:18:54 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <alpine.DEB.2.02.1211161416260.30355@oneiric>
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
Subject: after "git pull", building for beagle complains about missing "lzop"
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>


  after i "git pull"ed all the recent updates and tried to rebuild
from scratch for my beagle xm, the barebox build failed with:

  OBJCOPY barebox.bin
  LDS     arch/arm/pbl/zbarebox.lds
  LZO     arch/arm/pbl/piggy.lzo
/bin/sh: lzop: command not found
make[2]: *** [arch/arm/pbl/piggy.lzo] Error 1
make[1]: *** [zbarebox.bin] Error 2
make: *** [_all] Error 2
$

  i've never had "lzop" installed on this system before and never had
a complaint, so i'm assuming something about the default config has
changed that suddenly requires lzop, is that correct?

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
