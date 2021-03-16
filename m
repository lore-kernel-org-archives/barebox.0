Delivery-date: Tue, 16 Mar 2021 09:07:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4k2-0002M4-6g
	for lore@lore.pengutronix.de; Tue, 16 Mar 2021 09:07:50 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lM4k0-0000sv-95
	for lore@pengutronix.de; Tue, 16 Mar 2021 09:07:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tTnoHMdE7+u+Ejkjup/9nmjGc91H29lBtb4/K0cwabs=; b=XpVn5W5twjnK2Yoh0ZAfbTi2m
	DTJnfRq9MnztQFRWj+cvxDKwkMW7V6mEPkjOYx+mz1mWPv57fobVlzGjtKzAs99/1Sr1Kjo5ksErX
	J7DKD/j0gGhagRn4jcC2TscxiswNtkw5MF11oO3C5jL4EJFBY4QQTJ9wCkD0Rb8r9mH2qarAbxO3B
	f25WkEYrlYN5f5OFYZX6p9Dj2EtpQyvRVTJoaaHKYkbAeU14mYV28exsd6koehs7uoTA1WoQ7YOOv
	ld1tWGrr4495uowdrVkOFUVFPQ+24zKfbxTKOBdU0v78yP7daPRM73ALJ8xSqQIwAGAtT8ZHYTbx7
	OESo8mMjQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM4ip-00058J-6a; Tue, 16 Mar 2021 08:06:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM4hb-0004bY-3B
 for barebox@lists.infradead.org; Tue, 16 Mar 2021 08:05:23 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hS-0007y3-5Y; Tue, 16 Mar 2021 09:05:10 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lM4hR-0006Ct-2C; Tue, 16 Mar 2021 09:05:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Mar 2021 09:04:52 +0100
Message-Id: <20210316080505.19361-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316080505.19361-1-a.fatoum@pengutronix.de>
References: <20210316080505.19361-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_080519_592070_7A392E52 
X-CRM114-Status: UNSURE (   9.67  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/20] asm: unaligned: don't do unaligned accesses
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

