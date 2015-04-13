Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhdSd-0004mn-2k
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:27:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <mkl@pengutronix.de>) id 1YhdSG-0001hv-U2
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:27:08 +0200
Received: from mkl by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <mkl@pengutronix.de>) id 1YhdSG-0003EW-Sy
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:27:08 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 13 Apr 2015 14:27:00 +0200
Message-Id: <1428928023-13401-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 0/3] add habv4 support for i.MX6
To: barebox@lists.infradead.org

Hello,

this series adds support for HABv4 signed images. The last patch add code to
decode HAB events, which is usefull during development.

Tested on $CUSTOMER's i.MX6 solo.

Changes since v2:
- [PATCH v3 2/3] images: add HABv4 support for i.MX6:
  fix typos
  add missing depends on ARCH_IMX6
  renamed Makefile
  improved commentsin habv4-imx28.csf.in
- [PATCH v3 3/3] habv4: add High Assurance Boot v4:
  habv4_get_rvt(): make use of cpu_is_ rather than IS_ENABLED(CONFIG_ARCH_)
  provide static inline wrapper for habv4_get_status()

Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
