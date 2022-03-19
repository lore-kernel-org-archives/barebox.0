Delivery-date: Sat, 19 Mar 2022 08:45:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTlr-00GWgQ-1u
	for lore@lore.pengutronix.de; Sat, 19 Mar 2022 08:45:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVTlr-0003lU-JF
	for lore@pengutronix.de; Sat, 19 Mar 2022 08:45:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6rzrNq0ZhBoKVfWRjpt/3TaMdzoJZat98W7AnvLbIBw=; b=ZV4+yAxf2s7BZG
	W/JTg9DO5nrc3w8NtDgS9NAarpGihzc8mU+4/AOpOtwj8aRAQrwM7aCfwB6fCMNXsTPCjymq/9dZW
	nUHWqRF/GmdU4SH9QB3lwiybORK1PzcRUn68ocJva9hkSRF+RqbWmTJTYzywMbwy+ao4v2hvl8/O4
	RqovAjdQkqCfzUr/SgCqmV5U7Bc9h/qMzjL5oQkbyndUVXW15JQxFun4foE6bXoARVSwAVx7Rnc97
	6IPCSwkuofJR7uc7Fls+udcaH73dL74Mnl+Uxip0eZuL9MrSpEzvm56RqaEEdiggss85KrnEmYC6S
	cmaJc9OO32VjNqbfNVqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVTkZ-003PQY-HN; Sat, 19 Mar 2022 07:43:47 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVTkV-003PQ8-DV
 for barebox@lists.infradead.org; Sat, 19 Mar 2022 07:43:44 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by mail.gandi.net (Postfix) with ESMTPSA id 83BD220003;
 Sat, 19 Mar 2022 07:43:40 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Mar 2022 08:43:35 +0100
Message-Id: <20220319074335.1313872-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220319_004343_639775_09F45911 
X-CRM114-Status: UNSURE (   4.71  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: asm: setjmp: add missing .pop_section
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes a mismatched .push_section. This had no effect, because the
file ended after the follow-up .push_section.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/lib32/setjmp.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
index 626d915da183..cc6cafa4af3e 100644
--- a/arch/arm/lib32/setjmp.S
+++ b/arch/arm/lib32/setjmp.S
@@ -33,6 +33,7 @@ ENTRY(longjmp)
 1:
 	bx   lr
 ENDPROC(longjmp)
+.popsection
 
 .pushsection .text.initjmp, "ax"
 ENTRY(initjmp)
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

