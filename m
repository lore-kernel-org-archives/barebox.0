Delivery-date: Mon, 22 Mar 2021 08:22:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEt7-0003AR-QK
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 08:22:09 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEt7-0001Ef-3b
	for lore@pengutronix.de; Mon, 22 Mar 2021 08:22:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1G7IllzvPY/sGvukflHC/jdmO2mMyyi8ZCrRZnqSBRM=; b=eTM5HLAB5DVAvUr4iUUntSWGU
	cewkdxFxDQgEIZ9WyTI07RyBz34EFZN8hr3ClNHCWfzMpThVWWAGUGJ5r4g7t3RSF7drYc4IKtT60
	pCnkqZpGg51RZVa+GWAfcyvSFMUoSEFivvtQF1gfnJjTE+GxyX3w65WUS/go5E+3VlNSq7Zva53EX
	64U0RjVrtSa6WBkTR9M5EC9P0FHO0MrOFcmc6iHngg2JlP8EU51MnVFswYZoU2WJKm+HM3I3fQHTH
	hS0ycZSoWVzMT3fipmuY5hKfWNN57KbgR2sb8DrFLRYZqs73oD+Szi9uhPGRlAhWQzFzH9oDwdso+
	AVttGWH2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOEs9-00B4hK-H2; Mon, 22 Mar 2021 07:21:10 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOEs1-00B4go-0k
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 07:21:02 +0000
Received: from geraet.fritz.box (unknown [83.135.84.27])
 (Authenticated sender: ahmad@a3f.at)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id DAC71240006;
 Mon, 22 Mar 2021 07:20:59 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Mon, 22 Mar 2021 08:20:52 +0100
Message-Id: <20210322072052.3740375-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210321151344.5810-15-a.fatoum@pengutronix.de>
References: <20210321151344.5810-15-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_072101_229415_7366CD52 
X-CRM114-Status: UNSURE (   8.38  )
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
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! RISC-V: implement PBL and relocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

fix stray space in tab indented block.

Suggested-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/include/asm/barebox-riscv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/include/asm/barebox-riscv.h b/arch/riscv/include/asm/barebox-riscv.h
index 84344c842547..948a562c5c1f 100644
--- a/arch/riscv/include/asm/barebox-riscv.h
+++ b/arch/riscv/include/asm/barebox-riscv.h
@@ -80,7 +80,7 @@ static inline unsigned long riscv_mem_barebox_image(unsigned long membase,
 
 #define ENTRY_FUNCTION(name, arg0, arg1, arg2)                          \
 	void name (ulong r0, ulong r1, ulong r2);                       \
- 	static void __##name(ulong, ulong, ulong);                      \
+	static void __##name(ulong, ulong, ulong);                      \
 	void __naked __noreturn __section(.text_head_entry_##name) name \
 		(ulong a0, ulong a1, ulong a2)                          \
 	{                                                               \
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

