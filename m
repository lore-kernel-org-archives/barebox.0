Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ys5nC-0004iS-Df
 for barebox@lists.infradead.org; Tue, 12 May 2015 08:43:58 +0000
Received: by layy10 with SMTP id y10so239502lay.0
 for <barebox@lists.infradead.org>; Tue, 12 May 2015 01:43:35 -0700 (PDT)
Received: from puro.NIISI (t35.niisi.ras.ru. [193.232.173.35])
 by mx.google.com with ESMTPSA id p6sm3627736laj.41.2015.05.12.01.43.29
 for <barebox@lists.infradead.org>
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 12 May 2015 01:43:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 11:45:04 +0300
Message-Id: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/2] MIPS: bcm47xx: trivial fixes
To: barebox@lists.infradead.org

Antony Pavlov (2):
  MIPS: bcm47xx: use PUTC_LL() from common debug_ll_ns16550.h header
  update dlink-dir-320_defconfig

 arch/mips/configs/dlink-dir-320_defconfig      |  3 +--
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h | 14 +++++---------
 2 files changed, 6 insertions(+), 11 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
