Delivery-date: Tue, 01 Sep 2026 17:15:38 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QD3-009gVy-1I
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:15:38 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8F3CA20584D
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:15:33 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=dGgEmlSk;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=eiRuOvnC;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qR/M6VvsqkvVab8tzROUD+6ZYTowM60XJB8YHl5YQL4=; b=dGgEmlSkuVJn7GS0QYpVkKondO
	Hb8vQ31Ail34JYCS9FX02wkIKrqCxkU1puWeX2JYQC0gRVOB4OMAcRijPLOEsOnz61MHq42Ei1bhg
	ZRhfUF2lnBP2afKhLs7RopoIt8hB15jBofsl1eOpIw/O/wTbWjiKAntn0aRZRA3xzyavUu2cbuth5
	oc4hllu6WtkUqVB5m+D8ZBTU3Q5P5AhUNaz1rJyjeTneUlDIvpLu4R2BTQRGFL/2R+oqKAFgFQBHz
	VrTwxXvvfoFh7/mFC4l4d80rHjrda7LkVmIW5x5i0B0/ChI482jAxUs3AxRg0XNbbLiZoN3nuZO4N
	igG6D1bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBQ-0000000CRbG-3KJU;
	Tue, 01 Sep 2026 15:13:56 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBO-0000000CRYZ-0Ill
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:55 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-49b0dd3c9a0so34253595e9.1
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275632; x=1788880432; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qR/M6VvsqkvVab8tzROUD+6ZYTowM60XJB8YHl5YQL4=;
        b=eiRuOvnCdr0eztko6XO58UIqrwzhNQVtNVTs5GntRWUfLZwq0XTgsTSP0AvjtvqQgG
         62v2K4yFV9VPZvs0hTsU7Dlf2r8gHpYf+heKXb/OdPsg22IdhvMJ5lP1Z2mnzrvlW8qV
         +klUOSF0p18utdfpRTI4JnsFthj8abQ1iY3ATeZjPBm2pvFN86/g2iJaxw8cNLXznSJt
         ZaAGHCxyB+8py6+FFB7s7yp8AXth8Oq5CnOG1ONJHMgXV4VWsP5NFcr2CjSv36YWVsHg
         f5Kzr6KYNh6AJHARQTSKnOZq4F2Tm0kYsp4lY1CWRnHJAlYvXzFf64zt2i1hZBt6rjCr
         xqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275632; x=1788880432;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qR/M6VvsqkvVab8tzROUD+6ZYTowM60XJB8YHl5YQL4=;
        b=fbioQNnH2ScGZl1yEfM5kG64jaQAQiHktzmh7yr24ErdFWYMJ8yaNFmWu81W1xYoFy
         Wuyp7cJt9CCismGVbrWHhS+QkoAkPmt17Hg2EqNZhl/7/Jx9CS4i/wg5X7FiHQhs3qdI
         jZtG6dn+oG8HLUQcF+zzWKDFdwAqhQRPW3I0b81ESO2SbF0mKJ2CbeBSI/kgtwe88JgD
         ITeU6Y1emaBbJrDcaGbby+TAYlTgT6GHZz/6vBLuaCXLN1l7XGZjxgajETIchCyNEJ6Q
         Zr75VHnYL2++utLgMde4r3qfUhPXdQ+iuuMZZ4zw+zJNKqEMKGQ42LsKMxaGjPKRmQ90
         pGGQ==
X-Gm-Message-State: AFuF++nemQqKhogTNEw87L4ddQVQVAsADmTgHoyvt6gpm1ZUrqBri8dN
	WMhvfDJs2WxqMzMhgWRNy98p21DFq7XQ3Uk6RoU8L0rYjM4651bvX3i3eqZf0w==
