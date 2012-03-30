Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo3.mail-out.ovh.net ([87.98.178.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDTfB-0003zE-Mi
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 04:42:14 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 33EDEFF8B89
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 06:42:39 +0200 (CEST)
Date: Fri, 30 Mar 2012 06:27:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120330042713.GX444@game.jcrosoft.org>
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
Subject: [PATCH 0/8] Network update DHCP/BOOTP
To: barebox@lists.infradead.org

HI,

	the following patch series update the network dhcp and bootp support
	to support options 66, 150, 61, 77, 97

	this will also help to add pxe boot support later

The following changes since commit 485cee59cf64b5019c5a294074007b93509b83e0:

  Merge branch 'work/imx51-babbage-clk' into next (2012-03-23 21:22:14 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git net

for you to fetch changes up to 2e991cac2e1444def3d27ec06fd10724fe3e19ba:

  defaultenv: add support of etherboot_file (2012-03-30 12:40:18 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      net: dhcp: reset env variable before do a dhcp request
      net: dhcp: add support of tftp name server
      net: dhcp: add support of tftp server ip or Etherboot file (option 150)
      net: dhcp: allow to set transmitted client id
      net: dhcp: allow to set transmitted client uuid
      net: dhcp: allow to set transmitted user class
      net: dns: export resolved ip to var resolved_ip
      defaultenv: add support of etherboot_file

 defaultenv/bin/boot |    4 ++
 net/dhcp.c          |  118 ++++++++++++++++++++++++++++++++++++++++++++-------
 net/dns.c           |    5 ++
 3 files changed, 111 insertions(+), 16 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
