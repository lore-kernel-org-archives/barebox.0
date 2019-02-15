Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gud20-0000XB-UX
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:55:54 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Fri, 15 Feb 2019 13:53:40 +0100
Message-Id: <20190215125348.12851-1-ejo@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/8] Bootchooser Documentation Update
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

This is a collection of some documentation updates, fixes and
clarifications for the bootchooser framework.

Enrico Jorns (8):
  doc: bootchooser: fix typos etc.
  doc: bootchooser: explicitly note configuration vs. storage backend
  doc: bootchooser: be more explicit what bootchooser.state_prefix is
    for
  doc: bootchooser: be more explicit about attempts reset on successful
    boot
  doc: bootchooser: note how to actually start the bootchooser
  doc: bootchooser: be more explicit about when the bootchooser
    terminates
  doc: bootchooser: add details about bootchooser.reset_attempts
    handling
  doc: bootchooser: add retry handling to algorithm description

 Documentation/user/bootchooser.rst | 94 +++++++++++++++++++++++-------
 1 file changed, 72 insertions(+), 22 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
