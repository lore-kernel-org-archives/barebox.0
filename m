Delivery-date: Tue, 22 Apr 2025 10:39:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AK-003ye5-0u
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:39:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u79AI-0002jS-FE
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:39:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3gDoMFGBAnWXuaVXSI0lz+pku+16heq0uKEksLEaVZw=; b=B5oeZvYYRUbWOeZtQkieAqibmK
	25nuYj8sjOrh52w9dlZftJQRmcHzLmjS5+sjp08/zwMHAR+SJ+mY+tVjzvNHT9vIHBVmejdesZG3Y
	3haH3DaWsj40/tUHTEwHBYtHia1NeaXNRrq9m556pPej4RQpEzuGAo8R0aTkCi6u9Bb1SEAH2pn8C
	/vddjqEFMi0oj76QXOZtSV76oIdlj//fH7R95AIoO3JZ3MCXdXzqP7OJTTBKNOofCZJZTw9ySfrpE
	MURaKmJglsuvejZ54lffS9tb0y06EV6/q6RlIEssM+OzsepNOgICcX2sYo+OFrvU3OOdjG/TaGJR5
	7FWRBHGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u799M-00000006MzN-3EoF;
	Tue, 22 Apr 2025 08:38:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78VI-00000006CbG-3thg
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-0000oy-Ro
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:57:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-001Vwk-26
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78VH-000vdi-1o
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:57:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:57:14 +0200
Message-Id: <20250422075714.221527-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075714.221527-1-a.fatoum@pengutronix.de>
References: <20250422075714.221527-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005717_015636_390D8B24 
X-CRM114-Status: UNSURE (   7.54  )
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
Subject: [PATCH 3/3] RISC-V: define position-independent __pi_memmove/memset/memcpy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

For future use in the EFI loader runtime service code, have RISC-V arch
support define a memcpy that's completely position independent with
the same name as in Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/riscv/lib/memcpy.S  | 1 +
 arch/riscv/lib/memmove.S | 1 +
 arch/riscv/lib/memset.S  | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/riscv/lib/memcpy.S b/arch/riscv/lib/memcpy.S
index 51ab716253fa..c178ebf0996e 100644
--- a/arch/riscv/lib/memcpy.S
+++ b/arch/riscv/lib/memcpy.S
@@ -106,3 +106,4 @@ WEAK(memcpy)
 6:
 	ret
 END(__memcpy)
+SYM_FUNC_ALIAS(__pi_memcpy, __memcpy)
diff --git a/arch/riscv/lib/memmove.S b/arch/riscv/lib/memmove.S
index 07d1d2152ba5..442889cdc990 100644
--- a/arch/riscv/lib/memmove.S
+++ b/arch/riscv/lib/memmove.S
@@ -62,3 +62,4 @@ exit_memcpy:
         move a1, t1
         ret
 END(__memmove)
+SYM_FUNC_ALIAS(__pi_memmove, __memmove)
diff --git a/arch/riscv/lib/memset.S b/arch/riscv/lib/memset.S
index 34c5360c6705..7b1b642dde19 100644
--- a/arch/riscv/lib/memset.S
+++ b/arch/riscv/lib/memset.S
@@ -111,3 +111,4 @@ WEAK(memset)
 6:
 	ret
 END(__memset)
+SYM_FUNC_ALIAS(__pi_memset, __memset)
-- 
2.39.5



