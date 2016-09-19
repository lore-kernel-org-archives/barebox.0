Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bm13a-0001Ss-LH
 for barebox@lists.infradead.org; Mon, 19 Sep 2016 16:04:35 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 19 Sep 2016 18:03:47 +0200
Message-Id: <1474301029-22877-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 0/2] Auto-append ip= option for NFS boot with appendrot
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>, Gavin Schenk <g.schenk@eckelmann.de>, Enrico Jorns <ejo@pengutronix.de>, u.kleine-koenig@pengutronix.de

This patches allow booting from nfs without the need to additionally provide an
extra ip= option, such as ip=dhcp to the kernel commandline.

This is solved by adding a bootargs property to the network device of the
connection used for the NFS boot and appending this to the nfs bootarg string.

Note that these patches are based on the 'vsprintf: Add support for printing
ipv4 addresses with %pI4' series posted by Sascha.

Enrico Jorns (2):
  net: add linux.bootarg parameter from ifup call
  fs: nfs: pick up network interface bootargs parameter

 fs/nfs.c      |  8 ++++++++
 include/net.h |  1 +
 net/eth.c     |  1 +
 net/ifup.c    | 10 ++++++++++
 4 files changed, 20 insertions(+)

-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
