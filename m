Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4UhL-0006E5-1Q
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:45:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mkl@pengutronix.de>) id 1Z4Ugy-00075i-Uk
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 15:44:48 +0200
Received: from mkl by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <mkl@pengutronix.de>) id 1Z4Ugy-0004Q8-LL
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 15:44:48 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:44:45 +0200
Message-Id: <1434375887-16733-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/2] state: add support for fixed size strings
To: barebox@lists.infradead.org

Hello,

this series adds support for fixed size strings to the state framework. It
depends on the previous sent "state: Documentation updates" series.

regards,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
