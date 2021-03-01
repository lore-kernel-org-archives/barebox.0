Delivery-date: Mon, 01 Mar 2021 12:02:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK5-0004Tx-4z
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:02:45 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgK4-0000GJ-AY
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:02:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O/dzKQwtwtwnHyOoFahx+Yj37s42c3PI/JaaSkrq2z0=; b=1qQRtd6dDRS9Sao9CrMTaWDSb
	VYvbOvt7+XWCqv7Q1VI12BIvQU8S3w5/aVHYx120zZM5O4sjEv6iCWjmjEIpyCaiiC/mA90NBy/jH
	lrUeFzbKETIlL6pPe3rS+myelnD5GhtfRRtAFD9rOGoAQmUu98lCVF4Tbb2I24m8SPoawbb1r+yr3
	2AzjYN4I7hMqaU3SuQfbPVfQoNm9c5PLKOys3QgP8A3HZw25TLdvHsp2xablreq8BDRKK+9B8b+Sn
	iKscRRRcK+e5MAhNQrvOV41BwhAaWOi0m9cc3XXuQX3CnGUCAzOF5NiWx+g5NVnPk0UjoW0WQSgU9
	6cBRV0uVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgIi-0005Jp-1J; Mon, 01 Mar 2021 11:01:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgIe-0005I0-BJ
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:01:17 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIb-00089M-8H; Mon, 01 Mar 2021 12:01:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgIa-0001bO-Ew; Mon, 01 Mar 2021 12:01:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:01:04 +0100
Message-Id: <20210301110106.3764-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210301110106.3764-1-a.fatoum@pengutronix.de>
References: <20210301110106.3764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060116_405587_DCF3B802 
X-CRM114-Status: GOOD (  11.59  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>, Stafford Horne <shorne@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/11] mips: Add linkage.h
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

