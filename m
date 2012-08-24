Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4m3G-0007H1-1p
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 05:03:23 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 183C2DC05D3
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:08:18 +0200 (CEST)
Date: Fri, 24 Aug 2012 07:03:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120824050332.GK6271@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/7] defaultenv-2: add bootp support
To: barebox@lists.infradead.org

HI,

	this patch serie depends on the 2 previous fs-symlink and
	defaultenv-2-boot-sequence

please pull

wing changes since commit ae5c90abd8625d1f091a0a089ac29f886fb6c6f5:

  defaultenv-2: add boot sequence (2012-08-24 12:02:36 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/defaultenv-2-bootp

for you to fetch changes up to bc19b321f0cc42539eb573ae54edf8d93914e1ef:

  defaultenv-2: add symbolic link support to boot/nfs (2012-08-24 12:56:40 +0800)

----------------------------------------------------------------
defaultenv-2: add bootp support

dhcp: add global var support

This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
and get the result via global.dhcp.xxx

dhcp: add retries limit support

boot: add bootp support to net (tftp)

boot: add nfs bootp support

Where the kernel and oftree as retrieved via nfs
support also the symlink file so we will mount the correct path to get the
file as nfs does not follow the link as it's done on tftp

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      dhcp: add global var support
      dhcp: add alternative var support
      dhcp: add retries limit support
      defaultenv-2: eth0 add default global.dhcp.vendor_id
      defaultenv-2: boot/net add bootp support
      defaultenv-2: add net boot support with kernel and oftree via nfs
      defaultenv-2: add symbolic link support to boot/nfs

 defaultenv-2/base/boot/net     |   34 +++++++++++++++++++++++++++++++++-
 defaultenv-2/base/boot/nfs     |  123 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 defaultenv-2/base/network/eth0 |    1 +
 net/dhcp.c                     |  152 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 4 files changed, 305 insertions(+), 5 deletions(-)
 create mode 100644 defaultenv-2/base/boot/nfs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
