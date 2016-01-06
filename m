Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGrT8-0000Gv-QT
 for barebox@lists.infradead.org; Wed, 06 Jan 2016 17:01:55 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  6 Jan 2016 18:01:28 +0100
Message-Id: <1452099691-28645-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 0/3] FIT Support
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

Hello,

taking over Jan's work. This is the current state of the FIT support patches,
which are used in production on a custom mx6 board. The FIT loading code has
basically been rewritten from scratch, as the original U-Boot code uses libfdt
and barebox's DT support works on an in-memory tree.

These patches apply on origin/next.
The two patches from Sascha are required for the basic RSA support.
The third patch adds FIT support.

Changes since v1:
- do_bootm_arm_fit(): remove NULL check in cleanup path
- Kconfig: add pointer to u-boot documentation
- fit_verify_signature(): make pr_info message more descriptive
- fit_verify_hash(): streamlined return values
- fit_open_image(): simplified description printing

regards,
Marc



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
