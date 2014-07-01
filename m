Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X25DU-0002CJ-1l
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 21:03:52 +0000
Received: by mail-la0-f47.google.com with SMTP id s18so6258622lam.20
 for <barebox@lists.infradead.org>; Tue, 01 Jul 2014 14:03:29 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  2 Jul 2014 01:03:22 +0400
Message-Id: <1404248604-15368-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 0/2] net: add ENC28J60 support
To: barebox@lists.infradead.org

Changes since RFC v2:

  * drop netif_msg_*() debug level checking and packet dump;
  * invoke eth_register() before enc28j60_hw_init()
    so dev_dbg() in enc28j60_hw_init() works properly;
  * free allocated resources on errors in enc28j60_probe()


Antony Pavlov (2):
  net.h: add ETH_ALEN constant; fix whitespaces
  net: add ENC28J60 support

 drivers/net/Kconfig       |   14 +
 drivers/net/Makefile      |    1 +
 drivers/net/enc28j60.c    | 1012 +++++++++++++++++++++++++++++++++++++++++++++
 drivers/net/enc28j60_hw.h |  307 ++++++++++++++
 include/net.h             |    8 +-
 5 files changed, 1339 insertions(+), 3 deletions(-)
 create mode 100644 drivers/net/enc28j60.c
 create mode 100644 drivers/net/enc28j60_hw.h

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
