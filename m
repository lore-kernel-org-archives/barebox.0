Delivery-date: Tue, 03 Nov 2026 14:18:26 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xOEPC-006nwF-0w
	for lore@lore.pengutronix.de;
	Tue, 03 Nov 2026 14:18:26 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 206222004B6
	for <lore@pengutronix.de>; Tue, 03 Nov 2026 14:18:22 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ov/0yK1x";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QRvGV5Vq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711902;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JlYLX/kcaBPIsuaHfU8WDF2Nod0q8/6rKSz9lWUd4Tg=;
	b=aUdvHg9fChYFIUGfOR5n1BiyRyMVpg1lXQbO8HAT+OcIbxMo4tHDir6gjkfsKdq5dK+DE6
	RMehHLWIVfMRCkx7gjVsbmfc5z87mCTAUQoAu+dCrVOiUtMd2WhovsaoIWsCXdiGDjSLo9
	PoNsk8yJo0k7axaQ7iK3aN4BzeD245st/dc16kWdk3PAHXgnYlHREo+yMdJ46MCzQGF+Qm
	Qn9KxpYjnhLeoF5U5YkYLZrLnHT7xKQ4N47wayrEukmKJxzc5TdLEak2aLECAYxtQJOkO9
	p/au/Vy8hDrjenyMtvQKgOzji/SVGG+zriM8UdXyKAyWeW0qcCDt5DuRzK8A5A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="Ov/0yK1x";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QRvGV5Vq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793711902; a=rsa-sha256;
	cv=pass;
	b=HH+IjMMaxfL6VV97TAE4V3dZfTU4PTVT2ip4vdwsSGyUADwvgezvKE3EwWm+z72HkRpATt
	xLw97h2ApdRnGqLJhmxkvZX4f3ED5l9ICFd9UWMsOkg7OYUGNuCUi8ZRjZ037vMx7wZXX4
	bvpGvweNwnd4hsMGf9LJHo7t5nFbeEwUgHnOC89k/ipNnyLO6P3wOvgVJSrOjlzSMv/tNI
	RE4lLftzNkFOBABuQ5VWm9YxnRZRjPsIhtYysCmCDxeKYt2r0twJ3HCeSzvSSH78kY5MUp
	puYrHb+b1Z5QX5L7Nkf4KaHIbqtdEcz5pGW47hAL6xXqAb/Q9AHaWVuVxj4pbg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=JlYLX/kcaBPIsuaHfU8WDF2Nod0q8/6rKSz9lWUd4Tg=; b=Ov/0yK1xCitPUvYUwcF6u44WRB
	U139kHUbqDLVUAICbP8eNw4Qr4mcnZdIZo9hIpwblQ4IDsPxEm0l1bYdG8Al0GnyT7Xd91mSWTSi4
	jjbFdVixWYqIg60I2yI4+GCAALx2qfiy8HH6bgXEyFIKS+hxPqNWzaJMu7lJp77FXxfuTRAha4PNm
	2WJWopdAeilqr1aoVoGQR4YrnonIWBq/alWSjqD2lyxs+zYGJnK0Uum6TORwRuXAHSjv5DgemLN+f
	IAxXlUDdcICc1sSSydzTOgJ6qT8YmeOx+wkNyUKYPSF5QuvSjgvg+Bke1yQt+AGVgmzZd0C3LELSV
	3gLbnVEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOENu-00000002WBW-1HBY;
	Tue, 03 Nov 2026 13:17:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOENq-00000002W9g-35kU
	for barebox@lists.infradead.org;
	Tue, 03 Nov 2026 13:17:04 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE42020282F;
	Tue, 03 Nov 2026 14:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JlYLX/kcaBPIsuaHfU8WDF2Nod0q8/6rKSz9lWUd4Tg=;
	b=QRvGV5VqW3dICGycD7R4BoF9nXybZoFDnJNKsMamB5x+jG8btzoE5fPMdCkf/dJnutkFnz
	Vaedjaus3vpt38ryYthc8O9Bp2MNUa8J8hJ+AtNDroVAndJXThAXfurinNGAuF3gkA3XsS
	4NYji/hFnBATOsM6yu45kmZY8w/nQlk8gY+ErbjRwsJhBKPU0niqhsxJTZnMgZsnaqGh8m
	3CUzPygX3buaXF8RKTPv0S5e4FfuXqJ4YeshtpskENU/cM7zfTd0EO5ctu67fMuuiXU0vR
	4KRGyixiC94H9kMEUGadyMSKGwfkCZPJ+eMaWvJehwm5Whc640MhpizxMpSuzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793711814;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=JlYLX/kcaBPIsuaHfU8WDF2Nod0q8/6rKSz9lWUd4Tg=;
	b=K9v7ku9n2/VQfTjqU7/EwD648PYTQCXo4H92H5RJ0IFr8ifGOM7PGeZl9CISFhZBapQ0Sj
	LipOxosz2oFiIgqJ94936CizvGxeqBCoTggNrXAzmXBfZkJGGA57L9g+bGeRzNwDIUX4OO
	LA2jMPiZ5jIFdYxMFM0W6zvENHY8myWv7xFdqqthuvE6jzUMBalMHOkyZePtgPCGLYA0mt
	3S9aJT3/pA981Z6RfJyrQ9XlSIgdwbR6H5o7b9hAnJndgCKanB0zvAsMMrxduCnun5c9gP
	QLEVAZmLV0DdC+OJLk/PnulCTqR6zcjyZmQDxP2sBSQAehDCCvNEVAcyOUyZ8g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793711814; a=rsa-sha256;
	cv=none;
	b=Lm/dXV2vQxmphmRr33rQa/4fgGDT5aeFUDpzWmxAVtlWLfM5JkBBB0EslQsR3LT+eEBDAD
	bDzq216OScbXZaKW/6uWPhJPzZ1Vk7w6EhadWt5rEl1XvOX7mGDbQrxJEiglB4w568VC8R
	ZZivMouK97uFkV+ULbIK5IZ330D1bI3t8i4n3MsRFpEDr4rpyj7SY0WYokbD7P5XLgf8v5
	1BCQoRVD0i/1njkQn5alTzMENuc4xtPpkWhv5GDiYj9z3YOm8PJGu/fppzkeWK1+LuwgUu
	fNQKBzmX+JKH+xTeQWyY0uyMbArFVrb4ml825tBa963UayLFWAnByj1sZV0woQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BA8767406DD;
	Tue, 03 Nov 2026 14:16:54 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/2] ARM64: mmu: map normal memory Inner Shareable
