Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggPW8-00015t-9K
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 07:40:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Jan 2019 08:39:59 +0100
Message-Id: <20190107074008.3797-1-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] net: Allow global.net.server being a hostname
To: Barebox List <barebox@lists.infradead.org>

So far global.net.server has been an IPv4 address. Add support for it
being a hostname which is resolved to an address when necessary. This
also adds the NFS server address to the nfsroot string passed to Linux
so that Linux can boot from servers other than the one specified in the
DHCP answer.

Sascha

Sascha Hauer (9):
  net: ip_route_get: Fix error message
  net: ip_route_get: Hook help text to command
  net: dns: leave host command with error on failure
  net: dns: Allow to set variable with the resolved host
  defaultenv: Pass serverip to nfsroot string
  net: Allow hostnames for global.net.server
  net: ip_route_get: resolv hostnames
  defaultenv: defaultenv uses ip_route_get
  defaultenv: resolve global.net.server before using it

 Documentation/user/networking.rst     |  4 ++--
 commands/ip-route-get.c               |  7 ++++---
 common/Kconfig                        |  2 ++
 defaultenv/defaultenv-2-base/boot/net |  8 +++++++-
 net/dns.c                             | 21 ++++++++++++++++-----
 net/eth.c                             |  4 ++--
 net/net.c                             | 19 ++++++++++++++-----
 7 files changed, 47 insertions(+), 18 deletions(-)

-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
