Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwJux-0006pj-Q3
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 01:09:44 +0000
Received: by lbblt2 with SMTP id lt2so8627044lbb.3
 for <barebox@lists.infradead.org>; Tue, 10 Nov 2015 17:09:21 -0800 (PST)
Received: from localhost.localdomain (ppp91-79-57-136.pppoe.mtu-net.ru.
 [91.79.57.136])
 by smtp.gmail.com with ESMTPSA id j11sm981248lbz.21.2015.11.10.17.09.20
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Nov 2015 17:09:21 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 11 Nov 2015 04:09:12 +0300
Message-Id: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS: ath79: skip pbl lowlevel init if running from RAM
To: barebox@lists.infradead.org

Antony Pavlov (2):
  MIPS: black-swift: skip pbl lowlevel init if running from RAM
  MIPS: tplink-mr3020: skip pbl lowlevel init if running from RAM

Oleksij Rempel (1):
  MIPS: pbl: add pbl_blt macro

 arch/mips/boards/black-swift/include/board/board_pbl_start.h |  3 +++
 .../boards/tplink-mr3020/include/board/board_pbl_start.h     |  3 +++
 arch/mips/include/asm/pbl_macros.h                           | 12 ++++++++++++
 3 files changed, 18 insertions(+)

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
