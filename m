Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFdun-0000AM-GH
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:49:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZFc2h-00084v-EW
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 07:49:11 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_RC4)
 (envelope-from <sha@pengutronix.de>) id 1ZFduR-0007hZ-Q4
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 09:48:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 09:48:44 +0200
Message-Id: <1437032926-25680-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2]: imx-image changes
To: Barebox List <barebox@lists.infradead.org>

This is the second version of the imx-image changes which keep the
padding for the HABv4 case this time.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      scripts: imx-image: Do not pad image
      scripts: imx-image: Make in-place capable

 scripts/imx/imx-image.c | 49 +++++++++++++++++++++++++------------------------
 1 file changed, 25 insertions(+), 24 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
