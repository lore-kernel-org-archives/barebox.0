Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEiJG-0007pF-0H
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 14:32:43 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 85EC1FF9ECF
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 16:33:16 +0200 (CEST)
Date: Mon, 2 Apr 2012 16:17:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120402141700.GF8116@game.jcrosoft.org>
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
Subject: [PATCH 0/8 v3] Network update DHCP/BOOTP
To: barebox@lists.infradead.org

HI,

	the following patch series update the network dhcp and bootp support
	to support options 66, 61, 77, 97

	this will also help to add pxe boot support later

The following changes since commit c21492c293bcb97ac99f837489898582205cd168:

  AT91: at91sam9x5: add chip and board file (2012-04-02 10:31:23 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git net

for you to fetch changes up to f09107f16b01328138aed324b3e11c96b318369f:

  net: env: getenv_ip use resolv (2012-04-02 22:26:04 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (8):
      net: dhcp: factorise option recption handling
      net: dhcp: reset env variable before do a dhcp request
      net: dhcp: add support of tftp name server
      net: dhcp: factorise setting option code
      net: dhcp: allow to set transmitted client id
      net: dhcp: allow to set transmitted client uuid
      net: dhcp: allow to set transmitted user class
      net: env: getenv_ip use resolv

 include/net.h |    6 +-
 net/dhcp.c    |  451 +++++++++++++++++++++++++++++++++++++++++----------------
 net/dns.c     |    2 +-
 net/net.c     |    9 +-
 4 files changed, 340 insertions(+), 128 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
