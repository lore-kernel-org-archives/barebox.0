Delivery-date: Thu, 01 Oct 2026 08:53:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCAfN-008LiI-0p
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 08:53:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 11B25201BC6
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 08:53:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QPHjX3oV;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AOdxB5E3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790837597; a=rsa-sha256;
	cv=fail;
	b=Gm6p1zEwnZFgh4Bpef4iOO+rHmuFiC4Na7OiT+HcybLy6QuLDHmJCZwDrKXoR/SzZllqge
	m/GwOOjWKQuKxQhVQBBZaXXTRiBToDQ36U0R/wT0Qq8DOzyTRybZogPZY1Jk2uxSsER41O
	qdb3VHspMDXlm+51nAXVREsj01z/U0YoQfZdqhnrrLrf/RZ3oLoWEh83ahzeL1KAMeZFM0
	V3+XTF9ZkaELXzojCBw9Z13wVoSThZrJjUbIKNjRt5spfw/7SLL6tKivTEIjcMj9Nk9Dpy
	VYQA135SDE6TUop5GFXwpQ7X3r0qzcnHFL9mV0P4dLkhiC/7aztUcmyB5Sf2fQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QPHjX3oV;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=AOdxB5E3;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837597;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=piTuevx3y2uarblV7Gpn672PjAxhd2Hy3WllMb9P4QA=;
	b=WizV3WqcTwqzsskwflIvcVS/OPuk0cfVptN2SG/kp5lYAEmb4E8ZlxqOXVgGQgTw7W8tg2
	Mei8g5YP8Feu67WNyL8MUme7ef7xZfHMH961fBDc5VcED8gJVMfT0RN1+TA9fGu5DWOfkM
	STXrLyBogHur34Kfzgfk21LTPxy+e3FQpWbr3O8Y70UDivJrnhB4OAE/t6fHmFihzNnKvd
	UHLpGpBIIL9YyrlkFbB4dOpqy82oKScrYoykn5l6h6N2QhVTFWCXCqmDLklUF+WfEkUmuy
	55mRYSLA+7P3D4SCoukbjlFKZ5DOYbioJB2EkW+FGYehHXTSB/p57SirvulSPg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=piTuevx3y2uarblV7Gpn672PjAxhd2Hy3WllMb9P4QA=; b=QPHjX3oVLPdK7Kq6snHQNoTD4b
	6TAFDvhRDsREWfY2AHRct5KaMUXslbx7GKNlk3p4cpqL4b7/ItF4N7IzWsr78I3I+VQJi3tBgjAi8
	w5QA8crrtmuOD3rdpS8ZKK0L4RpLg0XF7gMbYs06TAoWxnojETirVtoQZ0Y/1HId6PxQzD5o+3NbH
	u6aUxwEsGQji/7oAJpMbv7aVaMDINQfN+yBlOwwfKNJdAE9SYF3ii21h8AFNphvH3z/U0CKKhtIKm
	YmJUnTk2zLBULttlw3V7QgayTUDjZUtLgs5meKRJxhep/joDaNDfiXyCPKOkIsyn/zKJeW7GphV6O
	d9ofPUaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAez-00000007vbT-3BOd;
	Thu, 01 Oct 2026 06:52:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCAex-00000007vam-0BOT
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 06:52:52 +0000
Received: from dharma.fritz.box (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E851B2007F9;
	Thu, 01 Oct 2026 08:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=piTuevx3y2uarblV7Gpn672PjAxhd2Hy3WllMb9P4QA=;
	b=AOdxB5E3mL9vuJriSmS1i28rKj9YxFIbydbPeAPN2c+MUmK5nUAdJEaIrrET4h3WCzzj5c
	QPDc/Yr1e51sZV69IiNDV4r4qMIocT9qslQ1KDE0RicQd6DjIDp5bV4yMu2EWXC0vhUokl
	2vm3Avz8IMuX+ofvbzq8+N5QwHabru91TenhHJ27McXeGufu3egrzBd4HzU4J/gU1vBPLP
	6kVCbl6d1flIrh413ICLxF1jXhWphh/wHihSn7UOtvZwPgN//NHZdAG/WAIGjFJYBpvkHQ
	T6ltQj5YgkIDrdi0mZKLMeJBhr588IKsHgBDf+GkMGlCv2Rlx5vnzgvUpxXVYA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790837569; a=rsa-sha256;
	cv=none;
	b=S4zOLOFrNlx2DEd6npaamxar/AV8T5YzqOtaef5LQETT2/hsFBiDDINr1wOyaBCaePoIeV
	JLyXbm25HJPdZnpdi7i50ldVJnafNV/Rlj5H20LiJl5MD1r1DQxfKXIx+WNpbx66bFhyIn
	/thWsRf3XQT4hIqguewPncR1wlkxylgl8kkErKZn9SHWzF2bZ1mBQLx4NbSNSaq22tPYiU
	5/k4CrCp9abVf/eaLcCHMA1ApSil1869B4559EdPUBOFkPyXU1LwWavxRzEy1EHb3bK5cH
	JkQZHxADbmSYbYpXBINl3AeBoeIaD+jBIN0EReJGL4BP9l6DcgreeGXVefsBCA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790837569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=piTuevx3y2uarblV7Gpn672PjAxhd2Hy3WllMb9P4QA=;
	b=FUZmywSTl8n0x0Qysf9bOcpxUIVzoE7I5UpkaikO+hn2goHfJHl3ySGMV7gSQ2UXdM7b7h
	CpYbUKWqzQADrh844p9M2ygNLM5Jvk5kuZedm/4gF6nZbN4VskXb4iDefpSffmtc09MkTI
	C99yE1hs9GFSS86PjqDUM92tGJQjwAX+Tva3NuU1hbh+kbjl4RLsNnBeOpsJ2cZk1YZoev
	ZbQvhdXOTEH0KyWbm6toVQNBxjETxip5dPVi81ttqYPiE4BUQCbCilf27t6eBPJ1+2Xh5g
	ZL9JplZ/MXT4BXufAVuRsh7KGMud2RmuVTLmh9d2Y8/rGT4G82QkVKuz/PbMlw==
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Subject: [PATCH] ARM/RISC-V: pbl.lds: drop ALIGN before _text and assert entry at start
Date: Thu,  1 Oct 2026 08:52:47 +0200
Message-ID: <20261001065247.152618-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_235251_264683_F8CC7A0E 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  .image_start and ._text only hold the zero-sized __image_start
    and _text markers, so the location counter is still 0 when it reaches the
    ALIGN(4) in front of ._text. The ALIGN was only meaningful whil [...] 
 
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
X-Spamd-Result: default: False [-54.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_ONE(0.00)[1];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.065];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 11B25201BC6
X-Stat-Signature: grag85goabwcinbz5sc664o8k6rx6hit

.image_start and ._text only hold the zero-sized __image_start and
_text markers, so the location counter is still 0 when it reaches
the ALIGN(4) in front of ._text. The ALIGN was only meaningful while
PRE_IMAGE could place data of arbitrary size there. RISC-V copied the
sequence from ARM.

The PBL must start with its entry code: it is started from its first
address, the image size is taken as __image_end, and code copying the
image uses __image_start and _text interchangeably. Assert that
instead of silently relying on it.

Assisted-by: Claude:claude-opus-5-5
---
 arch/arm/lib/pbl.lds.S   | 3 ++-
 arch/riscv/lib/pbl.lds.S | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index c4abfc5989..2c96034c4e 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -40,7 +40,6 @@ SECTIONS
 
 	.image_start : { *(.__image_start) }
 
-	. = ALIGN(4);
 	._text : { *(._text) }
 	.text      :
 	{
@@ -152,4 +151,6 @@ SECTIONS
 
 	_barebox_image_size = __image_end;
 	_barebox_pbl_size = __bss_start;
+
+	ASSERT(_stext == __image_start, "PBL entry code must be at the image start")
 }
diff --git a/arch/riscv/lib/pbl.lds.S b/arch/riscv/lib/pbl.lds.S
index 17cd61ff75..e580ec06f3 100644
--- a/arch/riscv/lib/pbl.lds.S
+++ b/arch/riscv/lib/pbl.lds.S
@@ -14,7 +14,6 @@ SECTIONS
 
 	.image_start : { *(.__image_start) }
 
-	. = ALIGN(4);
 	._text : { *(._text) }
 	.text      :
 	{
@@ -87,4 +86,6 @@ SECTIONS
 
 	_barebox_image_size = __image_end;
 	_barebox_pbl_size = __bss_start;
+
+	ASSERT(_stext == __image_start, "PBL entry code must be at the image start")
 }
-- 
2.47.3



