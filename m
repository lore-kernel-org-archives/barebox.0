Delivery-date: Tue, 01 Sep 2026 17:15:36 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1QD1-009gVb-1y
	for lore@lore.pengutronix.de;
	Tue, 01 Sep 2026 17:15:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8CE620582D
	for <lore@pengutronix.de>; Tue, 01 Sep 2026 17:15:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=K3QUhIc4;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ev+ZQ8vG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3JekpT+KvI/un/VuITd8Pxl6BLxCsgeFgjV5KlX1W9M=; b=K3QUhIc4YqL93/2h73ClUwBhb1
	5saJgc1Q8zC1RCQoGe7SZuYl3XBoYWrzbsKYfGTNZRK5CKakEEkYeStbhhDAad9/PO0/IO8++7FV5
	QZrqlMLXWaRt35HbIEnCtQBuRumjjWWvu9r1Y6Af0rNyxCDRvGn6AcPodl8+9/U3cTlJqe27ZAj/w
	rbj7zBMNYnjuvca68a3qXmzbAbDE26+abSs70v3kQOkshaIC5ptk5qFfnsX2M3KhyJmlj/HnPz0NO
	17/Jx/h3k615Ujy0HeJn3GF6Yz7Ch44iL168huF3GnmJ66SxwHwtWuXut/cOEQgDgboz2IsO+/B3e
	6uZu9ZQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBQ-0000000CRat-2Nem;
	Tue, 01 Sep 2026 15:13:56 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1QBN-0000000CRXf-15oJ
	for barebox@lists.infradead.org;
	Tue, 01 Sep 2026 15:13:54 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4956869750eso33437465e9.2
        for <barebox@lists.infradead.org>; Tue, 01 Sep 2026 08:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788275631; x=1788880431; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=3JekpT+KvI/un/VuITd8Pxl6BLxCsgeFgjV5KlX1W9M=;
        b=ev+ZQ8vGD9J71ud/P1O9Or/FRyg1dkgwF32pa6jwE9wLaPAoWKv1SiBjni0fSvzDn8
         K6D+hkFarIFOLUMswuXyViNRDt6OHNgc4NTFsnMg7Nm/HGNCDLy46G5AYaqsmS4sGbay
         VPMxo1EyyFTwTebq+gWs8OgSnM6ROUjlYKBvgLN6nlsf44tzXNPK8ZnNcI91DgUNqQBC
         zkZuy/j6+xMRUcTIYIgZFz7LZTaSuVzFCVJiyx5kaZCjFRfSg0oHxahv0RjNahZN6G2/
         vbVI6eUAypA2rorpgLzyOGjcV0B6E94/mXBbSP/64mYOXQjVHnR/NupobkympjPtb+W2
         jFjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788275631; x=1788880431;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3JekpT+KvI/un/VuITd8Pxl6BLxCsgeFgjV5KlX1W9M=;
        b=AeJbJzeSdt4Qy/oWBgDZMDQ747jDrFY3SGZOTfuVu2rI7s5CzIPRsIPrIZHvgaMY3u
         5OAVjoIsPUOAvDhYrGP2t9xa1rwonbWgpVNUqfUn+Wr9aEH0UabI0UxZadZHUXKLEuDM
         gfOL3IxIdWD2pGbPF2s0YYKPYWJfpReLH4NKm1oQGVZNQ8ltqe7t0TlF1z5AlBdkzY1W
         wyMuCKUkY2CW5l0A4Vp3TaESdYjhq8Ov8YW9EWFvU95ujXjzWOQdltv0DI2pAt2fcLc8
         pgp1W02lBBGzgihH0U5AFVQwx47iBBS/d012SQb66Tf3XYCMuomGkzaIzvjI+SPxgmfG
         3k0Q==
X-Gm-Message-State: AFuF++klotu5sQDVkCNv4IP41CzaUnCz23SBZYR/eOxDvbQxUG/LG/y5
	mSOpvhhypB4HAzXLb5Ag3swoHR9L9AG3FXltshIFQX/7awLbBfYtADOOr+g1dg==
