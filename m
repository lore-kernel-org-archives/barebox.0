Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQRV-0003kx-Mh
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:28:42 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SJQRM-0003hB-2P
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:28:32 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SJQRM-0006sb-1S
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:28:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:28:23 +0200
Message-Id: <1334500111-26382-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2] dns work
To: barebox@lists.infradead.org

The following patches make the dns more universally usable. The
dns code relies on the nameserver and domainname environment variables
being set. The dhcp command correctly sets these variables, but when we
call it from within a script, the variables won't be available from the
parent context. This is solved by adding a 'net' device which only purpose
is to store the nameserver and domainname.
Also, tftpfs can now work with hostnames instead of only ip addresses.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      net dns: remove debug code
      net: use static string in string_to_ip
      device: make singular devices possible
      net: register a 'net' device to store network specific variables
      dhcp: set global nameserver/domainname
      dns: use global nameserver/domainname
      fs tftp: use resolv to resolv ip address
      net: remove unused getenv_ip_dns

 drivers/base/driver.c |    7 +++++--
 fs/tftp.c             |    2 +-
 include/driver.h      |    5 +++++
 include/net.h         |    8 ++------
 lib/parameter.c       |    6 +-----
 net/dhcp.c            |    6 ++----
 net/dns.c             |    8 ++++----
 net/net.c             |   28 ++++++++++++++++------------
 net/tftp.c            |    3 +--
 9 files changed, 37 insertions(+), 36 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
