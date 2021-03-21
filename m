Delivery-date: Sun, 21 Mar 2021 16:21:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzt0-00023w-P9
	for lore@lore.pengutronix.de; Sun, 21 Mar 2021 16:21:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lNzsw-0002Xt-MU
	for lore@pengutronix.de; Sun, 21 Mar 2021 16:21:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tTnoHMdE7+u+Ejkjup/9nmjGc91H29lBtb4/K0cwabs=; b=AmAA4qabyRWnK+9VmouZcjEaL
	fig8pVLLwRlPq42lTl/6tuWOxx7UMcXcV1+Fl/gxwPD0wk/flK6duik7zuhg4NtrQAuWPn7n1IzmH
	Tb2HLjYBFHoFvu4GsK7PrJzhvKsaBqhh4G+qVaU7qmnY/9f0Oli3XX3wEKIvHkekvwXRbzlluHt90
	49/zVsTJ998nqrsHkWmQ2Vb21KL99W3RIkeTBT62YgNWyXF8BwexE9aSRmifexZYUEZK0z6cBYzB5
	Dg+zuJ0jh1dnCafJdVw4iptH7ySurR0r2jcXVhUJ9v3RLPFW9yQzn/9XKgCz7pzbHWFZwz+PLRqGV
	n/JbR8ljw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNzrc-00A4cz-Dh; Sun, 21 Mar 2021 15:19:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNzmI-00A42Q-Pu
 for barebox@lists.infradead.org; Sun, 21 Mar 2021 15:14:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm2-00011P-3i; Sun, 21 Mar 2021 16:13:50 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lNzm0-0007wA-Tm; Sun, 21 Mar 2021 16:13:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 21 Mar 2021 16:13:29 +0100
Message-Id: <20210321151344.5810-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210321151344.5810-1-a.fatoum@pengutronix.de>
References: <20210321151344.5810-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_151443_390432_CDD5DA5F 
X-CRM114-Status: UNSURE (   9.40  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 06/21] RISC-V: <asm/unaligned.h>: don't do unaligned
 accesses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

While HW can emulate unaligned accesses at a performance penalty,
it's probably best to just not generate them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/include/asm/unaligned.h | 16 ++++------------
 1 file changed, 4 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/include/asm/unaligned.h b/arch/riscv/include/asm/unaligned.h
index aaebc064114e..c37b71c21ee5 100644
--- a/arch/riscv/include/asm/unaligned.h
+++ b/arch/riscv/include/asm/unaligned.h
@@ -1,19 +1,11 @@
 #ifndef _ASM_RISCV_UNALIGNED_H
 #define _ASM_RISCV_UNALIGNED_H
 
-/*
- * FIXME: this file is copy-n-pasted from sandbox's unaligned.h
- */
-
-#include <linux/unaligned/access_ok.h>
+#include <linux/unaligned/le_byteshift.h>
+#include <linux/unaligned/be_byteshift.h>
 #include <linux/unaligned/generic.h>
 
-#if __BYTE_ORDER == __LITTLE_ENDIAN
-#define get_unaligned __get_unaligned_le
-#define put_unaligned __put_unaligned_le
-#else
-#define get_unaligned __get_unaligned_be
-#define put_unaligned __put_unaligned_be
-#endif
+#define get_unaligned	__get_unaligned_le
+#define put_unaligned	__put_unaligned_le
 
 #endif /* _ASM_RISCV_UNALIGNED_H */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

