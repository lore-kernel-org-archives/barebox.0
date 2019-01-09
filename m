Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghKOy-0003oJ-Lj
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 20:24:38 +0000
Received: by mail-lf1-x12a.google.com with SMTP id n18so6644325lfh.6
 for <barebox@lists.infradead.org>; Wed, 09 Jan 2019 12:24:35 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  9 Jan 2019 23:24:24 +0300
Message-Id: <20190109202427.29535-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] drivers: fix "no previous prototype" warnings
To: barebox@lists.infradead.org

Antony Pavlov (3):
  w1: fix "no previous prototype for 'w1_found'" warning
  serial: amba-pl011: fix "no previous prototype for 'pl011_init_port'" warning
  net: ks8851_mll: fix "no previous prototype for 'ks_enable_qmu'" warning

 drivers/net/ks8851_mll.c    | 2 +-
 drivers/serial/amba-pl011.c | 2 +-
 drivers/w1/w1.c             | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
