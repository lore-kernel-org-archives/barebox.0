Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGusK-0007lc-2F
 for barebox@lists.infradead.org; Sun, 19 Jul 2015 20:07:53 +0000
Received: by laem6 with SMTP id m6so86570379lae.0
 for <barebox@lists.infradead.org>; Sun, 19 Jul 2015 13:07:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 19 Jul 2015 23:07:07 +0300
Message-Id: <1437336443-8076-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC v2 00/16] barebox picotcp integration (2015.07.19)
To: barebox@lists.infradead.org

I have just published latest picotcp-enabled barebox.
Please see my 20150719.picotcp branch in my github barebox repo
(https://github.com/frantony/barebox/tree/20150719.picotcp).

This version is based on the latest barebox-next and picotcp v1.5.0
(there is also picotcp v1.5.1, but is has no interested
for barebox changes since v1.5.0).


Changes since 2015.07.15 (see http://lists.infradead.org/pipermail/barebox/2015-June/024174.html):

    * net: UDP API changed to satisfy the picotcp integration needs;
    * nfs, tftp and dns subsystems have no picotcp-related stuff anymore.
    * netconsole works on top of picotcp with no additional changes.


Here are some notes:

  1. just now tftp/nfs file transfer on top of picotcp is slower than
     the same transfer on top of legacy network stack;

  2. there is no $<current network interface> anymore,
     so dhcp, tftp and ifup commands don't work on top of picotcp.
     The ifconfig command is used for network interfaces setup.

     N.B. There is an old patch for dhcp support on top of picotcp
        https://github.com/frantony/barebox/commit/94021b6d7bb933cd50b7ea9e2c55725b5c404205

  3. The picoping command is used insted of traditional ping command.



Antony Pavlov (16):
  net_udp_bind(): use uint16_t type for source port
  fs/tftp.c: drop unused server_port variable
  fs/nfs.c: use uint16_t for port numbers
  fs/nfs.c: use SUNRPC_PORT remote port by default
  net: change UDP handler function API
  net: change net_udp_send() API
  net: introduce setudppeerport()
  net: import picotcp from github
  picotcp: add barebox target support
  picotcp: switch to Kbuild
  net: add initial picotcp support
  net: picotcp: add test_picotcp command
  net: picotcp: add ifconfig command
  net: picotcp: add ping command
  net: picotcp: add route command
  sandbox_defconfig: switch to picotcp

 Makefile                                    |    1 +
 arch/sandbox/configs/sandbox_defconfig      |    8 +-
 commands/Kconfig                            |    4 +
 fs/nfs.c                                    |   14 +-
 fs/tftp.c                                   |   30 +-
 include/net.h                               |   61 +-
 include/pico_defines.h                      |    0
 include/stdint.h                            |    1 +
 net/Kconfig                                 |   16 +
 net/Makefile                                |    8 +
 net/dhcp.c                                  |   12 +-
 net/dns.c                                   |    9 +-
 net/eth.c                                   |   71 +
 net/net.c                                   |   95 +-
 net/netconsole.c                            |    7 +-
 net/nfs.c                                   |    6 +-
 net/picotcp.c                               |   20 +
 net/picotcp/.gitignore                      |   25 +
 net/picotcp/COPYING                         |    8 +
 net/picotcp/Kconfig                         |   56 +
 net/picotcp/LICENSE                         |  339 ++++
 net/picotcp/Makefile                        |   30 +
 net/picotcp/README.md                       |   33 +
 net/picotcp/include/arch/pico_barebox.h     |   76 +
 net/picotcp/include/heap.h                  |   83 +
 net/picotcp/include/pico_addressing.h       |   52 +
 net/picotcp/include/pico_config.h           |  231 +++
 net/picotcp/include/pico_constants.h        |   54 +
 net/picotcp/include/pico_device.h           |   54 +
 net/picotcp/include/pico_eth.h              |   21 +
 net/picotcp/include/pico_frame.h            |  122 ++
 net/picotcp/include/pico_module_eth.h       |   33 +
 net/picotcp/include/pico_protocol.h         |   95 ++
 net/picotcp/include/pico_queue.h            |  166 ++
 net/picotcp/include/pico_socket.h           |  268 ++++
 net/picotcp/include/pico_socket_multicast.h |   10 +
 net/picotcp/include/pico_stack.h            |   87 ++
 net/picotcp/include/pico_tree.h             |   93 ++
 net/picotcp/modules/Makefile                |    8 +
 net/picotcp/modules/pico_aodv.h             |  131 ++
 net/picotcp/modules/pico_arp.c              |  531 +++++++
 net/picotcp/modules/pico_arp.h              |   32 +
 net/picotcp/modules/pico_dev_loop.c         |   66 +
 net/picotcp/modules/pico_dev_loop.h         |   15 +
 net/picotcp/modules/pico_dev_mock.h         |   47 +
 net/picotcp/modules/pico_dev_null.c         |   60 +
 net/picotcp/modules/pico_dev_null.h         |   15 +
 net/picotcp/modules/pico_dhcp_client.c      |  960 ++++++++++++
 net/picotcp/modules/pico_dhcp_client.h      |   30 +
 net/picotcp/modules/pico_dhcp_common.c      |  189 +++
 net/picotcp/modules/pico_dhcp_common.h      |  186 +++
 net/picotcp/modules/pico_dns_client.h       |   46 +
 net/picotcp/modules/pico_dns_common.h       |  521 +++++++
 net/picotcp/modules/pico_dns_sd.h           |   90 ++
 net/picotcp/modules/pico_fragments.c        |  345 +++++
 net/picotcp/modules/pico_fragments.h        |   11 +
 net/picotcp/modules/pico_icmp4.c            |  395 +++++
 net/picotcp/modules/pico_icmp4.h            |  162 ++
 net/picotcp/modules/pico_icmp6.h            |  259 ++++
 net/picotcp/modules/pico_igmp.h             |   26 +
 net/picotcp/modules/pico_ipfilter.h         |   29 +
 net/picotcp/modules/pico_ipv4.c             | 1574 +++++++++++++++++++
 net/picotcp/modules/pico_ipv4.h             |  124 ++
 net/picotcp/modules/pico_ipv6.h             |  153 ++
 net/picotcp/modules/pico_ipv6_nd.h          |   26 +
 net/picotcp/modules/pico_mm.h               |   98 ++
 net/picotcp/modules/pico_nat.h              |   90 ++
 net/picotcp/modules/pico_olsr.h             |   32 +
 net/picotcp/modules/pico_socket_tcp.h       |   33 +
 net/picotcp/modules/pico_socket_udp.c       |  250 +++
 net/picotcp/modules/pico_socket_udp.h       |   19 +
 net/picotcp/modules/pico_tcp.h              |  102 ++
 net/picotcp/modules/pico_udp.c              |  216 +++
 net/picotcp/modules/pico_udp.h              |   45 +
 net/picotcp/stack/Makefile                  |    7 +
 net/picotcp/stack/pico_device.c             |  408 +++++
 net/picotcp/stack/pico_frame.c              |  286 ++++
 net/picotcp/stack/pico_protocol.c           |  214 +++
 net/picotcp/stack/pico_socket.c             | 2213 +++++++++++++++++++++++++++
 net/picotcp/stack/pico_socket_multicast.c   |  956 ++++++++++++
 net/picotcp/stack/pico_stack.c              | 1157 ++++++++++++++
 net/picotcp/stack/pico_tree.c               |  575 +++++++
 net/picotcp_ifconfig.c                      |  116 ++
 net/picotcp_ping.c                          |   85 +
 net/picotcp_route.c                         |   36 +
 net/picotcp_test_ipv4.c                     |   96 ++
 86 files changed, 15306 insertions(+), 58 deletions(-)
 create mode 100644 include/pico_defines.h
 create mode 100644 include/stdint.h
 create mode 100644 net/picotcp.c
 create mode 100644 net/picotcp/.gitignore
 create mode 100644 net/picotcp/COPYING
 create mode 100644 net/picotcp/Kconfig
 create mode 100644 net/picotcp/LICENSE
 create mode 100644 net/picotcp/Makefile
 create mode 100644 net/picotcp/README.md
 create mode 100644 net/picotcp/include/arch/pico_barebox.h
 create mode 100644 net/picotcp/include/heap.h
 create mode 100644 net/picotcp/include/pico_addressing.h
 create mode 100644 net/picotcp/include/pico_config.h
 create mode 100644 net/picotcp/include/pico_constants.h
 create mode 100644 net/picotcp/include/pico_device.h
 create mode 100644 net/picotcp/include/pico_eth.h
 create mode 100644 net/picotcp/include/pico_frame.h
 create mode 100644 net/picotcp/include/pico_module_eth.h
 create mode 100644 net/picotcp/include/pico_protocol.h
 create mode 100644 net/picotcp/include/pico_queue.h
 create mode 100644 net/picotcp/include/pico_socket.h
 create mode 100644 net/picotcp/include/pico_socket_multicast.h
 create mode 100644 net/picotcp/include/pico_stack.h
 create mode 100644 net/picotcp/include/pico_tree.h
 create mode 100644 net/picotcp/modules/Makefile
 create mode 100644 net/picotcp/modules/pico_aodv.h
 create mode 100644 net/picotcp/modules/pico_arp.c
 create mode 100644 net/picotcp/modules/pico_arp.h
 create mode 100644 net/picotcp/modules/pico_dev_loop.c
 create mode 100644 net/picotcp/modules/pico_dev_loop.h
 create mode 100644 net/picotcp/modules/pico_dev_mock.h
 create mode 100644 net/picotcp/modules/pico_dev_null.c
 create mode 100644 net/picotcp/modules/pico_dev_null.h
 create mode 100644 net/picotcp/modules/pico_dhcp_client.c
 create mode 100644 net/picotcp/modules/pico_dhcp_client.h
 create mode 100644 net/picotcp/modules/pico_dhcp_common.c
 create mode 100644 net/picotcp/modules/pico_dhcp_common.h
 create mode 100644 net/picotcp/modules/pico_dns_client.h
 create mode 100644 net/picotcp/modules/pico_dns_common.h
 create mode 100644 net/picotcp/modules/pico_dns_sd.h
 create mode 100644 net/picotcp/modules/pico_fragments.c
 create mode 100644 net/picotcp/modules/pico_fragments.h
 create mode 100644 net/picotcp/modules/pico_icmp4.c
 create mode 100644 net/picotcp/modules/pico_icmp4.h
 create mode 100644 net/picotcp/modules/pico_icmp6.h
 create mode 100644 net/picotcp/modules/pico_igmp.h
 create mode 100644 net/picotcp/modules/pico_ipfilter.h
 create mode 100644 net/picotcp/modules/pico_ipv4.c
 create mode 100644 net/picotcp/modules/pico_ipv4.h
 create mode 100644 net/picotcp/modules/pico_ipv6.h
 create mode 100644 net/picotcp/modules/pico_ipv6_nd.h
 create mode 100644 net/picotcp/modules/pico_mm.h
 create mode 100644 net/picotcp/modules/pico_nat.h
 create mode 100644 net/picotcp/modules/pico_olsr.h
 create mode 100644 net/picotcp/modules/pico_socket_tcp.h
 create mode 100644 net/picotcp/modules/pico_socket_udp.c
 create mode 100644 net/picotcp/modules/pico_socket_udp.h
 create mode 100644 net/picotcp/modules/pico_tcp.h
 create mode 100644 net/picotcp/modules/pico_udp.c
 create mode 100644 net/picotcp/modules/pico_udp.h
 create mode 100644 net/picotcp/stack/Makefile
 create mode 100644 net/picotcp/stack/pico_device.c
 create mode 100644 net/picotcp/stack/pico_frame.c
 create mode 100644 net/picotcp/stack/pico_protocol.c
 create mode 100644 net/picotcp/stack/pico_socket.c
 create mode 100644 net/picotcp/stack/pico_socket_multicast.c
 create mode 100644 net/picotcp/stack/pico_stack.c
 create mode 100644 net/picotcp/stack/pico_tree.c
 create mode 100644 net/picotcp_ifconfig.c
 create mode 100644 net/picotcp_ping.c
 create mode 100644 net/picotcp_route.c
 create mode 100644 net/picotcp_test_ipv4.c

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
