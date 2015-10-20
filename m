Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoSSE-0001CM-Rq
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 08:39:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <mkl@pengutronix.de>) id 1ZoSRt-0007Se-B2
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 10:39:13 +0200
Received: from mkl by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <mkl@pengutronix.de>) id 1ZoSRt-0008Ha-3B
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 10:39:13 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 20 Oct 2015 10:39:04 +0200
Message-Id: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 1/8] state framework enhancements
To: barebox@lists.infradead.org

Hello,

this series fixes some problems and enhances the state support in barebox.

Marc

changes since v1:
* 1+2: add of_find_path_by_phandle()
* 3: don't open code OF to device path conversion in state_probe use of_find_path_by_phandle() instead


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
