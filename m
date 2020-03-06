Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAE6b-00023V-G5
 for barebox@lists.infradead.org; Fri, 06 Mar 2020 14:37:38 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri,  6 Mar 2020 15:37:30 +0100
Message-Id: <20200306143732.24239-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 0/2] Documentation: blspec: update documentation
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>

Hello,

These are two minor patches to update the documentation of blspec-entries. The
first patch updates the link to the specification and the second patch removed
the documentation of the devicetree-overlay key, which is now part of the
official spec.

Michael

Michael Tretter (2):
  Documentation: blspec: update link to Boot Loader Specification
  Documentation: blspec: drop documentation of devicetree-overlay

 Documentation/user/booting-linux.rst | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
