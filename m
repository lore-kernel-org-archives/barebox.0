Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPe-0003nw-DE
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:27 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eKjPI-00054g-CB
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:23:00 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eKjPI-0007nS-13
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:23:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:29 +0100
Message-Id: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] Networking updates
To: Barebox List <barebox@lists.infradead.org>

This series solves some issues that have been nagging me for some
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

Changes since v1:
- incorporate Sams review comments for v1
- fix setting of ip= bootargs for network boot
- fix routing when a network device does not have an IP
- More Documentation updates
- Fix hardcoded usage of eth0 in defaultenv-2 network boot
- integrate Gavins linux devname patch

Sascha


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
