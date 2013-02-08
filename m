Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kES-00069B-4q
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 09:26:56 +0000
Received: from mail634.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D859510203B5
 for <barebox@lists.infradead.org>; Fri,  8 Feb 2013 10:37:16 +0100 (CET)
Date: Fri, 8 Feb 2013 10:25:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130208092544.GQ19322@game.jcrosoft.org>
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
Subject: [PATCH 0/1] sama5d3xek: add GEM Gigabig support
To: barebox@lists.infradead.org
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Hi,

	This add the missing Gigabit support on sama5d3xek

	This depend on
	phy/micrel: KSZ9021 diasable Asym Pause support
	and the pull for GEM support

The following changes since commit 639cf1e0940506e152c2543bde7690fb3e57ca2a:

  phy/micrel: KSZ9021 diasable Asym Pause support (2013-02-08 17:20:08 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/sama5d3xek

for you to fetch changes up to 38b362a2dc6f878340c9298dd5484e5e55c8f453:

  sama5de3k: add gmacb support (2013-02-08 17:20:44 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (1):
      sama5de3k: add gmacb support

 arch/arm/boards/sama5d3xek/init.c |   31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
