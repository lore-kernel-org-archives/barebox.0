Delivery-date: Mon, 13 May 2024 16:02:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WFm-00Ch6o-34
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 16:02:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6WFm-0007gS-C8
	for lore@pengutronix.de; Mon, 13 May 2024 16:02:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aHO2lGHx3B6Ldzm4e2tPkPztKlo1oyhUijZwAF5HXa8=; b=eCb2aUrdHiieXrWWb9uHyMoW7h
	sb98bKYXLwTW0N52fjpq+cet71HzWLxecVHiuyfhWJjC4SYXuMB7z5mllB51wZdEW8kE2c6Us92Un
	bXtRGA2zR557h8YHCblhd2bqiZUv6JE66d6SyBB3tE7+KoSwvpV+yldGshXyyH/Vtg1HlXelniczS
	eYvKZKDo90JJ6ZIX7/zYCQxYrynUSYXYyJ91OUezAYvx5w7xr2iLlAr5dCSILw0XYw9a3j0xEDmet
	GqdS3dPJwbChe3rE521J4LvcvwG8WMvtSRGoi68khkuAxK3/EoPsBJ1HVBrZ97kzusz0bGh0Fa8Js
	9HDYgyhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WF8-0000000D6V9-0KzB;
	Mon, 13 May 2024 14:01:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6WF4-0000000D6UN-3Nj4
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 14:01:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6WF3-0007LW-Bf; Mon, 13 May 2024 16:01:25 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6WF2-001BDG-VC; Mon, 13 May 2024 16:01:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6WF2-005fUo-2n;
	Mon, 13 May 2024 16:01:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 May 2024 16:01:21 +0200
Message-Id: <20240513140121.1351106-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_070126_863201_676C12B9 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM64: reloc: fix relocation error for big fat bareboxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A multi_v8 barebox with KASAN enabled is 2051804 bytes even after
compression and this breaks linking for me:

  arch/arm/cpu/common.o: in function `global_variable_offset':
  arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x1c):
    relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
    `_text' defined in .text section in .tmp_barebox1
  arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x40):
    relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
    `_text' defined in .text section in .tmp_barebox1

This is due to adr's limitation of only addressing bytes +/- 1 MiB from
the current PC. We have a solution for this in the form of the adr_l
macro, which we define for out-of-line assembly. Opencode this into the
inline assembly function, by using adrp to compute the page offset and
then add to arrive at the correct offset within the page.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - fix typos: s/adrp/adr_l/, add unit (bytes) after barebox size
---
 arch/arm/include/asm/reloc.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/reloc.h b/arch/arm/include/asm/reloc.h
index 95b4ef0af88b..2d7411ab5284 100644
--- a/arch/arm/include/asm/reloc.h
+++ b/arch/arm/include/asm/reloc.h
@@ -18,7 +18,8 @@ static inline __prereloc unsigned long global_variable_offset(void)
 	unsigned long text;
 
 	__asm__ __volatile__(
-		"adr    %0, _text\n"
+		"adrp   %0, _text\n"
+		"add    %0, %0, :lo12:_text\n"
 		: "=r" (text)
 		:
 		: "memory");
-- 
2.39.2



