Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5KFG-0007g2-6B
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 20:47:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mkl@pengutronix.de>) id 1Z5KEi-0003ND-8I
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 22:47:04 +0200
Received: from mkl by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <mkl@pengutronix.de>) id 1Z5KEi-0001rV-0f
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 22:47:04 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 17 Jun 2015 22:46:59 +0200
Message-Id: <1434574023-20556-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 0/4] state: add support for fixed size strings
To: barebox@lists.infradead.org

Hello,

this series adds support for fixed size strings to the state framework.

Changes since v2:
- add patch 2/4: xstrndup
- as strings have a fixed length, which is given by the reg property,
  the need for the terminating 0 byte has been removed from the storage.

Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
