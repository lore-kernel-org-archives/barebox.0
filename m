Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVqVT-0005rZ-L5
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 21:48:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UVqVR-0006Fg-HK
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 23:48:37 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UVqVR-00066Y-GB
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 23:48:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Apr 2013 23:48:34 +0200
Message-Id: <1367012916-22780-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366977055.331524144@f355.mail.ru>
References: <1366977055.331524144@f355.mail.ru>
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
Subject: [PATCH] Fix ccxmx51 SDRAM size detection
To: barebox@lists.infradead.org

Hi Alexander,

The following hopefully fixes your boards. I'm not that happy with
the solution, but I can't think of something better.

Sorry for the inconvenience.

Sascha


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
