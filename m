Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TssAK-0002gg-0D
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 09:41:44 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TssAI-0002hN-JX
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 10:41:42 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TssAI-0004Qv-IT
 for barebox@lists.infradead.org; Wed, 09 Jan 2013 10:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  9 Jan 2013 10:41:37 +0100
Message-Id: <1357724499-30451-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Add devicetree flatten support
To: barebox@lists.infradead.org

barebox has its own internal format for the devicetree. If we want to
start a kernel with this tree we have to convert it back to dtb. This
series adds support for it. This is purely for future work as no user
for this code is added currently.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      of: rename of_parse_dtb to of_unflatten_dtb
      of: Add support for converting the unflattened tree back to a dtb

 commands/oftree.c |    2 +-
 drivers/of/base.c |   63 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
 include/of.h      |    3 ++-
 3 files changed, 65 insertions(+), 3 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
