Delivery-date: Mon, 09 Oct 2023 13:53:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpop8-001qWV-9e
	for lore@lore.pengutronix.de; Mon, 09 Oct 2023 13:53:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qpop6-0001xD-Ve
	for lore@pengutronix.de; Mon, 09 Oct 2023 13:53:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c0DeI1v3r/V5tRJhmHo6rsz/ygpdF4ad1+iFum81ImU=; b=g3qeCkibBsydOzNwdeLHd0+Fxx
	XFwxPI6DzY7H5FmTEXOW5/nJ7avn7qGF/lzaNNIjXh0IXVqRANvfJzFIVnjJQZ80r5bimR+5sJrm3
	LACWGdJDjassbimF4Xa9EhW0M8SyEo9o5pD1WVQ1x/oefsTwyXjmIdoBRwW+4eavF64yw7NZ9+uh3
	4Cj8/bDmw6L4QPJYWhOcgHcdpt/9GXXCh2qNP+gcDyzegzyS8R/SpBAorJ5ZtcKJLILVoz5Jb9ObE
	TXvNd0yKF4p4jvlbJ9GG2z6h0rocO1xQj03ezaQqYPXbKuAUeyJqQM36AM8bwi88pGyq2r6Z4aIv1
	sGBe4wXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qponz-00AW3O-1g;
	Mon, 09 Oct 2023 11:52:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qponu-00AW1h-02
	for barebox@lists.infradead.org;
	Mon, 09 Oct 2023 11:52:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-0001Zo-Pg; Mon, 09 Oct 2023 13:52:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-000P3J-DM; Mon, 09 Oct 2023 13:52:03 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qponr-009NpY-13;
	Mon, 09 Oct 2023 13:52:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Oct 2023 13:52:00 +0200
Message-Id: <20231009115201.2210460-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_045206_048580_81B1BF60 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] sandbox: add empty <asm/linkage.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sandbox code including <linux/linkage.h> will trip over this file being
missing, so add an empty stub.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/include/asm/linkage.h | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 arch/sandbox/include/asm/linkage.h

diff --git a/arch/sandbox/include/asm/linkage.h b/arch/sandbox/include/asm/linkage.h
new file mode 100644
index 000000000000..1d78d9169b6a
--- /dev/null
+++ b/arch/sandbox/include/asm/linkage.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#ifndef __ASM_LINKAGE_H
+#define __ASM_LINKAGE_H
+
+/* referenced by <linux/linkage.h> */
+
+#endif
-- 
2.39.2



