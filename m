Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dQuIe-0002ny-PE
 for barebox@lists.infradead.org; Fri, 30 Jun 2017 11:41:26 +0000
Received: by mail-lf0-x22b.google.com with SMTP id h22so68615615lfk.3
 for <barebox@lists.infradead.org>; Fri, 30 Jun 2017 04:41:03 -0700 (PDT)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Fri, 30 Jun 2017 14:42:56 +0300
Message-Id: <20170630114304.8070-1-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH 0/8] video: tc358767: fixes and improvements
To: barebox@lists.infradead.org
Cc: andrey.gusakov@cogentembedded.com, Chris.Healy@zii.aero

Hi Barebox,

This set of patches fixes several issues that was found during testing
tc358767 with several desktop DP displays.

Andrey Gusakov (8):
  video: tc358767: do not fail if sink supports more than 2 lanes
  video: tc358767: support newer DPCD revisions and higher data rates
  video: tc358767: fix EDID read for DP displays
  video: tc358767: fix DP0_MISC register set
  video: tc358767: fix timing calculation
  video: tc358767: fix AUXDATAn registers access
  video: tc358767: filter out modes with too high pixelclock
  video: tc358767: accept any hsync and vsync polatiry

 drivers/video/tc358767.c | 218 ++++++++++++++++++++++++++++++++++++++---------
 1 file changed, 179 insertions(+), 39 deletions(-)

-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
