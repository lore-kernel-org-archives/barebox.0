Delivery-date: Thu, 11 Jan 2024 12:50:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta2-00Cw5A-23
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta1-0002Q9-8d
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zz1nZZGk4956wwr8irt1I1urAGVD1tdAJqE46590fE0=; b=3ULujhs3jSZb7fzqf8xuJJfeOk
	z5mn0Co8VakKZ2M3oG8ePCNQ0gXZfbiuuUabL+gkmm6pha1fbKfErnaHIpz3iD6+WF5tRitvsHVe5
	koLoR690Z7iQ0xUCQ12PYvtvJoHY98EpyrSmstCUI86d3UjGfx7HbNv+7q/ahM/00f2RXgmOAy5mf
	Om2jTCMxKV0ptQuwB8pMIyxFiOnNt13h+sWKLMvFTfIlqtzgTt9OB3KVEvtpvfXao9yHXhpu3Eflr
	NB2lNDeSIdldasDS3d8uOT4nibHD+5H9XS9lY4LmuOzLgPRsx3U3WWMBSPdXqN7YRLbwnYOx3nzRh
	ojcguoqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYb-00HSm8-2a;
	Thu, 11 Jan 2024 11:49:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSao-16
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:02 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Ov
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:32 +0100
Message-Id: <20240111114841.2676939-10-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_631937_42D105AA 
X-CRM114-Status: UNSURE (   9.16  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/18] optee: add header version check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OPTEE supports two header versions right now we do only support V1.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/optee.c      | 5 +++++
 include/tee/optee.h | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/optee.c b/common/optee.c
index fd2b03d06d2d..6a8084839619 100644
--- a/common/optee.c
+++ b/common/optee.c
@@ -14,6 +14,11 @@ int optee_verify_header(struct optee_header *hdr)
 		return -EINVAL;
 	}
 
+	if (hdr->version != OPTEE_VERSION_V1) {
+		pr_err("Only V1 headers are supported right now\n");
+		return -EINVAL;
+	}
+
 	if (IS_ENABLED(CPU_V7) &&
 	    (hdr->arch != OPTEE_ARCH_ARM32 || hdr->init_load_addr_hi)) {
 		pr_err("Wrong OP-TEE Arch for ARM v7 CPU\n");
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 607f5072d385..b5ba0a71d7c9 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -14,7 +14,8 @@
 #include <linux/errno.h>
 
 #define OPTEE_MAGIC             0x4554504f
-#define OPTEE_VERSION           1
+#define OPTEE_VERSION_V1        1
+#define OPTEE_VERSION_V2        2
 #define OPTEE_ARCH_ARM32        0
 #define OPTEE_ARCH_ARM64        1
 
-- 
2.39.2



