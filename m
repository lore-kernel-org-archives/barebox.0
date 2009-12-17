Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLBmb-0001UM-VL
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 08:32:26 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NLBm1-00084o-F1
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 09:31:49 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1NLBm1-00033k-Dz
	for barebox@lists.infradead.org; Thu, 17 Dec 2009 09:31:49 +0100
Date: Thu, 17 Dec 2009 09:31:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091217083149.GI15126@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Renaming done / new repository
To: barebox@lists.infradead.org

Hi All,

We now have a new, well we *have* a website:

http://www.barebox.org

Along with this the master git repository moved to:

git://git.pengutronix.de/git/barebox.git

From now on we'll do timed releases on a monthly base. I'll maintain two
branches on the git server. In the master branch I'll collect bugfixes
and this branch leads to the next release. All other patches are
collected in the next branch which I'll merge directly after a release.
This is not meant to be set in stone, but that's how I want to work for
now.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
