Delivery-date: Mon, 13 Apr 2026 14:37:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXX-00BiW1-1i
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 14:37:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCGXW-0001nF-T1
	for lore@pengutronix.de; Mon, 13 Apr 2026 14:37:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A4ylfjh1q5PEspuakN9W9Q0QRj9kz9GYLokVebwPgMw=; b=2u2h7ILHvl/LsR
	bdKnABsNvfkmNHeIRA0sw01G0ul6nAPgse0avYmC4JgDG9EeTZ8IhLNWctvLSQY7U0WZjrKsdHi6g
	EOhPrLpObL9LxC2a7qXucCy7vNgLSF9LcFmw0gd4owBwP/f94lU9Fhk0j40puGfKY93DaHlCfspKP
	igHUMt004Uj6+1pnJRXMaN1spiWB8FBo5ELuiegIYaxSKqFZR/fmZk90whcKKqJhQAY1zvyw3fwT+
	MCKpFqfTmkYE9rU7QaO31Q+Zluiv4XmFpXfdbql33asDc2VcxDV8Lvfsu7JVxRo8sR/TURQQ4qNdE
	/C2ZON8gESzJPZuEx6HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGX9-0000000FfN4-1rrd;
	Mon, 13 Apr 2026 12:36:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGX8-0000000FfMQ-2EA4
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 12:36:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A4ylfjh1q5PEspuakN9W9Q0QRj9kz9GYLokVebwPgMw=; b=LlFLZSxrtCkUER3Qxxyhl+S7gH
	P3fhoJ10bcF83CFg5n/7cZZi2UfVs/xEk05ogsc4Yq8Jd4kuRwJ7R3/3COWbFmA1IGmKfmQ76rHld
	IfppBroXEaH8xnoK/L0VvkoESSqREcgoQ89eCEsC/lh9buvnNSX7/iEfNRcZJrKEReexA6erdTVqL
	CIIeb5F9cGSXZy1Hl1fRhPRxwGREcRekW/fxvvplItty/1Oz1rP6Bff+EnXMoRMaGhmPAJJc316DY
	ltPXmyyXQd+opfSHY/DhiJNAdgz4xwHApKuLgJu8s5tRnjm65Ge34c1lO/zzvFbp0Z87BGBfFesMx
	3XreTG1A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCGX2-0000000GnPG-407G
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 12:36:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0001ce-RF; Mon, 13 Apr 2026 14:36:47 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-005AoT-24;
	Mon, 13 Apr 2026 14:36:47 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCGX1-0000000Eu3y-2D5t;
	Mon, 13 Apr 2026 14:36:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Apr 2026 14:36:45 +0200
Message-ID: <20260413123646.3552086-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413123646.3552086-1-s.hauer@pengutronix.de>
References: <20260413123646.3552086-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_133651_699136_3F532C80 
X-CRM114-Status: GOOD (  10.10  )
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
Cc: Sascha Hauer <sascha@saschahauer.de>, "Claude Opus 4.6 \(1M context\)" <noreply@anthropic.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] efi: loader: fix SizeOfBlock underflow in relocation processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <sascha@saschahauer.de>

rel->SizeOfBlock is a uint32_t read from the PE image. If it is smaller
than sizeof(IMAGE_BASE_RELOCATION) (8 bytes), the subtraction
SizeOfBlock - sizeof(*rel) underflows. On 32-bit architectures (ARM,
i386, riscv32) the resulting huge unsigned value divided by 2 fits in a
positive int, causing the relocation loop to iterate billions of times,
reading and writing far past the relocation block.

Reject relocation blocks with SizeOfBlock smaller than the base
relocation header.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Co-Authored-By: Claude Opus 4.6 (1M context) <noreply@anthropic.com>
---
 efi/loader/pe.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/efi/loader/pe.c b/efi/loader/pe.c
index 3190718df5..ea385c8795 100644
--- a/efi/loader/pe.c
+++ b/efi/loader/pe.c
@@ -120,6 +120,10 @@ static efi_status_t efi_loader_relocate(const IMAGE_BASE_RELOCATION *rel,
 	end = (const IMAGE_BASE_RELOCATION *)((const char *)rel + rel_size);
 	while (rel + 1 < end && rel->SizeOfBlock) {
 		const uint16_t *relocs = (const uint16_t *)(rel + 1);
+
+		if (rel->SizeOfBlock < sizeof(*rel))
+			return EFI_LOAD_ERROR;
+
 		i = (rel->SizeOfBlock - sizeof(*rel)) / sizeof(uint16_t);
 		while (i--) {
 			uint32_t offset = (uint32_t)(*relocs & 0xfff) +
-- 
2.47.3



