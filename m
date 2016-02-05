Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aRi1X-00068h-Ao
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 15:10:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1aRi1A-0005Yl-HK
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 16:09:52 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <jbe@pengutronix.de>) id 1aRi1A-0004yC-A6
 for barebox@lists.infradead.org; Fri, 05 Feb 2016 16:09:52 +0100
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri,  5 Feb 2016 16:09:46 +0100
Message-Id: <1454684987-16961-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] nfs: forward filesystem options to the kernel command line
To: barebox@lists.infradead.org

This is v3 of this patch. v2 suffers from there is no real default port and
mountport number to check for. These portnumbers can be manually setup or will
be negotiated with the portmapper at the host's side. But we must honor these
special mount options only for the case where a user sets them up manually. By
using two new flags we can now be sure the portnumbers were set manually or
negotiated.

jb


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
