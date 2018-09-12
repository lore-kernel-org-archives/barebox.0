Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g0CFx-00021m-Pr
 for barebox@lists.infradead.org; Wed, 12 Sep 2018 21:01:04 +0000
Received: by mail-lj1-x22c.google.com with SMTP id v26-v6so2828350ljj.3
 for <barebox@lists.infradead.org>; Wed, 12 Sep 2018 14:00:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 13 Sep 2018 00:00:04 +0300
Message-Id: <20180912210006.28087-1-antonynpavlov@gmail.com>
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
Subject: [PATCH for master 0/2] MIPS and PCI-related fixes
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Antony Pavlov (2):
  MIPS: fix PCI quirk infrastructure build
  pci_of_match_device: don't crash on MIPS Malta

 arch/mips/lib/barebox.lds.S | 11 +++++++++++
 drivers/pci/pci.c           |  2 +-
 2 files changed, 12 insertions(+), 1 deletion(-)

-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
