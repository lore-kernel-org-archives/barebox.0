Delivery-date: Thu, 01 Apr 2021 08:47:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr7B-0006V0-MS
	for lore@lore.pengutronix.de; Thu, 01 Apr 2021 08:47:37 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRr7B-0003bN-06
	for lore@pengutronix.de; Thu, 01 Apr 2021 08:47:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0J2v3PnXX7Pl+5nxhzaVeI0eiicOPLtcSnktg9r4REA=; b=D0GpdVsQlh6VSK6H9gk9Gn4Tq
	N1qeHvbmx8hIzYt5IHsp56/zfgzXgO/NISQ/DuZvVZs9OK7adwG96c+xOf5h3ZkeboVTpQYaSP8jD
	Zet2Cc+hUb2m7waEsXXHM8+FaulCuobbgHoSxBREGYJGZvYDRi2/hw1SWBB768G7Y2O2NOwd9MYW8
	dtYP5rlvoEZdtrQ4d4JZKN7eaIwsNjKKHDiTsr9hAT4wCJb07w+e3dGqIQzxzc+TFGOtQgqkZ7bVh
	1a1yw16nV84qGk+2r9EjCizbrLhajgY/HO0LfSphAMX5fuYc0dZACRuEyS9dqlM5nI1Zuw5jtErnY
	nY1XcuUSA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRr6F-008iaV-Dp; Thu, 01 Apr 2021 06:46:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRr62-008iWJ-GY
 for barebox@lists.infradead.org; Thu, 01 Apr 2021 06:46:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5u-0003J5-0p; Thu, 01 Apr 2021 08:46:18 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lRr5t-0007tH-I2; Thu, 01 Apr 2021 08:46:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Apr 2021 08:46:13 +0200
Message-Id: <20210401064616.29913-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210401064616.29913-1-a.fatoum@pengutronix.de>
References: <20210401064616.29913-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_074626_702150_3E2CAE07 
X-CRM114-Status: GOOD (  11.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] Documentation: virtio: Fix virtio reference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <ahmad@a3f.at>

Sphinx complains, probably, because _virtio is used for footnote in
the same document. Rename it to fix the reference.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/riscv.rst | 2 +-
 Documentation/user/virtio.rst  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 049029b4f23d..59cdc00a99e6 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -9,7 +9,7 @@ barebox supports both the qemu riscv32 and riscv64 ``-M virt`` boards::
   make ARCH=riscv virt64_defconfig
   qemu-system-riscv64 -M virt -serial stdio -kernel build/images/barebox-dt-2nd.img
 
-Replace ``64`` by ``32`` for 32-bit build. :ref:`virtio` over MMIO is supported and
+Replace ``64`` by ``32`` for 32-bit build. :ref:`virtio_sect` over MMIO is supported and
 can be used for e.g. an extra console or to pass in a virtio-blk device::
 
   qemu-system-riscv64 -M virt -serial stdio                                \
diff --git a/Documentation/user/virtio.rst b/Documentation/user/virtio.rst
index fb21869807e0..dde47d5f82b1 100644
--- a/Documentation/user/virtio.rst
+++ b/Documentation/user/virtio.rst
@@ -4,7 +4,7 @@
   Copyright (C) 2018, Bin Meng <bmeng.cn@gmail.com>
   Copyright (C) 2021, Ahmad Fatoum
 
-.. _virtio:
+.. _virtio_sect:
 
 VirtIO Support
 ==============
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

