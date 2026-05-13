Delivery-date: Wed, 13 May 2026 15:57:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5U-001H7x-2a
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:57:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA5Q-00008q-Vs
	for lore@pengutronix.de; Wed, 13 May 2026 15:57:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DMxQU6ZwX1rZZ2wiYTUe0tZgnAqyRsgkfyOdKXNS2uU=; b=MWzUZa4BIJsnhXZMFsgGrZRSvO
	ZfIrp036D8vZMu9AQaSqY61WD6WcXx9aryZja/VClndXqS+HloYLjtEs0yzDFvdDTzP1+afL7npgs
	KTHmnzbfSXLcHLaKeBF5FL5Xu/dkxKTtoAuUv3RSr1Ien+5fMr++cQ9cpg2z+CT0TWFgAHRupXO6v
	xHS9oNrdj9I2FwLkuOl9M1xm/2fpBpz/Yttoo6CsYcXHBw0QDSMX42V0Hp9/FcwpXBDyZrFCiF8dF
	aR+auwC/Q3nNUTlPnQqHhf76XEz6PIndNWd+juwWWlqj3kwnnHBwtzSzGlzxFCSXAdpvdDNvFK9zd
	gM0aTCdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA44-00000002q2E-3RAX;
	Wed, 13 May 2026 13:55:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA40-00000002q0N-2r00
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:55:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-0007xv-2h; Wed, 13 May 2026 15:55:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3z-000bi7-00;
	Wed, 13 May 2026 15:55:51 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA3y-00000001CbW-3pBO;
	Wed, 13 May 2026 15:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:55:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-rockchip-fixes-v1-1-a4055849a014@pengutronix.de>
References: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
In-Reply-To: <20260513-rockchip-fixes-v1-0-a4055849a014@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680550; l=1246;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=PIrRjA5dLPzlUR2CtQ6xfEqJt8IFXKVvQg1My/5L27o=;
 b=QbvuDIAeG9Gta4e/XxldodBl5/uSIa+slkbYemU7q549/A6xJBVg7Z7irU2XzEfejiovZ8SUW
 eK0/QAD8NSIARuy6PIjTpholQX3eDqmS+0asx6YiR3G0RIIMDEm3QHP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_065552_725262_915D2205 
X-CRM114-Status: GOOD (  10.13  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: rockchip: atf: only set OP-TEE address when
 starting it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Setting optee_load_address should be gated behind
CONFIG_ARCH_ROCKCHIP_OPTEE, otherwise we start OP-TEE unconditionally,
even with CONFIG_ARCH_ROCKCHIP_OPTEE disabled.

Fixes: 01df55fc7f ("ARM: Rockchip: Simplify retrieval of SoC specific addresses")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index a9bcb58799..62ed73a920 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -139,10 +139,11 @@ static struct fwobj bl32; /* OP-TEE in barebox image */
 #define ROCKCHIP_GET_ADDRESSES(SOC, atf_bin, tee_bin)				\
 	do {									\
 		barebox_load_address = SOC##_BAREBOX_LOAD_ADDRESS;		\
-		optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;			\
 		get_builtin_firmware_compressed(atf_bin, &bl31);		\
-		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE))			\
+		if (IS_ENABLED(CONFIG_ARCH_ROCKCHIP_OPTEE)) {			\
 			get_builtin_firmware_compressed(tee_bin, &bl32);	\
+			optee_load_address = SOC##_OPTEE_LOAD_ADDRESS;		\
+		}								\
 	} while (0)
 
 static int rockchip_create_optee_fdt(void *buf, int bufsize)

-- 
2.47.3



