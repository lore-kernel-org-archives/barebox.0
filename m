Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrQ1A-0005B1-8R
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 08:54:00 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SrQ12-0003io-Ia
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 10:53:52 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 18 Jul 2012 10:53:29 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201207181053.29925.jbe@pengutronix.de>
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
Subject: Board's naming style
To: barebox@lists.infradead.org

Hi,

a look into "arch/arm/boards/" offers various boards starting with the 
vendor's name in their directory name (eukrea/freescale).
I would like to have the same for the FriendlyARM boards. Currently the 
Mini2440 and Tiny210 are part of the tree and I'm still working on the 
Mini6410 and Tiny6410 inclusion. Can we rename the currently existing 
Mini2440 and Tiny210 to friendlyarm-mini2440 and friendlyarm-tiny210?

@Sascha: Do you need a patch for this?

Regards,
Juergen

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
