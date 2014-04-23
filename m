Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WctLQ-0003g1-4W
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 09:19:56 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1WctL1-00023U-O5
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:31 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <jbe@pengutronix.de>) id 1WctL3-0001ZO-02
 for barebox@lists.infradead.org; Wed, 23 Apr 2014 11:19:32 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 23 Apr 2014 11:19:23 +0200
Message-Id: <1398244766-5843-1-git-send-email-jbe@pengutronix.de>
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
Subject: Fix some ifup related network issues
To: barebox@lists.infradead.org

Patch 3 of 3 is more an RFC. Because we have a generic issue inside the hush.
Anybody here who is able to fix the hush?

Juergen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