Date: Tue,  3 Nov 2026 14:16:08 +0100
Message-ID: <20261103131652.663786-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_051702_943840_3C9D954D 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Commit 77446c78219e
    ("ARM: aarch64: mmu: use PTE_* definitions from U-Boot") back in 2018 was
    meant to only switch to the U-Boot macro names, but it also changed CACHED_MEM
    from Inner Shareable (PMD_S [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: 206222004B6
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: eeyb3n9mbbdzbrn7assf5fy5nmgrccnn

From: Ahmad Fatoum <a.fatoum@barebox.org>

Commit 77446c78219e ("ARM: aarch64: mmu: use PTE_* definitions from
U-Boot") back in 2018 was meant to only switch to the U-Boot macro names,
but it also changed CACHED_MEM from Inner Shareable (PMD_SECT_S, 3 << 8)
to Outer Shareable. TCR was left at Inner Shareable, so since then, the
page table walker reads our translation tables Inner Shareable, while we
write them Outer Shareable.

All of Linux[1], U-Boot's generic ARMv8 code[2] (except for SoC memory maps,
like i.MX8M, which uses Outer Shareable), TF-A[3] and OP-TEE[4] all map
normal memory Inner Shareable. TF-A and OP-TEE run on the same core and
access the memory we pass them without cache maintenance, which the Arm
ARM[5] only guarantees to be coherent if the shareability matches.

Neither mismatch is assumed to have caused issues: we clean and invalidate
page table entries after each update anyway and the Cortex-A53, likely
our most used ARMv8 core, has a PIPT data cache without shareability in
its tags[6], so both mappings hit the same lines.

Hardware-coherent DMA, which we only rely on for Layerscape and virtio
and soon Agilex 5 would be affected if an SoC didn't extend the Inner
Shareable domain to the coherent masters, but this is assumed to be
fine as Linux would also use Inner Shareable for them.

Therefore, let's switch CACHED_MEM back to Inner Shareable.

[1]: Linux v6.18, PTE_SHARED and TCR_SHARED in
     arch/arm64/include/asm/pgtable-hwdef.h
[2]: U-Boot v2026.10, get_tcr() and mmu_map_region() in
     arch/arm/cpu/armv8/cache_v8.c
[3]: TF-A v2.15.0, xlat_desc() in lib/xlat_tables_v2/xlat_tables_core.c
     and setup_mmu_cfg() in lib/xlat_tables_v2/aarch64/xlat_tables_arch.c
[4]: OP-TEE 4.10.0, mattr_to_desc() and core_init_mmu_regs() in
     core/arch/arm/mm/core_mmu_lpae.c
[5]: Arm DDI 0487M.d, B2.11 Mismatched memory attributes, B2-331f.
[6]: Arm DDI 0500J, Cortex-A53 TRM, 2.1.6 Data side memory system, 2-4
     and 6.7.1 Data cache tag and data encoding, 6-14

Fixes: 77446c78219e ("ARM: aarch64: mmu: use PTE_* definitions from U-Boot")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
While a fix, I am not in a hurry to get this merged. next is fine to get
some more testing.
---
 arch/arm/cpu/mmu_64.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu_64.h b/arch/arm/cpu/mmu_64.h
index ad7c1bde5631..6cc28908b59a 100644
--- a/arch/arm/cpu/mmu_64.h
+++ b/arch/arm/cpu/mmu_64.h
@@ -5,7 +5,7 @@
 typedef u64 mmu_addr_t;
 
 #define CACHED_MEM      (PTE_BLOCK_MEMTYPE(MT_NORMAL) | \
-			 PTE_BLOCK_OUTER_SHARE | \
+			 PTE_BLOCK_INNER_SHARE | \
 			 PTE_BLOCK_AF)
 #define UNCACHED_MEM    (PTE_BLOCK_MEMTYPE(MT_DEVICE_nGnRnE) | \
 			 PTE_BLOCK_OUTER_SHARE | \
-- 
2.47.3



