Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x233.google.com ([2a00:1450:4010:c04::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFT4S-0006Nc-3S
 for barebox@lists.infradead.org; Wed, 15 Jul 2015 20:14:24 +0000
Received: by lbbyj8 with SMTP id yj8so31749037lbb.0
 for <barebox@lists.infradead.org>; Wed, 15 Jul 2015 13:14:01 -0700 (PDT)
Received: from localhost.localdomain (ppp79-139-249-41.pppoe.spdop.ru.
 [79.139.249.41])
 by smtp.gmail.com with ESMTPSA id ao8sm531319lac.38.2015.07.15.13.14.00
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 Jul 2015 13:14:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 15 Jul 2015 23:13:38 +0300
Message-Id: <1436991230-14251-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 00/12] barebox picotcp integration (2015.07.15)
To: barebox@lists.infradead.org

I have just published latest picotcp-enabled barebox.
Please see my 20150715.picotcp branch in my github barebox repo
(https://github.com/frantony/barebox/tree/20150715.picotcp).

This version is based on the latest barebox-next and picotcp v1.5.0
(there is also picotcp v1.5.1, but is has no interested
for barebox changes since v1.5.0).

Changes since 2015.06.14 (see http://lists.infradead.org/pipermail/barebox/2015-June/023749.html):

  * drop picotcp tftp support;
    make it possible to use some barebox' network applications
    on top of picotcp udp packet ip:

      * use barebox' tftp support on top of picotcp;
      * use barebox' nfs support on top of picotcp;
      * use barebox' dns support on top of picotcp;

    Anyway new 'picoping' command uses picotcp ICMP support
    because it makes possible to realize traditional *NIX 'ping'
    program behaviour in barebox.

  * drop all unused picotcp files;

  * import picotcp dhcp stuff temporary skipped
    we can revive it in any moment but
    it's better to adapt barebox' dhcp implementation;

Here is note/todo list:

  1. with picotcp we can't easely use 'tftp' command with old syntax
     (no $<current network interface>.serverip anymore);

  2. just now picotcp-based tftp/nfs file transfer is slower than
     old realisation (partialy it is my bad, e.g. extra memory copy operation
     is used for code simplification); see Very Simple Benchmarks below for details;

  3. rework barebox dhcp, ifup and netconsole realization for working on top of picotcp.


Very Simple Benchmarks
======================

I have sandbox barebox (192.168.1.2) and nfs- and tftp- servers on the same host (192.168.1.1).
I copy 16MiB (16777216 bytes) file from server to sandbox barebox over network several times.
I use time command inside sandox barebox for computing transfer time.

barebox at barebox sandbox:/ eth0.ipaddr=192.168.1.2
barebox at barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
...
barebox at barebox sandbox:/ time cp /mnt/16M .
time: 546ms

Here is typical transfer time values:

+--------+--------------+--------------+
|        |   U-boot     |   picotcp    |
|        |    stack     |    stack     |
+--------+--------------+--------------+
|        |              |              |
|  tftp  |    546ms     |    859ms     |
|        |              |              |
+--------+--------------+--------------+
|        |              |              |
|  nfs   |   1037ms     |   1393ms     |
|        |              |              |
+--------+--------------+--------------+

There are some rather simple possibilities to slighly improve picotcp-barebox performance:

  * drop extra memory copy;
  * drop extra pico_tick() calls (is_timeout() calls poller_call(), so there is no need
                                  to call poller_call() explicitly in nfs/tftp code);
  * there is an issue with sustained tftp small file copy. E.g.

         barebox at barebox sandbox:/ ifconfig eth 192.168.1.2 255.255.255.0
         Assigned ipv4 192.168.1.2 to device eth
         barebox at barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
         barebox at barebox sandbox:/ while true; do time cp /mnt/1M . ; done
         ...
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 48ms
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 53ms
         Warning: I have 122 timers
         Warning: I have 121 timers
         time: 54ms


Antony Pavlov (12):
  picotcp: add barebox target support
  picotcp: switch to Kbuild
  net: add initial picotcp support
  WIP: fs/nfs.c: convert to picotcp
  WIP: fs/tftp.c: convert to picotcp
  WIP: net/dns: convert to picotcp
  net: picotcp: add test_picotcp command
  net: picotcp: add ifconfig command
  net: picotcp: add ping command
  net: picotcp: add route command
  sandbox_defconfig: switch to picotcp
  WIP: sandbox_defconfig: enable network testing-related stuff

 Makefile                                |   1 +
 arch/sandbox/configs/sandbox_defconfig  |  12 ++
 commands/Kconfig                        |   4 +
 fs/nfs.c                                | 150 +++++++++++++++++++++---
 fs/tftp.c                               | 199 ++++++++++++++++++++++++++++----
 include/net.h                           |   3 +
 include/pico_defines.h                  |   0
 include/stdint.h                        |   1 +
 net/Kconfig                             |  17 +++
 net/Makefile                            |   8 ++
 net/dns.c                               | 101 ++++++++++++++--
 net/eth.c                               |  71 ++++++++++++
 net/net.c                               |  10 ++
 net/picotcp.c                           |  20 ++++
 net/picotcp/.gitignore                  |   1 +
 net/picotcp/Kconfig                     |  56 +++++++++
 net/picotcp/Makefile                    |  30 +++++
 net/picotcp/include/arch/pico_barebox.h |  76 ++++++++++++
 net/picotcp/include/pico_config.h       |   2 +
 net/picotcp/modules/Makefile            |   8 ++
 net/picotcp/stack/Makefile              |   7 ++
 net/picotcp_ifconfig.c                  | 116 +++++++++++++++++++
 net/picotcp_ping.c                      |  85 ++++++++++++++
 net/picotcp_route.c                     |  37 ++++++
 net/picotcp_test_ipv4.c                 |  96 +++++++++++++++
 25 files changed, 1063 insertions(+), 48 deletions(-)
 create mode 100644 include/pico_defines.h
 create mode 100644 include/stdint.h
 create mode 100644 net/picotcp.c
 create mode 100644 net/picotcp/Kconfig
 create mode 100644 net/picotcp/Makefile
 create mode 100644 net/picotcp/include/arch/pico_barebox.h
 create mode 100644 net/picotcp/modules/Makefile
 create mode 100644 net/picotcp/stack/Makefile
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
