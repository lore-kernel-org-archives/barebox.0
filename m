Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ZFT4g-0003Wp-Gm
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:39 +0000
Received: by lbbpo10 with SMTP id po10so31617373lbb.3
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:15 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.14
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:49 +0300
Message-Id: <1436991230-14251-12-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
References: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 11/12] sandbox_defconfig: switch to picotcp
To: barebox@lists.infradead.org

Picotcp sandbox barebox howto
=============================

Compile sandbox barebox:

  $ cd barebox.git
  $ unset ARCH
  $ unset CROSS_COMPILE
  $ make sandbox_defconfig
  ...
  $ make

Run barebox:

  $ su
  # ./barebox

Testing ping
------------

While sandbox barebox is running setup a IP-address
for your host 'barebox' network interface, e.g.:

  # ifconfig barebox 192.168.1.1

Next, in sandbox barebox console setup network interface
and try to ping host:

  barebox:/ ifconfig eth 192.168.1.2 255.255.255.0
  Assigned ipv4 192.168.1.2 to device eth
  barebox:/ picoping 192.168.1.1
  48 bytes from 192.168.1.1: icmp_req=1 ttl=64 time=1 ms
  ...
  48 bytes from 192.168.1.1: icmp_req=10 ttl=64 time=0 ms

Testing domain name resolving
-----------------------------

Install simple maradns name server on the host.

Edit /etc/maradns/mararc config file, add these lines:

  csv2 = {}
  csv2["example.com."] = "db.example.com"

  bind_address = "192.168.1.1"

Edit /etc/maradns/db.example.com, add these lines:

  example.com. 192.168.1.1 ~
  www.example.com. 192.168.1.1 ~
  barebox.example.com. 192.168.1.2 ~

Run sandbox barebox and setup the www.example.com IP-address
for your host 'barebox' network interface, e.g.:

  # ifconfig barebox 192.168.1.1

Restart maradns:

  $ /etc/init.d/maradns restart

Check name resolution:

  barebox@barebox sandbox:/ ifconfig eth 192.168.1.2 255.255.255.0
  Assigned ipv4 192.168.1.2 to device eth
  barebox@barebox sandbox:/ net.nameserver=192.168.1.1
  barebox@barebox sandbox:/ host barebox.example.com
  barebox.example.com is at 192.168.1.2
  barebox@barebox sandbox:/ host www.example.com
  www.example.com is at 192.168.1.1

The same checks for barebox legacy network stack:

  barebox@barebox sandbox:/ eth0.ipaddr=192.168.1.2
  barebox@barebox sandbox:/ eth0.serverip=192.168.1.1
  barebox@barebox sandbox:/ net.domainname=example.com
  barebox@barebox sandbox:/ net.nameserver=192.168.1.1
  barebox@barebox sandbox:/ host barebox.example.com
  warning: No MAC address set. Using random address 9a:a1:86:31:05:1e
  barebox.example.com is at 192.168.1.2
  barebox@barebox sandbox:/ host www.example.com
  www.example.com is at 192.168.1.1

Testing dhcp (ad memorandum)
----------------------------

Configure your host dhcp server, e.g. add this
to your /etc/dhcp/dhcpd.conf:

  subnet 192.168.1.0 netmask 255.255.255.0 {
    range dynamic-bootp 192.168.1.26 192.168.1.29;
    option routers 192.168.1.1;
    option broadcast-address 192.168.1.255;
    default-lease-time 600;
    max-lease-time 7200;
  }

While sandbox barebox is running setup a IP-address
for your host 'barebox' network interface and restart
your host dhcp server, e.g.:

  # ifconfig barebox 192.168.1.1
  # /etc/init.d/isc-dhcp-server restart

Next, in your sandbox barebox console run 'dhclient':

  barebox:/ dhclient eth
  Assigned ipv4 0.0.0.0 to device eth
  Assigned ipv4 192.168.1.26 to device eth
  DHCP client: renewal time (T1) 300
  DHCP client: rebinding time (T2) 525
  DHCP client: lease time 496
  DHCP client: IP assigned by the server: 192.168.1.26

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/sandbox/configs/sandbox_defconfig | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index ec045f7..909969a 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -31,6 +31,13 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
+CONFIG_NET_PICOTCP=y
+CONFIG_NET_NFS=y
+CONFIG_NET_RESOLV=y
+CONFIG_CMD_PICOTCP_TEST_IPV4=y
+CONFIG_CMD_PICOTCP_IFCONFIG=y
+CONFIG_CMD_PICOTCP_PING=y
+CONFIG_CMD_PICOTCP_ROUTE=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_NET_TAP=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
