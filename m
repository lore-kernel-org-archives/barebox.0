Delivery-date: Wed, 10 Mar 2021 09:50:02 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXa-0001BO-OY
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 09:50:02 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJuXY-0002Hr-BA
	for lore@pengutronix.de; Wed, 10 Mar 2021 09:50:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O/dzKQwtwtwnHyOoFahx+Yj37s42c3PI/JaaSkrq2z0=; b=FuppAiwPIe0fdjh1ZpYL4+2+N
	kh9+bN1F7WEngW4CSCqUY+lZ19LOrKOh7bhpQfd3C52ttXnz0iHejoufhc+j/IK7jS9KAm5Z7IezK
	vbG/1Fr42lOjdMsIeQcd3XB5amdYSAf0F99uZ1hojYCnNeJtmgowb3i6HLX5AV8krF3pHzi66gvLl
	QqUHPloBerR0lEI3dVrSH5v7LVewye9nUoD4gXZQxSk8ABodtS7aAffO/xslFK52b7bjz+XYUQmpB
	SVZnbTX1WcQeFHWFbE4erG4cOIbbGrVMZ3s+oLIE9acYnJYSm+Q9z/rL6TP18JvxpIbys37D5tkB9
	vrBrd0OPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJuWP-006LWd-NB; Wed, 10 Mar 2021 08:48:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJuVk-006LLA-0x
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 08:48:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVj-0001Td-ID; Wed, 10 Mar 2021 09:48:07 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJuVd-0001zU-JG; Wed, 10 Mar 2021 09:48:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>, Peter Korsgaard <peter@korsgaard.com>,
 Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Mar 2021 09:47:52 +0100
Message-Id: <20210310084800.3584-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310084800.3584-1-a.fatoum@pengutronix.de>
References: <20210310084800.3584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_084808_701962_178F7FB7 
X-CRM114-Status: GOOD (  10.55  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 08/16] mips: Add linkage.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Taken from Linux Kernel with unnecessary bits removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/mips/include/asm/linkage.h | 9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 arch/mips/include/asm/linkage.h

diff --git a/arch/mips/include/asm/linkage.h b/arch/mips/include/asm/linkage.h
new file mode 100644
index 000000000000..14835f513961
--- /dev/null
+++ b/arch/mips/include/asm/linkage.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
+
+#ifdef __ASSEMBLY__
+#include <asm/asm.h>
+#endif
+
+#endif
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

