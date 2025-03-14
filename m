Delivery-date: Fri, 14 Mar 2025 15:33:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt66i-00E2V9-2I
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 15:33:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt66h-00046w-IA
	for lore@pengutronix.de; Fri, 14 Mar 2025 15:33:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LM0PX4lw2eNjerqMj2Nd+A78hHV5tyKLZqa8WhEZvTU=; b=fsMDTaTdMky/8ae0vn29or1nnZ
	bNrNjcgn7Z/qSAVGSaQEBxYezKCo/Bn5UswK0V1ynHdVGb0+X26tvTJzc/oo5i9HMXznkaspuwGAj
	bkSoo+zf8D5XXS4vtZK35euBNS7QaqePgSMHNWd48rdUHSKyjRgqKwHZndjYkGeEq2VF5gQWW+LPu
	pjhwrH+PH/paWtnNeRf1nHZXxbY5TCDej2QixLydPc2PyhRWV3nvLqUDZ96Ux+7dwdMLvkjVhMbbr
	dtGcSwJcPgQQkyXZfYVUZ/YSr3z4IxBbTk14Qkzz7spAGANP5mje21yjG29AOmSInzKoVQ+zEZDvq
	SwCoP3Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt662-0000000EPEZ-2zyl;
	Fri, 14 Mar 2025 14:33:10 +0000
Received: from zdiv.net ([2001:4b98:dc0:43:f816:3eff:fee4:1d8c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt65z-0000000EPDZ-3zBO
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 14:33:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=24;
	t=1741962784;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=LM0PX4lw2eNjerqMj2Nd+A78hHV5tyKLZqa8WhEZvTU=;
	b=dFWbMKUq37f2ZWdJe9Z41FcvrbbXf7uaVwrpNS8/1bb3ejMQvsCXk8xv8sT1FPzYuDRYuh
	lPBC8H0RsPavP3zep6XccbiI2ur3clozRZ9cVIfRYco6QMDfDpgcGw6Kq9zaDsy5ehn4ni
	q1/0sb42ffB2p/MbBlrMj6D7Ol5gqZWa1vvp5r5xIw51SHPSCe8msnqIR7AjlenA2UAl01
	+pA6ZSSeCkDeFtCCWyuN9YmZbDiPWuWSsUZ1UaUvoA8mo9u/hYsjNTFll32MXTo7hwKF4h
	vuz/EzrcT4XVdDRMucJv/l1RMH85e+SzhSSa+jYuONZcu31sZMoEEue6lsVM5A==
Received: from mini.my.domain (<unknown> [2a01:e0a:12:d860:4866:44ad:6a94:b4e])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 3cb191db (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 14 Mar 2025 15:33:04 +0100 (CET)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Fri, 14 Mar 2025 15:32:54 +0100
Message-ID: <20250314143254.21753-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_073308_452994_D3F7DBEE 
X-CRM114-Status: UNSURE (   7.53  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: deep-probe: make __barebox_deep_probe_{start,end} of array type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 common/deep-probe.c  | 4 ++--
 include/deep-probe.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/deep-probe.c b/common/deep-probe.c
index b270a10f7f..69beaf2d80 100644
--- a/common/deep-probe.c
+++ b/common/deep-probe.c
@@ -22,8 +22,8 @@ bool deep_probe_is_supported(void)
 		return boardstate;
 
 	/* determine boardstate */
-	for (board = &__barebox_deep_probe_start;
-	     board != &__barebox_deep_probe_end; board++) {
+	for (board = __barebox_deep_probe_start;
+	     board != __barebox_deep_probe_end; board++) {
 		const struct of_device_id *matches = board->device_id;
 
 		for (; matches->compatible; matches++) {
diff --git a/include/deep-probe.h b/include/deep-probe.h
index e3770fcf0d..9ba9d09ec3 100644
--- a/include/deep-probe.h
+++ b/include/deep-probe.h
@@ -19,8 +19,8 @@ static inline bool deep_probe_is_supported(void)
 }
 #endif
 
-extern struct deep_probe_entry __barebox_deep_probe_start;
-extern struct deep_probe_entry __barebox_deep_probe_end;
+extern struct deep_probe_entry __barebox_deep_probe_start[];
+extern struct deep_probe_entry __barebox_deep_probe_end[];
 
 #define __BAREBOX_DEEP_PROBE_ENABLE(_entry,_device_id)			\
 	static const struct deep_probe_entry _entry			\
-- 
2.48.1



