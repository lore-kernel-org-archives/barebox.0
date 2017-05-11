Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k84-000479-TT
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:11:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d8k7i-00034U-Ri
 for barebox@lists.infradead.org; Thu, 11 May 2017 11:11:02 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1d8k7i-0001Vi-JL
 for barebox@lists.infradead.org; Thu, 11 May 2017 11:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 11:10:57 +0200
Message-Id: <20170511091101.5821-1-s.hauer@pengutronix.de>
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
Subject: Implement symlinks to directories
To: Barebox List <barebox@lists.infradead.org>

So far we only supported links to files. With this series we can
also support links to directories.

I tested all kinds of different things like:

- links to directories
- links to files
- relative links
- absolute links
- 'cd'ing to links
- links with '..' in them
- links to links

So far it works fine, but I would be surprised if there were no surprises
left in this series, so please review and test.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      errno: Include string for ELOOP
      fs: drop path_check_prereq()
      fs: Implement links to directories
      ls: Fix showing links to directories

 commands/ls.c       |  26 ++--
 commands/readlink.c |   2 +-
 common/misc.c       |   1 +
 fs/fs.c             | 385 +++++++++++++++++++++++++++-------------------------
 include/fs.h        |   3 +-
 5 files changed, 222 insertions(+), 195 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