X-Gm-Gg: AR+sD11wOjBGHOJQPIQLYSy5EcqwVXd4PZjD6vEojmFT+S2mhDYtJjZmSJzviLbZXBc
	Ed6BDDfETpsYnSjlBXXUM+LF4I8CFoVVeNYG++4cj3UKJZmfF1ZzSRzLEZx625LgBTTygu4ActI
	2yIjanjUNnoRE0q0ErktT7C1EzviVOOa979QnlLqsfqOyVfn6p03iiIkkanYjxdXsZmCrAIgteR
	7QyRjP7uQGBXK8U4y5QMhMa7VgFk8TJDl3AbL424XC3pCFK12n20UqshlCqwOUnxPFXRGOO++3t
	JjoJqDh0BXmYET7Qj7qJrRDwxzP7+SB31qSRaNkW7K5x60Ln7IYlH6mKT/AxYldK3ftBtcQ+Tgd
	5fbDQam+gbsMCBOnoZaXWrbGz4fTcSGkh8EiG6G7UamaHTVj5lJJ88ZcPhJMQaZ6V0GczOJ17Vw
	xa3VN+PRiBjrm1KPBdpXcfilwfcd5PbiQPkR2HfLYNg22sTrDxpbazFe2NhPRNvn3Jktpj1UtGe
	pTmnIwY+Blas3RccHVFIw4D0UsQK0NhONWTJnaiAV58rHphA/0+q03PE+8jOlbjlro8Nu091RdZ
	koxvwqBhTPiOxdq0
X-Received: by 2002:a05:600c:4f92:b0:49b:90cc:3c87 with SMTP id 5b1f17b1804b1-49b91c487b2mr545460845e9.13.1788275631059;
        Tue, 01 Sep 2026 08:13:51 -0700 (PDT)
Received: from [192.168.0.233] (2a02-8388-e6ca-5780-e161-768d-5c97-84d0.cable.dynamic.v6.surfer.at. [2a02:8388:e6ca:5780:e161:768d:5c97:84d0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm303549035e9.1.2026.09.01.08.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:13:50 -0700 (PDT)
From: Andrei Lalaev <andrey.lalaev@gmail.com>
Date: Tue, 01 Sep 2026 17:12:59 +0200
Subject: [PATCH RFC 4/6] arm: dts: bcm2712-rpi: specify clock frequency for
 uart
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260901-add-rpi5-support-v1-4-129784fe06fa@gmail.com>
References: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
In-Reply-To: <20260901-add-rpi5-support-v1-0-129784fe06fa@gmail.com>
To: barebox@lists.infradead.org
Cc: Andrei Lalaev <andrey.lalaev@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788275628; l=598;
 i=andrey.lalaev@gmail.com; s=20260901; h=from:subject:message-id;
 bh=F9QNYacBW70zT6M15VPk1QJ0dCRdJtWoHjyRE5dAclI=;
 b=5ZTvW4B/wSPH2CEsPvkeI+RAw+0QeORBI4uyJHt0IRU4cahjzaKiperd6TKJbeEaKJpB/t6tm
 qLqCGGZzK7RDW3vA6O8OWfcCJnGhWybo4Z28idHfPDsC3osxSZRdv9a
X-Developer-Key: i=andrey.lalaev@gmail.com; a=ed25519;
 pk=YHk+K3q98GV/1CigmrEAQ+Vc0o+GlFWt3j94jvrEh6o=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_081353_320005_F1A147B8 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  RPI bootloader sets `clocks/clk-uart/clock-frequency` in the
    DTB to this value. Set it accordingly to get a working debug UART at 115200
    baud. Signed-off-by: Andrei Lalaev --- arch/arm/dts/bcm2712-rpi.dtsi | 4
   ++++ 1 file changed, 4 insertions(+) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:336 listed in]
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
X-Stat-Signature: 5gq3krmgg8trmq9hyyq5fodsw6x995ga
X-Rspamd-Queue-Id: B8CE620582D
X-Spamd-Result: default: False [-7.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::336:received];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[andreylalaev@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_RCPT(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action

RPI bootloader sets `clocks/clk-uart/clock-frequency` in the DTB
to this value. Set it accordingly to get a working debug UART
at 115200 baud.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 arch/arm/dts/bcm2712-rpi.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/bcm2712-rpi.dtsi b/arch/arm/dts/bcm2712-rpi.dtsi
index 9ca671d8df7b..e58138512194 100644
--- a/arch/arm/dts/bcm2712-rpi.dtsi
+++ b/arch/arm/dts/bcm2712-rpi.dtsi
@@ -3,3 +3,7 @@
 / {
 	barebox,deep-probe;
 };
+
+&clk_uart {
+	clock-frequency = <44236800>;
+};

-- 
2.55.0



