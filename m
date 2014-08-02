Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDS6k-0003fe-Pi
 for barebox@lists.infradead.org; Sat, 02 Aug 2014 05:43:55 +0000
Received: by mail-lb0-f173.google.com with SMTP id p9so3857460lbv.32
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 22:43:30 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  2 Aug 2014 09:43:20 +0400
Message-Id: <1406958203-11984-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS: add support for metadata in pbl-enabled barebox
 images
To: barebox@lists.infradead.org

This patch series make it possible to use metadata
in big-endian qemu-malta barebox images.

The first patch fixes up metadata for big-endian targets.

Antony Pavlov (3):
  fixup! Add support for metadata in barebox images
  MIPS: add support for metadata in barebox images
  MIPS: qemu-malta_defconfig: enable metadata in barebox image (IMD)

 arch/mips/configs/qemu-malta_defconfig | 1 +
 arch/mips/lib/barebox.lds.S            | 2 ++
 arch/mips/pbl/zbarebox.lds.S           | 2 ++
 common/imd-barebox.c                   | 4 ++--
 4 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
