Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wdb1V-0002LL-Dy
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 07:58:17 +0000
Received: by mail-la0-f51.google.com with SMTP id pv20so2773433lab.24
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 00:57:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 25 Apr 2014 11:57:45 +0400
Message-Id: <1398412667-18820-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] clk: fixed-factor: add DT init function
To: barebox@lists.infradead.org

This short patchseries imports DT init function for fixed-factor clocks
from linux kernel.

Antony Pavlov (2):
  clk: move of_clk_get_parent_name() to common clk code
  clk: fixed-factor: add DT init function

 drivers/clk/clk-fixed-factor.c | 36 ++++++++++++++++++++++++++++++++++++
 drivers/clk/clk.c              | 20 ++++++++++++++++++++
 drivers/clk/socfpga.c          | 19 -------------------
 include/linux/clk.h            |  1 +
 4 files changed, 57 insertions(+), 19 deletions(-)

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
