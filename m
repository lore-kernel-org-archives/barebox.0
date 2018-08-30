Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvKSQ-0000F9-L6
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 10:45:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Aug 2018 12:45:22 +0200
Message-Id: <20180830104527.4057-1-s.hauer@pengutronix.de>
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
Subject: TFTP improvements
To: Barebox List <barebox@lists.infradead.org>

This series contains some improvements for the TFTP support. The one
really important patch (and the reason I created this series) is 4/5.
Steffen made me aware that booting didn't work for him because his
boot script would always load a ramdisk image from tftp that is not
actually there. The reason was that we always claimed that a file is
present which was a concession to the lacking directory read support
on TFTP. We now actually test if a file is present before claiming
it is there.

Sascha

Sascha Hauer (5):
  fs: tftp: overhaul debugging
  fs: tftp: fix memory hole
  fs: tftp: fix return value
  fs: tftp: hide files which are actually not present on the server
  fs: tftp: improve file size handling

 fs/tftp.c | 97 +++++++++++++++++++++++++++++++++++++------------------
 1 file changed, 66 insertions(+), 31 deletions(-)

-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
