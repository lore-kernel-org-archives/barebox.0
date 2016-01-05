Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMiG-00017J-Nm
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 08:11:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  5 Jan 2016 09:11:00 +0100
Message-Id: <1451981463-23604-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 0/3] FIT Support
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

regards,
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
