Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprIm-00080Y-23
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:00:25 +0000
Received: by mail-lf0-x243.google.com with SMTP id r36so9302467lfi.0
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 00:00:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 09:59:51 +0300
Message-Id: <20170320065954.8330-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] fix "no previous prototype" warnings
To: barebox@lists.infradead.org

Antony Pavlov (3):
  gui: bmp.c: fix "no previous prototype" warning
  clk: clk-gate-shared: fix "no previous prototype" warning
  gui: image_renderer: fix "no previous prototype for
    'image_renderer_unregister'" warning

 drivers/clk/clk-gate-shared.c | 6 +++---
 include/gui/image_renderer.h  | 2 +-
 lib/gui/bmp.c                 | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
