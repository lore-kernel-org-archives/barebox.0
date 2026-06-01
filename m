Delivery-date: Mon, 01 Jun 2026 14:31:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nl-001EDl-2S
	for lore@lore.pengutronix.de;
	Mon, 01 Jun 2026 14:31:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wU1nl-0006We-3P
	for lore@pengutronix.de; Mon, 01 Jun 2026 14:31:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EAXtCV52/ZIX++xoU6hDULoxK9LeOeFjGGhuru/MjC4=; b=WPwotzzNSzdykDrJS3c1BRYmvi
	3XmvjyA8jOv67DEUsE0InoeYP4hLMiheiY2XDWZp36XSmCZ+DBqyfmKdsWfGP1Bs3ghJY8smgh/6U
	VRPYH7ZRKiOQxD/MT+aVx/2FuXF6ArNPxIWUBkO8eM1VFIeLC35qHddwFecv3X0SEWYCLWHtgwVib
	1ZpEWoQnV7/sP4q3bnD5UZZQQObXzJpRq+OQ7ZB3+XTu70BlU8pujRK0q+UNltQ0QdAkCfp5yXJE3
	zn03hXoYgxzllI0Pb3i77+vxZredwyiJ7xznpalkjQgoFE7yUch14Uy2QbTW7oZjUNiQD+r5m17Fo
	ezi302IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mK-0000000B8Mw-3SHj;
	Mon, 01 Jun 2026 12:30:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU1mI-0000000B8Ki-0ppy
	for barebox@lists.infradead.org;
	Mon, 01 Jun 2026 12:29:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-0006J7-Tx; Mon, 01 Jun 2026 14:29:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-000a69-2m;
	Mon, 01 Jun 2026 14:29:54 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wU1mE-00000002PJv-3LUr;
	Mon, 01 Jun 2026 14:29:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 01 Jun 2026 14:29:52 +0200
Message-Id: <20260601-debug-ll-conflicts-v1-0-bf17f9f0e23a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEB7HWoC/x3MQQqAIBBA0avErBvQqKCuEi0cnWpALLQikO6et
 HyL/zMkjsIJxipD5FuS7KFA1xXYzYSVUVwxNKrpVa80OqZrRe/R7mHxYs+EpjNsqFU0DAQlPCI
 v8vzTaX7fD5NZX+JkAAAA
X-Change-ID: 20260601-debug-ll-conflicts-a5aeab40b99b
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780316994; l=2408;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=Eu+hJmNZkrGaTBTYOJcpOmbdXCefSdgY31k1T6+HXCg=;
 b=dBifAdxLh5X0MPh5Y39ZKSnnLJXaB88IBBQkj47JISuc1G4hOOCargOPZrWe6ltUc1ItU+Pdl
 A6KUqG8W31xBmC75HdGl2yq3CBywCP1GIllhmFpTI5051laBeampGrw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_052958_250819_FDD75E09 
X-CRM114-Status: GOOD (  10.51  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] debug_ll: Cleanup conflicts for multiple SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This cleans up some problems we have with debug_ll when it comes to
multi SoC images. debug_ll relies on having exactly one PUTC_LL()
implementation available. Most SoCs have their own DEBUG_*_UART Kconfig
option and the Kconfig choice around them makes sure only a single debug
UART can be selected. Some SoCs do not have a dedicated option though
and provide PUTC_LL() whenever the SoC is enabled which can to multiple
definitions of PUTC_LL(). Fix that by adding a DEBUG_*_UART option to
the SoC that currently do not have one.

Another problem is that pl011.h provides PUTC_LL() and
debug_ll_pl011_putc(). The former is needed when included indirectly
from debug_ll.h, the latter is needed by board code to specify a putc()
to the PBL console. This too ends up in multiple definitions of
PUTC_LL().

Both problems are fixed in this series

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      debug_ll: give PUTC_LL a common prototype
      debug_ll: Add Kconfig options for debug uarts that have none
      debug_ll: pl011: define PUTC_LL only when requested

 arch/arm/include/asm/debug_ll.h                    | 69 ++++++++--------------
 .../mips/mach-ath79/include/mach/debug_ll_ar9331.h |  2 +-
 arch/openrisc/include/asm/debug_ll.h               |  2 +-
 arch/powerpc/include/asm/debug_ll.h                |  2 +-
 common/Kconfig.debug_ll                            | 28 +++++++++
 include/debug_ll.h                                 |  2 +
 include/debug_ll/pl011.h                           |  6 +-
 include/mach/bcm283x/debug_ll.h                    |  4 +-
 include/mach/imx/debug_ll.h                        |  2 +-
 include/mach/k3/debug_ll.h                         |  2 +-
 include/mach/layerscape/debug_ll.h                 |  2 +-
 include/mach/mxs/debug_ll.h                        |  2 +-
 include/mach/omap/debug_ll.h                       |  2 +-
 include/mach/rockchip/debug_ll.h                   |  2 +-
 include/mach/stm32mp/debug_ll.h                    |  2 +-
 include/mach/zynq/debug_ll.h                       |  2 +-
 include/mach/zynqmp/debug_ll.h                     |  2 +-
 17 files changed, 69 insertions(+), 64 deletions(-)
---
base-commit: 81fbe2e8d0d445032498a0bfecf9fd270f00985a
change-id: 20260601-debug-ll-conflicts-a5aeab40b99b

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



