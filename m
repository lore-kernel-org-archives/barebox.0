Delivery-date: Mon, 03 Jul 2023 16:22:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGKRs-00Dda5-JT
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 16:22:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGKRq-0004Fr-3B
	for lore@pengutronix.de; Mon, 03 Jul 2023 16:22:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GZnGm0Yvsq2IkIV4WRcqVJs4ggx3luYgArbOcn3aLFU=; b=hucr0jNq0qZLGj
	Rpz4bLYnRuXia4ZEzfm0hu3lgMG1fCA1kwNLLiUXXA2pU8RldcYrOwhXtE1lJSjHjVnWiExOV83Tb
	vVcW02cTPCIYlo4imehdNLvrp34ZEwSl2ZVke+chmO6203H6CZbyrMHomQ1ef1bTw2aCLC3hWJyc4
	nbI3V3v4+bP8NFjLFJf34pBq//vsEgze1aU5GJ5cLVML1MhwIYe/ZnPACeQJaLf2JcD58AtnvGJrt
	m/A9ILmi+dA7nOj5csSRShsQTFc9D8X9dfh9EyybTK9x0CqNWQ2I1n1CF3xRNhln6ouECql/7w9ix
	SGxr9gKCYI0WTuez+RHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGKQo-00AkAa-27;
	Mon, 03 Jul 2023 14:21:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGKQi-00Ak9s-2k
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 14:21:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGKQg-00046S-Pu; Mon, 03 Jul 2023 16:21:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGKQd-00BpJi-HJ; Mon, 03 Jul 2023 16:21:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGKQd-006OAV-0M;
	Mon, 03 Jul 2023 16:21:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  3 Jul 2023 16:21:22 +0200
Message-Id: <20230703142122.1522533-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_072128_913832_1FAACFC5 
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: fix alignment of firmware images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

ASM_LGPTR is a preprocessor symbol, not a Make variable, so expanding it
in the Makefile results in .p2align without an argument, which disables
alignment requirement. Fix this to restore the sizeof(void *) alignment
we had before.

Fixes: a59e2740b4a7 ("firmware: reference pointer alignment defined in <asm-generic/pointer.h>")
Reported-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 8d3bfb0752ff..d7f35853a404 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -49,7 +49,7 @@ filechk_fwbin = { \
 	echo "\#include <asm-generic/pointer.h>"		;\
 	echo ".section .note.GNU-stack,\"\",%progbits"		;\
 	echo "    .section $2,\"$3\""				;\
-	echo "    .p2align $(ASM_LGPTR)"			;\
+	echo "    .p2align ASM_LGPTR"				;\
 	echo ".global _fw_$(FWSTR)_start"			;\
 	echo "_fw_$(FWSTR)_start:"				;\
 	echo "\#if $(FWNAME_EXISTS)"				;\
@@ -68,7 +68,7 @@ filechk_fwbin = { \
 
 __fwbin_sha = { \
 	echo "    .section .rodata.$(FWSTR).sha"		;\
-	echo "    .p2align $(ASM_LGPTR)"			;\
+	echo "    .p2align ASM_LGPTR"				;\
 	echo ".global _fw_$(FWSTR)_sha_start"			;\
 	echo "_fw_$(FWSTR)_sha_start:"				;\
 	echo "    .incbin \"$(fwobjdir)/$(FWNAME).sha.bin\""	;\
-- 
2.39.2



