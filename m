Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUaA6-0004pu-DZ
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 10:09:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-0004sP-6U
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1UUaA2-00029r-5R
 for barebox@lists.infradead.org; Tue, 23 Apr 2013 12:09:18 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 23 Apr 2013 12:09:10 +0200
Message-Id: <1366711752-25176-1-git-send-email-jbe@pengutronix.de>
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
Subject: Make Chumby work again with its SD card
To: barebox@lists.infradead.org

Due to a missing resource size the Chumby isn't able to work with its SD card
anymore. Instead it hangs forever. By using the generic block reset routine I
was able to discover the cause. The following two patches makes the Chumby
work again. At least the resource size patch should be applied to the current
master.

jbe


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