X-Gm-Gg: AR+sD13U/wqB7eqdtfDlRda93/eoJhiV5XawmyQ0WGUWrVieAmSiwzRKXrhUA2RKm2z
	L2dMks7Rd8QEqekoF4Ie6Y3rytszfN9lK77gQ1Q+Z4yYCW0SEJEviLIfqFO01xWUyol0SRt2UdS
	gDG16KMBtGozJAwfsEiVohWathFNFbCFxdHXWSalcqqsJz7q50OnFgGB/Igho7ckznSnMfaMoNC
	39oKu2+h+hSkL4aRQibsBcc6sfd7NrjjLxZ6eFUv2ZkdjAUm2/BD+UB0G2K6zhl4s9fKi9OdP12
	u52g43W//XNcQm9H/tKV5eRUDSJRT+CiBRFkbL9wngozWzlNSOE4xYUtYGB7m8zpiv+qkcJUbQb
	hP6cQJL2l/7vm+6CWA3R5Xr5QGrczgUFWXzLcbT0bJsvu+NoPsm5k5wnzdn0RlslV4lQi11K3cG
	lGaaK3FjyyQ+09cTLnD4Idnxd94oehLLS6RGdMJ91o2JETCNT7APMQwActhxaCQVDowlUj4aKnl
	eCtMIvZy9c5cDRvDnkKGl/25eyMtzl4rk+GnDtQtXjPJBp+zj3caaIPyw2nyJfvKLdfCkxxWEx6
	MrczSw==
X-Received: by 2002:a05:600c:138a:b0:49c:e3c3:5efd with SMTP id 5b1f17b1804b1-49ce3c35f48mr10852565e9.9.1788275631691;
        Tue, 01 Sep 2026 08:13:51 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:51 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:13:00 +0200
Subject: [PATCH RFC 5/6] arm: dts: bcm2712-rpi: disable wifi SDIO
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-5-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=2077;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=EMEHkFycJlmuHmhXnqWFAdCfs0f67ka2yAv3wb8tmwY=;
 b=5aHTODJVn4OxQ25dHEMlTCCDXnWOeHxgIoiPKWHV/3e00Dr7+7IKBqTDK1K2rwx903raVqSU5
 RwI1N1UzDeFBsgmhzrS5wrte2Lslhk4riPQ1+OuAhH6qbKkxlmtbynk
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081354_161953_383D8D5D 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  WiFi/BT is not needed for booting and the SDIO device doesn't
    response with the error: ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: SDHCI_INT_ERROR:
    0x000c8001 ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: ============ SDHCI
    REGISTER DUMP =========== ERROR: sdhci-bcmstb 1001100000.m [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:330 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [andrey.lalaev(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Stat-Signature: 6xqd5qk5sb7gsx6m55qhfwnwrjj5quxr
X-Rspamd-Queue-Id: 8F3CA20584D
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::330:received];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+]
X-Rspamd-Action: no action

WiFi/BT is not needed for booting and the SDIO device doesn't response with
the error:

  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: SDHCI_INT_ERROR: 0x000c8001
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: ============ SDHCI REGISTER DUMP ===========
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Sys addr:  0x00000000 | Version:  0x00001002
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Blk size:  0x00000000 | Blk cnt:  0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Argument:  0x00000000 | Trn mode: 0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Present:   0x000f0000 | Host ctl: 0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Power:     0x0000000f | Blk gap:  0x00000080
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Wake-up:   0x00000000 | Clock:    0x0000fa07
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Timeout:   0x0000000e | Int stat: 0x000c8001
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Int enab:  0x077f003f | Sig enab: 0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: ACmd stat: 0x00000000 | Slot int: 0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Caps:      0x55eec832 | Caps_1:   0x8000a527
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Cmd:       0x0000371a | Max curr: 0x00080008
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Resp[0]:   0x00000000 | Resp[1]:  0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Resp[2]:   0x00000000 | Resp[3]:  0x00000000
  ERROR: sdhci-bcmstb 1001100000.mmc@1100000.of: Host ctl2: 0x00000000

Therefore disable it.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 arch/arm/dts/bcm2712-rpi.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/bcm2712-rpi.dtsi b/arch/arm/dts/bcm2712-rpi.dtsi
index e58138512194..1ee16ba527f1 100644
--- a/arch/arm/dts/bcm2712-rpi.dtsi
+++ b/arch/arm/dts/bcm2712-rpi.dtsi
@@ -7,3 +7,8 @@ / {
 &clk_uart {
 	clock-frequency = <44236800>;
 };
+
+/* WiFi SDIO */
+&sdio2 {
+	status = "disabled";
+};

-- 
2.55.0



