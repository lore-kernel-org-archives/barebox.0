Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzWhH-0003YS-4a
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 18:11:19 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A3B89FFA594
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 19:21:13 +0100 (CET)
Date: Sun, 27 Jan 2013 19:09:57 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130127180957.GO26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2] at91rm9200: sdram autodetect size
To: barebox@lists.infradead.org

HI,

	this patch serie apply over the sdram fix for rm9200ek

The following changes since commit cb3a2277eeee13483664ba811ce090aa31dd90d9:

  at91rm9200ek: fix mem size (2013-01-23 18:52:25 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/at91rm9200_autodetect_size

for you to fetch changes up to 613328146f761b95dc403e300424c70b50eac52c:

  at91rm9200ek: auto detect sdram size (2013-01-23 18:53:19 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      at91rm9200: add autodetect sdram size
      at91rm9200ek: auto detect sdram size

 arch/arm/boards/at91rm9200ek/init.c             |    2 +-
 arch/arm/mach-at91/at91rm9200_devices.c         |    3 +++
 arch/arm/mach-at91/include/mach/at91rm9200_mc.h |   30 ++++++++++++++++++++++++++++++
 3 files changed, 34 insertions(+), 1 deletion(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
