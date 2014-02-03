Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAL8r-0003XE-6S
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 15:08:57 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon,  3 Feb 2014 15:08:23 +0000
Message-Id: <1391440105-16959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/2] DA923RC: boot script and malloc size
To: barebox@lists.infradead.org

A boot script is added to autoboot the system and the malloc size is
increased in the configuration file to allow larger Linux debug images.

Renaud Barbier (2):
  DA923RC: add boot script
  DA923RC: increase malloc size

 arch/ppc/boards/geip-da923rc/env/bin/boot |    9 +++++++++
 arch/ppc/boards/geip-da923rc/env/bin/init |   10 ++++++++++
 arch/ppc/configs/da923rc_defconfig        |    2 +-
 3 files changed, 20 insertions(+), 1 deletions(-)
 create mode 100644 arch/ppc/boards/geip-da923rc/env/bin/boot


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
