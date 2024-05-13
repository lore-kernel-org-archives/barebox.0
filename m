Delivery-date: Mon, 13 May 2024 11:59:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6ST2-00CQST-2B
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:59:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6ST2-0004MJ-3R
	for lore@pengutronix.de; Mon, 13 May 2024 11:59:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gi9M6PoEMmUsuO64sd9pdigDRE4nBypmlueyLbUgRVE=; b=m9C6eHLAXAOuDsDhxvneWsuZTQ
	D52baG74DE6Td20U1djD1wKftIlXgKKQs8Y2K6HJ0y4uwA4KAyXgLPZ9jpfWtwYrGwDN+/RxxYGoB
	VQVlai06za4/GyH4tfhPqWFlrz/JtNqhtN4avBbpftoEjFHBNuKovGpFoQ6dtyHE9yoziHupzKsyu
	tMNTJuRBqvMYhEH3VbKohtyvoAogOhtNHS2YCdPMqiJvb3vh8hWypqUiuBDAOz8tJRQv4H/dp8l5Q
	1OkNQE5uvFE+wflg0b/Mzon/glfwCKbSOCY4brVnA4zmycxfxk1xNy2yw97eDwaqqtPmm+Jni3afJ
	ChIIvODA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSQ-0000000CSwm-3unj;
	Mon, 13 May 2024 09:58:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSK-0000000CSuC-2vSN
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:58:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSH-00047o-Eh; Mon, 13 May 2024 11:58:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSH-00191K-27; Mon, 13 May 2024 11:58:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSG-00AAQ6-37;
	Mon, 13 May 2024 11:58:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 May 2024 11:58:47 +0200
Message-Id: <20240513095847.2420044-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
References: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_025852_767615_6CE3818B 
X-CRM114-Status: GOOD (  10.58  )
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
Subject: [PATCH master 3/3] ARM64: reloc: fix relocation error for big fat bareboxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A multi_v8 barebox with KASAN enabled is 2051804 even after compression
and this breaks linking for me:

  arch/arm/cpu/common.o: in function `global_variable_offset':
  arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x1c):
    relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
    `_text' defined in .text section in .tmp_barebox1
  arch/arm/include/asm/reloc.h:20:(.text.relocate_to_current_adr+0x40):
    relocation truncated to fit: R_AARCH64_ADR_PREL_LO21 against symbol
    `_text' defined in .text section in .tmp_barebox1

This is due to adr's limitation of only addressing bytes +/- 1 MiB from
the current PC. We have a solution for this in the form of the adrp
macro, which we define for out-of-line assembly. Opencode this into the
inline assembly function, by using adrp to compute the page offset and
then add to arrive at the correct offset within the page.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



