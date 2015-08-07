Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNhst-00018r-Nm
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 13:40:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1ZNhsY-0000EE-8j
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:40:10 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1ZNhsY-0007N8-2R
 for barebox@lists.infradead.org; Fri, 07 Aug 2015 15:40:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Aug 2015 15:40:05 +0200
Message-Id: <1438954809-5962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: video: update imx-ipu-v3 and hdmi support
To: Barebox List <barebox@lists.infradead.org>

This makes the i.MX6 HDMI work with higher resolutions. Also we now
use writecombined memory for faster graphics.

----------------------------------------------------------------
Sascha Hauer (4):
      video: imx-hdmi: sync with kernel
      video: ipuv3: Adjust videomode to IPU limitations
      ARM: implement dma_alloc_writecombine
      video: imx-ipu-v3: Use writecombine memory for fb

 arch/arm/cpu/mmu.c                  |  20 ++
 drivers/video/imx-ipu-v3/imx-hdmi.c | 380 ++++++++++++++++++++++--------------
 drivers/video/imx-ipu-v3/imx-hdmi.h |   3 +-
 drivers/video/imx-ipu-v3/ipufb.c    |  32 ++-
 include/dma.h                       |   1 +
 5 files changed, 287 insertions(+), 149 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
