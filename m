Delivery-date: Wed, 13 May 2026 15:59:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7b-001HC2-1c
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 15:59:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNA7V-00012u-Nl
	for lore@pengutronix.de; Wed, 13 May 2026 15:59:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9cfk4o0sgGFO7yZWIxRrdD6uNKVL6sy9S4jTWWjrBHQ=; b=WfcGpjbJIvZl7/fNTwYvGdO2be
	ZgjL3/CDeCVvP+gbva18pq6MhvTpeLxkQWNuT0ZC8zEoPE1zYrVnGYR6/29xUqDaaLPFMN0LmH8m0
	ZnA0E8/XtkqJzB6zxBNI2E0G0nzwUlmOGKT9AHwZ9ZG4Q4hZ6fGEWSP7r799lTGqVfv0M8ZGEfG9H
	DCvodxEMeh6OxX+yDQug9sXw/JAM0XKSdpUn0HTTipkWwOtNts3Y9YAPoF0dsFN8DE/TUZi2NQODk
	+cIg0nEQUaydULb2i/zsgumLpZJKWQIFidpO54GdbW3bW/nGHk3vsCn32lC9Cjh/x/oiwydF0mQ5D
	/xh/yPlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA68-00000002qdP-3nZM;
	Wed, 13 May 2026 13:58:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA67-00000002qcd-3Z7C
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 13:58:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=9cfk4o0sgGFO7yZWIxRrdD6uNKVL6sy9S4jTWWjrBHQ=; b=W24zynuNztueW1WiCplk9LJCtA
	uYqV/l7kGVfkVFrhr0UUHXu1irjSVnBkK7Xh3a1sRX3SqgBrUpqu6G5d/XvFOdiicIKpcCSJ0KHXH
	jWFXH4sSHqR/BnlhiybXSFkgD2FNwNQ36ur7cahohyQyEIsIfuKVJd9qmUvwgrnso2XF4F9lI2aK5
	aMe4OCD9ocHPGs+MaiuiQhX2myXTFz+cxYenLJkm2GIihWrJiZL1mv1oP9PUpx+FTGr9P4lqU+odw
	ikl5v64XOrE/hQOyk4g7LKR0frxRY1Foi5U8D23L+yMott0u/0WHmXchChaGvG3RCJzojY6qvczaK
	2aqktM/w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNA63-000000005n4-1vto
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 13:58:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-0000Rj-BM; Wed, 13 May 2026 15:57:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-000biR-0t;
	Wed, 13 May 2026 15:57:59 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNA63-00000001Ckb-0ubU;
	Wed, 13 May 2026 15:57:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2026 15:57:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-pbl-elf-fixes-v1-1-440cc04c634f@pengutronix.de>
References: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
In-Reply-To: <20260513-pbl-elf-fixes-v1-0-440cc04c634f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778680679; l=1360;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iXC4VbuVKuxyy4T9nzs4xxVzQxqGrFLdk469wiD+Jiw=;
 b=iuIf+YJyyf1GJ885id9wmX7ozeMqwcHCrqqN+x7oJYVA/FWe1gUILPbbLudlz9i9wjFPheaG3
 3qe2iaUBzKBDHeldir0Bpl1uq8EFfyY0rtRGQqhDfwwPKZ6J+R1knoX
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_145759_884528_C7C305FA 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: fix wrong calculation of barebox base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We assumed that barebox_image_size matches the size of the uncompressed
barebox proper binary. This was true until dbbca16895, but since then
the uncompressed length of the barebox proper binary includes the ELF
header whereas barebox_image_size does not. With this it can happen
that barebox_base is calculated too high resulting in the malloc area
overlapping the barebox image. For now fix that by using the real
barebox base address from the __image_start linker variable.

Fixes: dbbca16895 ("ARM: link ELF image into PBL")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/barebox-arm.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 99f8231194..611b2bb2d6 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -194,11 +194,15 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 						  unsigned long uncompressed_len,
 						  const struct handoff_data *handoff_data)
 {
+#ifdef __PBL__
 	unsigned long size = uncompressed_len + MAX_BSS_SIZE + __handoff_data_size(handoff_data);
 
 	endmem = arm_mem_ramoops(endmem);
 
 	return ALIGN_DOWN(endmem - size, SZ_1M);
+#else
+	return (unsigned long)__image_start;
+#endif
 }
 
 /*

-- 
2.47.3



