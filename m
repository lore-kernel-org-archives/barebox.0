Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6E8r-0004Wc-AF
 for barebox@lists.infradead.org; Fri, 27 May 2016 09:33:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1b6E8T-00064K-R4
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <jbe@pengutronix.de>) id 1b6E8T-0002br-Hg
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 May 2016 11:32:47 +0200
Message-Id: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
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
Subject: Some fixes for MPC5200 platforms
To: barebox@lists.infradead.org

Barebox for MPC5200 (PCM030 board for example) is currently broken. Below
some fixes and improvemnts to make it boot/work again.

Comments are welcome.

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
