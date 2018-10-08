Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9T1N-0007Gy-Fa
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 10:44:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1g9T1B-0003Pd-Rm
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 12:44:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1g9T1B-00045j-KE
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 12:44:05 +0200
Date: Mon, 8 Oct 2018 12:44:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181008104405.4mtow7gcui7vuplh@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: v2018.09.1
To: Barebox List <barebox@lists.infradead.org>

We have a stable update for the September release, v2018.09.1. Please
update to this one as it contains several fixes for the recently
introduced dentry cache support.

Sascha

----------------------------------------------------------------
Antony Pavlov (2):
      MIPS: fix PCI quirk infrastructure build
      pci_of_match_device: don't crash on MIPS Malta

Oleksij Rempel (1):
      ARM: i.MX28: Add APBH clk support

Sascha Hauer (8):
      fs: devfs: Create device files as character devices
      fs: devfs: fix r/w permissions
      ARM: Multi PBL: Fix image calculation for certain toolchains
      ARM: omap: xload: Fix network boot filename
      fs: open: Do not forget to set errno
      fs: stat: Do not forget to set errno
      fs: ubifs: Do not free memory not allocated by ubifs
      Release v2018.09.1

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
