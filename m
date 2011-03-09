Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PxIEk-0003TA-61
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 12:11:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PxIEi-0003lS-1n
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 13:11:28 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PxIEh-0001CA-UB
	for barebox@lists.infradead.org; Wed, 09 Mar 2011 13:11:27 +0100
Date: Wed, 9 Mar 2011 13:11:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110309121127.GY29521@pengutronix.de>
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
Subject: Stable release v2011.03.1
To: barebox@lists.infradead.org

Hi all,

We have a stable release: v2011.03.1

Users of v2011.03.0 using the lzo command should upgrade to this
version. Also all armv7 users using the mmu should upgrade to this
version.

Sascha Hauer (3):
      ARM v7: Fix broken mmu initialization
      Revert "lib/decompress_unlzo: use fill and full to read and write data"
      release v2011.03.1

 Makefile                   |    2 +-
 arch/arm/cpu/cache-armv7.S |    1 -
 lib/decompress_unlzo.c     |  180 +++++++++++++++++++++----------------------
 3 files changed, 89 insertions(+), 94 deletions(-)
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
