Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96c-0008JQ-1h
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eI96F-000498-Hl
 for barebox@lists.infradead.org; Fri, 24 Nov 2017 09:12:39 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eI96F-0004z2-7G
 for barebox@lists.infradead.org; Fri, 24 Nov 2017 09:12:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:16 +0100
Message-Id: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: Networking updates
To: Barebox List <barebox@lists.infradead.org>

s series solves some issues that have been nagging me for some
time now.

First of all the manual selection of the current ethernet device is
unnecessary since the interface can be picked by the networking code
automatically based on the IP settings of the interface. With this
series the "ethact" command is gone and users of boards with multiple
network interfaces no longer have to worry about picking the right
one.

Then the network device configuration can now be done with nvvars.
This makes it unnecessary to edit scripts on the device (which may
be cumbersome on some devices which lose characters on serial ports)
and it makes it also easier for scripts or setup code to modify
the network config.

Finally the DHCP code is cleaned up, primarily to be able to pass
in the network interface that shall be used, but also to make more
clear which variables are input and which are output.

For DHCP users the configuration is simple: It is the default. A static
IP setup can now be done with the variables:

nv.net.server
nv.net.nameserver
nv.net.gateway

and the network device specific variables (assuming "eth0" as network device):

nv.dev.eth0.ipaddr
nv.dev.eth0.netmask

(For those who are not already familiar with it: It's the normal way to store
device parameters in nvvars, like already possible for example with NAND
partitioning, i.e. nv.dev.nand0.partitions=4M(barebox),-(root), see
http://www.barebox.org/doc/latest/user/variables.html#non-volatile-device-variables)

As usual, all comments are welcome.

Sascha

----------------------------------------------------------------
Sascha Hauer (21):
      driver: Add device_detect_all() function
      nvvar: when setting a nvvar to NULL just free the content
      net: Make domainname and nameserver globalvars
      net: Add functions to get/set nameserver and domainname
      net: introduce global.net.server
      net: dhcp: Do not overwrite serverip if it is valid
      net: Use a single gateway
      net: allow udp connections on specified network device
      net: dhcp: Allow to specify network device
      net: dhcp: avoid unnecessary casts
      net: dhcp: Coding style fixes
      net: dhcp: rework
      net: Pick network device based on IP settings
      net: remove "current" network device
      net: ifup: Factor out a eth_discover function
      ifup: Use dhcp C API rather than running command
      net: Provide new way to configure network devices
      net: update network docs
      net: environment: remove ethx setup files
      net: environment: update automounts
      defaultenv: Add README for new network config

 Documentation/user/automount.rst                   |   2 +-
 Documentation/user/networking.rst                  |  99 +++-
 .../arm/boards/afi-gf/defaultenv-gf/init/automount |  10 -
 arch/arm/boards/afi-gf/defaultenv-gf/network/eth1  |  18 -
 .../defaultenv-pico-hobbit/init/automount          |  11 -
 .../defaultenv-pico-hobbit/network/eth1            |  18 -
 .../zii-imx6q-rdu2/defaultenv-rdu2/init/automount  |  17 -
 .../zii-imx6q-rdu2/defaultenv-rdu2/network/eth1    |  18 -
 commands/Makefile                                  |   1 -
 commands/detect.c                                  |   6 +-
 commands/dhcp.c                                    |  29 +-
 commands/net.c                                     |  66 ---
 common/globalvar.c                                 |   6 +-
 defaultenv/defaultenv-2-base/init/automount        |   4 +-
 defaultenv/defaultenv-2-base/network/README        |   3 +
 defaultenv/defaultenv-2-base/network/eth0          |  18 -
 drivers/base/driver.c                              |   8 +
 include/dhcp.h                                     |  24 +-
 include/driver.h                                   |   1 +
 include/net.h                                      |  27 +-
 net/dhcp.c                                         | 568 +++++++++------------
 net/dns.c                                          |  10 +-
 net/eth.c                                          |  39 +-
 net/ifup.c                                         | 252 ++++++---
 net/net.c                                          | 143 ++++--
 25 files changed, 692 insertions(+), 706 deletions(-)
 delete mode 100644 arch/arm/boards/afi-gf/defaultenv-gf/init/automount
 delete mode 100644 arch/arm/boards/afi-gf/defaultenv-gf/network/eth1
 delete mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
 delete mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/network/eth1
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth1
 delete mode 100644 commands/net.c
 create mode 100644 defaultenv/defaultenv-2-base/network/README
 delete mode 100644 defaultenv/defaultenv-2-base/network/eth0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
