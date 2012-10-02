Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ2Bj-0002D3-Aq
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 13:07:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TJ2Be-0000Nt-Lt
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 15:06:58 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TJ2Be-0001ps-KA
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 15:06:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Oct 2012 15:06:55 +0200
Message-Id: <1349183217-19639-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] pbl updates
To: barebox@lists.infradead.org

Here are two updates for the MMU code in the decompressor. The first
one may come in handy when a JTAG debugger is connected. The second
one is more important. It actually makes turning on the MMU in the
decompressor useful by making map_cachable work. It turned out that
this didn't work leaving the whole mapping uncached.
Note that the code in current master should work, but slow. Since
it actually does work I do not want to put this into the upcoming
release.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      ARM pbl: Provide a dummy error function for the decompressor
      ARM pbl: actually create cached mappings in the decompressor

 arch/arm/cpu/start-pbl.c |   14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
