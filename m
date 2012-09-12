Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBo1G-00088W-CP
 for barebox@lists.infradead.org; Wed, 12 Sep 2012 14:34:24 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 52EB4FF9C59
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2012 16:35:54 +0200 (CEST)
Date: Wed, 12 Sep 2012 16:27:43 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120912142743.GR31207@game.jcrosoft.org>
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
Subject: [PATCH 0/7] dhcp: update to globalvar
To: barebox@lists.infradead.org

HI,

	this pull is a split of the bootp work as I may have not time to
	finish it those days

please pull
The following changes since commit 4271879e3b82e2e4d52a46f7c4ef01461a786b5e:

  fsl TSEC: register map boundary (2012-09-11 10:06:09 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/dhcp

for you to fetch changes up to 97d80440a8f8c992ebc2153cd27fa8e6c929cfcd:

  defaultenv-2: eth0 add default global.dhcp.vendor_id (2012-09-12 22:22:49 +0800)

----------------------------------------------------------------
dhcp: update to globalvar

So we can specify vendor_id, user_class, etc... in defaultenv-2

defaultenv: enable glovalvar support
This will allow to do not have 2 set of var for defaultenv and the new
defaultenv-2.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      globalbar: add inline when not enabled
      defaultenv: enable glovalvar support
      defaultenv: switch hostname to global.hostname
      dhcp: switch to global var support
      dhcp: add copy_only_if_valid support
      dhcp: add retries limit support
      defaultenv-2: eth0 add default global.dhcp.vendor_id

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
 defaultenv-2/base/network/eth0                    |    1 +
 defaultenv/bin/boot                               |   12 +++++------
 defaultenv/bin/init                               |    2 ++
 defaultenv/config                                 |   18 ++++++++--------
 include/globalvar.h                               |   20 ++++++++++++++++++
 net/dhcp.c                                        |  163 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---------------------
 37 files changed, 320 insertions(+), 181 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
