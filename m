Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SUBr7-0004eC-Gf
 for barebox@lists.infradead.org; Tue, 15 May 2012 07:07:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SUBr5-0004Ks-DS
 for barebox@lists.infradead.org; Tue, 15 May 2012 09:07:35 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SUBr5-0004fz-CH
 for barebox@lists.infradead.org; Tue, 15 May 2012 09:07:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 May 2012 09:07:32 +0200
Message-Id: <1337065654-17925-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Add magicvar description for flexible bootargs
To: barebox@lists.infradead.org

----------------------------------------------------------------
Sascha Hauer (2):
      magicvar: Add magicvar macro with additional name argument
      flexible bootargs: Add magicvar descriptions

 common/bootargs.c  |    4 ++++
 include/magicvar.h |    8 ++++++--
 2 files changed, 10 insertions(+), 2 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
