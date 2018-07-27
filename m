Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fizi0-0004JG-0I
 for barebox@lists.infradead.org; Fri, 27 Jul 2018 10:10:53 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1fizho-0007lc-Di
 for barebox@lists.infradead.org; Fri, 27 Jul 2018 12:10:40 +0200
Message-ID: <13cf048da64ff4e62e3cc53b7b971eacbd3a24e6.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 27 Jul 2018 12:10:40 +0200
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: stable release v2018.07.1
To: Barebox List <barebox@lists.infradead.org>

Hi all,

I've just released v2018.07.1 as a stable update to fix a MMU page
table setup issue that affected all ARM boards and led to sporadic
crashes. If you are running Barebox on ARM and are on the current
release, you are strongly advised to update.

Regards,
Lucas

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
