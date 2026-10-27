Delivery-date: Tue, 27 Oct 2026 09:59:22 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLd1d-003r8f-1z
	for lore@lore.pengutronix.de;
	Tue, 27 Oct 2026 09:59:22 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 52A492022D8
	for <lore@pengutronix.de>; Tue, 27 Oct 2026 09:59:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TmrrPk1D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793091561; a=rsa-sha256;
	cv=none;
	b=YcBpcDlSITNnqXsrhl3g0zIfVq8zcx9AxzwXqa/Sw2lDv3FfdHB2rAgZ8K5vraNsrDd+7+
	VnA7XPRhs0vPK10d80+hn+BN1xKvS7OJzqNjKD6BhH4gbjYzqI5t9b1tFpcwKwIbQZz0CD
	V6QrWh/uXryjbq6Qp/RBj9cbA9kKQG1F++Dha0WBHhQbv2c6F7fskY93uZY4vYg7Gud6d0
	yOffwfk4ZcgYdylJFN7o0z5M/Y66g48optTZLQyQHrSfOwKn1FUAzomt8W8LlKPf/i7X+U
	IPdO3pcIjY/ZvF/zq/ZkZciJkA/p8RqxN8TEHjOhHKYsdNkGAiMMeLV757vePw==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TmrrPk1D;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793091561;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=mqeslas95A0FbskDM192ANLXuLY5vguiTfeSyEXBPOk=;
	b=IwsOALqHqxU7vMFO5shLs3D7/Pn+kETCeBdBHSZ2MnJyfOVqUKYyUkKO9iU0CXS3xh7vaB
	3tQ2KuZJ24vGFuPviCAHye+cojrCjZ92w2/f0hAp5zQMx+fP/9HQBX9oETAaN8cTI6Ok7v
	IDRrX05J6Mk5i2tbCFY7Me/Q9DqWcHBMzarIaMTJOGRfPOcB4mz3yZvucpeB+lVo9U6izs
	xvArdjlL/KZD5L/bBcKzuXrTAOiqX/lWgPc9GP6WGUiqMjO9irh8UHXv20lpspXptVWul/
	HcHdeBGwsfP/uwFCnTO//Tj2WvZ/5oA4P6W0Tf2xiuRgj3HzWMD9AdBL/0c9kg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=mqeslas95A0FbskDM192ANLXuLY5vguiTfeSyEXBPOk=; b=TmrrPk1DQftX0B
	85hGC24jCmM0kwN7HQhGWZ4O7ubtTm7aNQnYV32zvKAvSjZCj2nsPQuP4C1Zw2veGT4yOAyy0Prf+
	bXI5WYQUtgjaRQcfrrQRKBuYQArWBp2T56mszmUZHwhzGgDpBdOpdGJw0pzccENakxyqzczeSMeUr
	IS0SFMadpcFZDIdNJRJbnlvpvBGNEMkp/DATouxMfazDCyFsDB73bii8/nNkE522RLJc+zZ5+boLp
	UnTvDMpd+lz23kfqnR9+Byph3qNy6WnMoN/TJsHJQFx3mrJHX5zzgklC0QXQJbd8w61wj7SQKnvPO
	sG1E5snpXG8Ei0kVDiAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnG-00000003uz7-0yA8;
	Tue, 27 Oct 2026 07:40:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLbnA-00000003utu-1JnL
	for barebox@lists.infradead.org;
	Tue, 27 Oct 2026 07:40:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xLbn5-0003zV-Tr; Tue, 27 Oct 2026 08:40:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [RFC PATCH 01/17] asm-generic: add registers.h with a pc_inside() helper
Date: Tue, 27 Oct 2026 08:24:34 +0100
Message-ID: <20261027074014.3280396-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261027074014.3280396-1-a.fatoum@barebox.org>
References: <20261027074014.3280396-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_004020_417388_C7F94BDD 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The upcoming board info stage dispatch determines the stage
    it runs in by checking which stage's memory region covers the program counter.
    Add asm-generic/registers.h with pc_inside(), built on the get_pc() that
   ARM, RISC-V and PowerPC provide, as the home for such register level helpers.
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 52A492022D8
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: rwu95a1ax9qwb7d3wrm936zn3xhx571s

The upcoming board info stage dispatch determines the stage it runs in
by checking which stage's memory region covers the program counter.

Add asm-generic/registers.h with pc_inside(), built on the get_pc() that
ARM, RISC-V and PowerPC provide, as the home for such register level
helpers.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/asm-generic/registers.h | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)
 create mode 100644 include/asm-generic/registers.h

diff --git a/include/asm-generic/registers.h b/include/asm-generic/registers.h
new file mode 100644
index 000000000000..8ce28f74e1db
--- /dev/null
+++ b/include/asm-generic/registers.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* SPDX-FileCopyrightText: 2026 Ahmad Fatoum */
+
+#ifndef __ASM_GENERIC_REGISTERS_H
+#define __ASM_GENERIC_REGISTERS_H
+
+#include <linux/compiler.h>
+#include <asm/common.h>
+
+/*
+ * pc_inside - check if the program counter is in [start, start + size)
+ *
+ * A single unsigned compare, so it also works for a region ending at the
+ * top of the address space.
+ */
+static __always_inline bool pc_inside(unsigned long start, unsigned long size)
+{
+	unsigned long pc = get_pc();
+
+	return pc - start < size;
+}
+
+#endif
-- 
2.47.3



