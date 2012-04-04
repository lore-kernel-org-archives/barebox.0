Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFShd-0000Pd-5Q
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 16:04:59 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Wed,  4 Apr 2012 18:04:38 +0200
Message-Id: <1333555484-32635-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 0/6] net: minor cleanups & avoid endless retries
To: barebox@lists.infradead.org

For scripted update scenarios, endless retries on commands like ping or tftp is
unwanted. Use a retry now and timeout. Apply minor cleanups found on the way.

Wolfram Sang (6):
  net: ping: send PING packets with 1-second interval
  net: ping: remove unneeded initialization
  net: tftp: check for error when retrying
  net: arp_request: do not retry endlessly
  net: tftp: do not retry endlessly
  net: ping: do not retry endlessly

 include/net.h |    2 ++
 net/net.c     |    5 +++++
 net/ping.c    |   12 ++++++++++--
 net/tftp.c    |   14 +++++++++++++-
 4 files changed, 30 insertions(+), 3 deletions(-)

-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
