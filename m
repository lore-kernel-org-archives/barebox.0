Delivery-date: Mon, 10 Nov 2025 21:35:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcG-00HVUb-1e
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcD-0002RV-EI
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JTnA377QqCYjlY9aie087fdVxHEW2eb4kTF5j/pAoIk=; b=bb7RxkRIRP21+dXJp/Jmm+RZqD
	DG5UZwNPMSAjFy56OO7QWOyYzKoqo4nYFXFgp1+CpmGlJhsHjBCZcAuWxwQYXMqEgKvYMlE4fTgda
	DAg436Oa435WmlzD4EGUi1Uc7zaoyaDc71HZHdwicgao0anacGRJXPp7Z58/tzQGvRHzmbDoRH6m8
	1fDFflXJ945f1iV6EiiYzCf8ECNyT/mQY+12MD8XkjGizc7KLF9OGFLhauKHcE5BvzPP0bjTKuCvh
	Gunom/lJojWBXQcwxSWgXGCJshB8LNr9kXv1d1aho7j9Y511dHJmMkmjk8WNtP650a5TLjGFrQgsL
	7n+qsZpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbL-000000065e0-296B;
	Mon, 10 Nov 2025 20:34:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbG-000000065Xe-1VEM
	for barebox@bombadil.infradead.org;
	Mon, 10 Nov 2025 20:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=JTnA377QqCYjlY9aie087fdVxHEW2eb4kTF5j/pAoIk=; b=HmDlzJdQsxOWiMnH9Z0JdDBEa1
	yHhYfDT5Ra9Kqpkk5Q85ADCrGWe4gn5ZJAeJEB82ZzlTQZz2StRn2/D1F/6eD97GDg+C5KyEsHJW+
	/58gSvkD9cpXS2Iv9v8Jkz0tvupgcMRa7haO7mV8vBtm4cQ+zCRb/KjsawoMZJ7WWbl9SIFw+QbHx
	5ARxw4a9MIa2vbCxXspH9v5+EZltjS8I1C4BSkz1+m1pJRNfOkqOEZywvEPZ9eqcMlbpmzIRf7Bvg
	eWjm2Pi7qyY8XpnwGUnLXQGEBKM7OdNhYt/uVm31aYMEI6Hi328EZ1YjYLZzWGhCJydwBstYiEccR
	ciQf4b3A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIXjW-0000000BgCt-0ApC
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 19:39:25 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb9-0001MT-3M; Mon, 10 Nov 2025 21:34:47 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:35:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-23-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_193922_193111_0941155B 
X-CRM114-Status: UNSURE (   9.20  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 23/23] ARM: i.MX8M: remove /secure-chosen/stdout-path if
 requested
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Remove the /secure-chosen/stdout-path property if requested by the board
code.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index baaf0bcc843a72021f97591348e9d165a34d0640..e56aecb9fd814a9324c086b39be3b8790929ba3a 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -142,6 +142,14 @@ imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
 				pr_warn("Failed to fixup FDT memory node, continue without\n");
 				fdt = NULL;
 			}
+
+			if (pbl_disable_secure_chosen_stdout()) {
+				ret = fdt_remove_secure_chosen_stdout(fdt);
+				if (ret) {
+					pr_warn("Failed to disable secure-chosen, continue without FDT\n");
+					fdt = NULL;
+				}
+			}
 		} else {
 			if (ret == -ENOTSUPP)
 				pr_debug("PBL_EARLY_FDT_LOAD disabled, continue without\n");

-- 
2.47.3



