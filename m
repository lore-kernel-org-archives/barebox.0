Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9xKq-0005km-4r
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 12:06:57 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 3B686FF923D
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 14:14:34 +0200 (CEST)
Date: Fri, 7 Sep 2012 14:07:13 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907120713.GQ20330@game.jcrosoft.org>
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
Subject: [PATCH 00/11 v2] defaultenv-2: add bootp support
To: barebox@lists.infradead.org

HI,

	v2:

	 - add ifdown
	 - dhcp: switch to global var support
	 - add dhcp-barebox support to defaultenv-2

	this patch serie depends on the previous defaultenv-2-boot-sequence

please pull
The following changes since commit 5b9b40e603d03afe760f9249c2b38e99c3cade92:

  defaultenv-2: add boot sequence (2012-09-07 17:46:37 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/defaultenv-2-bootp

for you to fetch changes up to 30dcb11c5f70bf83e050f6f713ee9c47c9cc5c7b:

  defaultenv-2: add symbolic link support to boot/nfs (2012-09-07 20:03:00 +0800)

----------------------------------------------------------------
defaultenv-2: add bootp support

dhcp: add global var support

This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
and get the result via global.dhcp.xxx

dhcp: add retries limit support

boot: add bootp support to net (tftp)

boot: add nfs bootp support

Where the kernel and oftree as retrieved via nfs
support also the symlink file so we will mount the correct path to get the
file as nfs does not follow the link as it's done on tftp

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (11):
      defaultenv: enable glovalvar support
      defaultenv: switch hostname to global.hostname
      dhcp: switch to global var support
      dhcp: add copy_only_if_valid support
      dhcp: add retries limit support
      defaultenv-2: eth0 add default global.dhcp.vendor_id
      defaultenv-2/ip: add dhcp-barebox support
      defaultenv-2: add ifdown support
      defaultenv-2: boot/net add bootp support
      defaultenv-2: add net boot support with kernel and oftree via nfs
      defaultenv-2: add symbolic link support to boot/nfs

 arch/arm/boards/at91rm9200ek/env/config           |    2 +-
 arch/arm/boards/at91sam9260ek/env/config          |    4 ++--
 arch/arm/boards/at91sam9261ek/env/config          |    4 ++--
 arch/arm/boards/at91sam9263ek/env/config          |    2 +-
 arch/arm/boards/at91sam9m10g45ek/env/config       |    2 +-
 arch/arm/boards/at91sam9x5ek/env/config           |    2 +-
 arch/arm/boards/eukrea_cpuimx25/env/config        |   12 +++++------
 arch/arm/boards/eukrea_cpuimx35/env/config        |   12 +++++------
 arch/arm/boards/eukrea_cpuimx51/env/config        |   12 +++++------
 arch/arm/boards/freescale-mx28-evk/env/config     |   10 ++++-----
 arch/arm/boards/freescale-mx35-3-stack/env/config |   12 +++++------
 arch/arm/boards/freescale-mx53-loco/env/config    |   14 ++++++-------
 arch/arm/boards/freescale-mx53-smd/env/config     |   12 +++++------
 arch/arm/boards/friendlyarm-mini2440/env/config   |   12 +++++------
 arch/arm/boards/guf-cupid/env/config              |   12 +++++------
 arch/arm/boards/guf-neso/env/config               |   12 +++++------
 arch/arm/boards/karo-tx25/env/config              |   12 +++++------
 arch/arm/boards/karo-tx28/env/config              |   12 +++++------
 arch/arm/boards/panda/env/config                  |   10 ++++-----
 arch/arm/boards/pcm027/env/config                 |   12 +++++------
 arch/arm/boards/pcm037/env/config                 |   12 +++++------
 arch/arm/boards/pcm043/env/config                 |   12 +++++------
 arch/arm/boards/pcm049/env/config                 |   12 +++++------
 arch/arm/boards/phycard-a-l1/env/config           |   16 +++++++-------
 arch/arm/boards/phycard-a-xl2/env/config          |   12 +++++------
 arch/arm/boards/phycard-i.MX27/env/config         |   12 +++++------
 arch/arm/boards/qil-a9260/env/config              |    2 +-
 arch/arm/boards/scb9328/env/config                |   12 +++++------
 arch/arm/boards/tny-a926x/env/config              |    6 +++---
 arch/arm/boards/usb-a926x/env/config              |    6 +++---
 common/Kconfig                                    |    1 +
 defaultenv-2/base/bin/bootargs-ip                 |    2 ++
 defaultenv-2/base/bin/ifdown                      |   16 ++++++++++++++
 defaultenv-2/base/bin/ifup                        |    2 +-
 defaultenv-2/base/boot/net                        |   35 ++++++++++++++++++++++++++++++-
 defaultenv-2/base/boot/nfs                        |  133 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 defaultenv-2/base/network/eth0                    |    1 +
 defaultenv/bin/boot                               |   12 +++++------
 defaultenv/bin/init                               |    2 ++
 defaultenv/config                                 |   18 ++++++++--------
 net/dhcp.c                                        |  163 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------
 41 files changed, 486 insertions(+), 183 deletions(-)
 create mode 100644 defaultenv-2/base/bin/ifdown
 create mode 100644 defaultenv-2/base/boot/nfs

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
