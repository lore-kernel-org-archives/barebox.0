Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfPwc-00081I-Bp
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 08:32:46 +0000
Received: by mail-lb0-f182.google.com with SMTP id l4so999143lbv.27
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 01:32:23 -0700 (PDT)
From: chf.fritz@googlemail.com
Date: Wed, 30 Apr 2014 10:32:00 +0200
Message-Id: <5360b516.c62a980a.05b6.526b@mx.google.com>
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
Subject: [PATCH 0/3] arm am335x cpsw and tftp fixes
To: barebox@lists.infradead.org

From: Christoph Fritz <chf.fritz@googlemail.com>

This series adds fixes for cpsw network driver and tftp client.

Christoph Fritz (3):
  tftp: add timeframe when remote server is retransmitting
  net cpsw: fix rx stability under heavy network load
  net cpsw: check phy status on send and receive

 drivers/net/cpsw.c |   31 ++++++++++++++++++++++++++++++-
 fs/tftp.c          |    8 +++++---
 2 files changed, 35 insertions(+), 4 deletions(-)

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
