Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tm2d7-0005gT-PG
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 13:27:15 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 0E787FF973D
 for <barebox@lists.infradead.org>; Fri, 21 Dec 2012 14:39:32 +0100 (CET)
Date: Fri, 21 Dec 2012 14:25:30 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121221132530.GB3406@game.jcrosoft.org>
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
Subject: [PATCH 0/2 v2] gpiolib: add request and free support
To: barebox@lists.infradead.org

HI,

	v2:
	introduce gpio_ensure_requested

	This allow to trac which gpio is used for what
	and allow drivers to have custom request and free

	as example on at91 mux the pin as gpio on request

The following changes since commit b46b57f35a27090cfbac4900d1a3d522d7898e53:

  MFD MC34708: Add dependence on SPI (2012-12-21 12:18:08 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/gpiolib

for you to fetch changes up to 56685f7f8f617724c320013a4ca4946b92b00f67:

  gpiolib: add command to dump the current gpio status (2012-12-21 21:10:25 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      gpiolib: add gpio_request and gpio_free support
      gpiolib: add command to dump the current gpio status

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
