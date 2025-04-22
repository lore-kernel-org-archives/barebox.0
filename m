Delivery-date: Tue, 22 Apr 2025 10:39:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AF-003ydJ-34
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AA-0002ao-2J
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bP6k7xNhRIUM9mmLW02JIa1WAHpiJG7l55snbSLCnKA=; b=YLz+x6G7UhCAEYy5cCmpzvS9RD
	wWqUgVct78Mjr5W2eFknlinB0b9mRu7HjVgdpA9n0GmOOpEXKPpJDbAgam6oye/0jiEpG1tIa9jMO
	sPPy0v/QQmR3dPgP61nTgReA/IMVoK7bN9Brjyhmp32S0wC9W0LT0tnZrH6LtMjjTlWo+ceVK0oCZ
	T6KCX+R933ZO/ICCQkHK4mypmW9Fx3N0xVHa02QMQ4HQbtkf0fuxqnWc2GcuGPJcctI9bsiOrBlJg
	ge/g5fi0x122hTHOhaPWe+XZcJrH2i8jO8do3e75zpw8r5PPQ/wyWMOxFExuBNZHIhhShvaBtNE15
	CJKSUuUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799J-00000006MxX-39SF;
	Tue, 22 Apr 2025 08:38:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78VI-00000006CbF-3h6H
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-0000ox-Q6
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:57:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-001Vwh-1w
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-000vdi-1f
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:57:13 +0200
Message-Id: <20250422075714.221527-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075714.221527-1-a.fatoum@pengutronix.de>
References: <20250422075714.221527-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005716_977165_07C4D352 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] ARM: define position-independent __pi_memmove/memset/memcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

For future use in the EFI loader runtime service code, have ARM arch
support define a memcpy that's completely position independent with
the same name as in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/lib32/memcpy.S  | 1 +
 arch/arm/lib32/memmove.S | 1 +
 arch/arm/lib32/memset.S  | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/lib32/memcpy.S b/arch/arm/lib32/memcpy.S
index ffa4c8f394bf..e48e077c5941 100644
--- a/arch/arm/lib32/memcpy.S
+++ b/arch/arm/lib32/memcpy.S
@@ -62,3 +62,4 @@ WEAK(memcpy)
 
 ENDPROC(memcpy)
 ENDPROC(__memcpy)
+SYM_FUNC_ALIAS(__pi_memcpy, __memcpy)
diff --git a/arch/arm/lib32/memmove.S b/arch/arm/lib32/memmove.S
index 6410554039fd..836286bc990f 100644
--- a/arch/arm/lib32/memmove.S
+++ b/arch/arm/lib32/memmove.S
@@ -204,3 +204,4 @@ WEAK(memmove)
 	UNWIND(	.fnend				)
 ENDPROC(memmove)
 ENDPROC(__memmove)
+SYM_FUNC_ALIAS(__pi_memmove, __memmove)
diff --git a/arch/arm/lib32/memset.S b/arch/arm/lib32/memset.S
index b0c0e11e991b..57dd1aa6daad 100644
--- a/arch/arm/lib32/memset.S
+++ b/arch/arm/lib32/memset.S
@@ -132,6 +132,7 @@ UNWIND( .fnstart            )
 UNWIND( .fnend   )
 ENDPROC(memset)
 ENDPROC(__memset)
+SYM_FUNC_ALIAS(__pi_memset, __memset)
 
 ENTRY(__memset32)
 UNWIND( .fnstart         )
-- 
2.39.5



