Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTtHF-0001Z3-CP
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 11:49:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TTtHC-0001pm-Bw
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 12:49:34 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TTtHC-0004hE-Av
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 12:49:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 12:49:31 +0100
Message-Id: <1351770573-30009-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fix devicetree alignment
To: barebox@lists.infradead.org

The following fixes a nasty problem with passing devicetrees to
the (ARM-) Kernel. In short, we are not allowed to cross 1MiB
boundaries with the devicetree. This can happen sometimes since
we allocate space for the devicetree using memalign(). I think
this is rather a kernel bug since this restriction is not documented
anywhere. Anyway, working around it in barebox is easy enough.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      bootm: Add a define for the additional devicetree size
      bootm: Do not cross 1MiB sections for the devicetree

 commands/bootm.c |   19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
