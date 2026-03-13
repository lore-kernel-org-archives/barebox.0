Delivery-date: Fri, 13 Mar 2026 14:34:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fL-000DUa-2n
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:59 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ex-0000s2-M1
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qEE7wyOSVCa9VvzS24TaGWpEQEcGmBEVy9hHlHsr5fU=; b=MkOeLBpXXhMbzZvc6AvcENxfvM
	cxGLdBAVApKYiYwTBHGB6bHEXmBlAy+uVnmBXs6SqO4fb7JvV5Mz6+KOJsQlpQKDgS/dtd0AJgKXD
	2lRwmwmGGAMX3+q/xcIQ2oUC0lhNQr3t3jOhAcHiq7O6RBTfVD60qrzMT0TtTeVjyIJeDMhQT3Ctq
	NHPhGd9DZ/HJvjNz6/fh0CPLIyl7IykK7d7fmvWhWCblW7tKbv4h2ZBAQ+hPL6aEfF2BBrej2V6dY
	bvpR+Urun9EStvPI6wcBQ1MRiITp6tcLLQT+4GKlNh64dL34psa+pZnXZsOlnO+xd46IBbtras5Ut
	14tXTVeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12df-00000000GRZ-0F3k;
	Fri, 13 Mar 2026 13:33:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dI-00000000Fo6-1kOO
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qEE7wyOSVCa9VvzS24TaGWpEQEcGmBEVy9hHlHsr5fU=; b=d55shZEIoOIfDcA7CGdx3KvEJv
	N5XA1WdyAe77WO3ZXM58icQ0uHk5wyPkvpmSf00JNk0gzPH8zJ7rwZ9DMCKW9fSOhtmeFj5nyxhf+
	fgPvqIMt8vKUYBO/oZI//qlCLkS1dpkssinbqIx74PJfPXkEiH+i1QHvmdp0Sag+IACrddeXaet8y
	N6cRXXIgtmhkpZSJVa1lXEHsaOkUogjAPg2nNmmiwZmQ1bshdPxZyoA6pdIBSdyz72xJ8cS5O7idp
	AqSNjnZ/ARuYz9xp4obmSufptVcwn9OdkreNYlgcRWNWGNxpg4XDNmblBZjVHupm9ahVaUJrIDwlg
	Ojg5dmpA==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d0-00000003OSv-0rQL
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006rm-EJ; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Tl-0k;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-26XA;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Maud Spierings <maud_spierings@hotmail.com>
Date: Fri, 13 Mar 2026 14:25:12 +0100
Message-ID: <20260313132631.2257573-29-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133235_339810_BCB048FA 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 28/58] RISC-V: dts: fix generation of dtbs-list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Maud Spierings <maud_spierings@hotmail.com>

For some reason pbl-$(CONFIG) results in dtbs-list being empty. This breaks
the generic fit image generation. Switch to lwl-$(CONFIG) like arm.

(cherry picked from commit f406d6ef100dd15b2fff1fd5cad9ca9e941991e6)

Signed-off-by: Maud Spierings <maud_spierings@hotmail.com>
Link: https://lore.barebox.org/20260221-riscv_dtbs-v1-1-be58fc118bc2@hotmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/riscv/dts/Makefile | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/dts/Makefile b/arch/riscv/dts/Makefile
index 841f86064ae1..92cff9b84fa6 100644
--- a/arch/riscv/dts/Makefile
+++ b/arch/riscv/dts/Makefile
@@ -4,11 +4,11 @@
 # created.
 obj- += dummy.o
 
-pbl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
-pbl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
+lwl-$(CONFIG_BOARD_ERIZO_GENERIC) += erizo-generic.dtb.o
+lwl-$(CONFIG_BOARD_HIFIVE) += hifive-unmatched-a00.dtb.o \
                               hifive-unleashed-a00.dtb.o
-pbl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
-pbl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
+lwl-$(CONFIG_BOARD_BEAGLEV) += jh7100-beaglev-starlight.dtb.o
+lwl-$(CONFIG_BOARD_LITEX_LINUX) += litex-linux.dtb.o
 
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
 clean-files += *.dtbo *.dtbo.S .*.dtso
-- 
2.47.3



