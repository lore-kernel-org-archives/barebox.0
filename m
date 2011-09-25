Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006bx-Eb
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:26 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:03 +0200
Message-Id: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 00/11] improvements for net & disk booting
To: barebox@lists.infradead.org

This series starts with some patches from Marc to improve the default
environment regarding net-based booting and it adds disk-based booting as well
as a default config. Based on that, there are further patches from me, which
add the possibility to use a global serverip-variable in case the TFTP/NFS
server is not the same as the DHCP server. To make that more robust, sanity
checks are added related to the string_to_ip function.

Marc Kleine-Budde (7):
  defaultenv: simplify scripting
  defaultenv: boot: add backwards compatibility for kernel_loc=net
  defaultenv: boot: add eth0 to ip configuration
  defaultenv: boot: add serverip to static ip configuration
  defaultenv: boot: add support to boot from disk
  defaultenv: update: add support to update kernel on disk
  defaultenv: add config template

Wolfram Sang (4):
  net: string_to_ip: add sanity check for > 255
  net: getenv_ip: check return value of string_to_ip
  defaultenv: place eth0.ethaddr more visibly
  net: dhcp: introduce global serverip variable

 defaultenv/bin/_update_help |    2 +-
 defaultenv/bin/boot         |   17 ++++++++--
 defaultenv/bin/update       |   11 ++++--
 defaultenv/config           |   70 +++++++++++++++++++++++++++++++++++++++++++
 net/dhcp.c                  |    7 +++-
 net/net.c                   |    9 ++++--
 6 files changed, 103 insertions(+), 13 deletions(-)
 create mode 100644 defaultenv/config

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
