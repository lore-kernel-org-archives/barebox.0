Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bar.sig21.net ([80.81.252.164])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScIju-0006mP-9B
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 16:05:43 +0000
Received: from p5099b351.dip0.t-ipconnect.de ([80.153.179.81] helo=zzz.local)
 by bar.sig21.net with esmtpsa (TLS1.0:RSA_ARCFOUR_SHA1:16)
 (Exim 4.72) (envelope-from <js@sig21.net>) id 1ScIjN-00080P-RO
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:17 +0200
Received: from js by zzz.local with local (Exim 4.80)
 (envelope-from <js@sig21.net>) id 1ScIjN-000604-8v
 for barebox@lists.infradead.org; Wed, 06 Jun 2012 18:05:09 +0200
From: Johannes Stezenbach <js@sig21.net>
Date: Wed,  6 Jun 2012 18:04:55 +0200
Message-Id: <1338998700-23012-1-git-send-email-js@sig21.net>
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
Subject: [PATCH 0/5] minor SPI flash fixes
To: barebox@lists.infradead.org

Hi,

I'm playing around with barebox on an ARM926EJ-S based board
with SPI flash.  I found a few minor but annoying issues
with erase handling (I inadvertantly erased my boot loader).

Johannes


 drivers/nor/m25p80.c |    8 ++++++--
 fs/devfs.c           |    3 +++
 fs/fs.c              |   18 ++++++++----------
 3 files changed, 17 insertions(+), 12 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
