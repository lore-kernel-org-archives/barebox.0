Delivery-date: Tue, 20 Jan 2026 13:25:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnX-003Ns1-2W
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 13:25:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viAnW-0005rW-QK
	for lore@pengutronix.de; Tue, 20 Jan 2026 13:25:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/8MHBBjwZALLQSu9hoo+MoYC0dH70yKKkR/Xza0AVrM=; b=zUFWY65bNRDzpFJ2gM/jZwvTNm
	WWJImd7fj5ojmt8mwStFTTZtbt4pOOSNUhwAQ+DKgum5dzk/mrUeGiwEmQ7LSsaOIdJ1ZpyuOHjNp
	/Uth5mYxL093qr3xzke1eE5LNEnF65Mzm94W3fh4mZlA/6Xzh5q6n3ufaJKRIQbgPqADAea4ZTj/F
	TvSoGRw/PGzusJQZPhNXCo9qGwMRDN9hG36TpF+8+vM4Ti8HXgzqSoTWWiSsmi6rpJOBf0QTHU7xr
	bGDkltMSAiP4c96VUY/UQKylwdj8mxeHa5dG0bnRA57RnnjPkofAMd7dsOwG74LIbMmr9qk7N9T1m
	nqjrJGYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn7-00000003pb0-1QN3;
	Tue, 20 Jan 2026 12:25:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn4-00000003pZY-3uii
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 12:24:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/8MHBBjwZALLQSu9hoo+MoYC0dH70yKKkR/Xza0AVrM=; b=rIfsSk7dpG3Yz7ERH7p1szP8kO
	VaP7qu7q7XF+NP2R6Of+yP8eprg99AosnFoeW0c3vDPH+5bWyC+3zgNXS3O+neWiVMHDaxPjCvUSV
	dkcDcJrncUM6h8X65mbl0XGrq5D0SSc65fyoY4YpC+oVk2opGltlz859bMf7EUnwJBXvtBpzAEqLJ
	/Xsv+OQTPiSSNrrBIGxde48e3/OyjyF5RLmOcy5sLS0Kb3xUp+ErAkJSoKj2bWGvz56pgEARkBki1
	sQFKU43M/KxD7/9ef4V2vxOBmO6eNTkiII65mpF1/hK3f5vlkvLi+atgqR6z8GoJE9sZ5H0p73z4z
	leKDN6ew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viAn0-0000000E0xu-2x0V
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 12:24:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-0005eT-53; Tue, 20 Jan 2026 13:24:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-001aAD-23;
	Tue, 20 Jan 2026 13:24:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viAn0-00000002dE4-2LGn;
	Tue, 20 Jan 2026 13:24:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 20 Jan 2026 13:24:44 +0100
Message-ID: <20260120122453.627239-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260120122453.627239-1-a.fatoum@pengutronix.de>
References: <20260120122453.627239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_122454_919534_649389A5 
X-CRM114-Status: GOOD (  11.43  )
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
Subject: [PATCH master 1/3] include: asm-generic/bug.h: allow disabling CONFIG_DEBUG_BUGVERBOSE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

__bug_dump_stack is used as if it's a function, but (void)0 is not
callable. Turn it into a function-like macro to allow
CONFIG_DEBUG_BUGVERBOSE to be disabled.

This option save about 500 bytes for minimal configurations like
socfpga-xload_defconfig and more for more extensive configs.

Fixes: 32755105119e ("bug: add support for CONFIG_DEBUG_BUGVERBOSE")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/asm-generic/bug.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/asm-generic/bug.h b/include/asm-generic/bug.h
index ca75b1c7646e..514801dab10e 100644
--- a/include/asm-generic/bug.h
+++ b/include/asm-generic/bug.h
@@ -13,7 +13,7 @@
 #else
 #define __bug_printf no_printf
 #define __bug_panic panic_no_stacktrace
-#define __bug_dump_stack (void)0
+#define __bug_dump_stack() (void)0
 #endif
 
 #define BUG() do {						\
-- 
2.47.3



