Delivery-date: Mon, 28 Sep 2026 12:48:10 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB8u2-007GF0-2E
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 12:48:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 87DAE2017B1
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 12:48:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kP8yYGQK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IwualFtV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790592490;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=9CoMuFGlw7MXW6ATeIJUxpgfNon/N8I1UftDdHt+Jow=;
	b=NZgkbAjQPaOf+ORDOCys9Y6reDF7iiWsMiUM8qK9Cu9kqIHjABgw18kALDI5vn8J47zr7v
	rZbfQRn4tUAxxHB+QRqZh3b8IcpUoZTFP2Izf+l11vtngmWTrrCh4fYL1fZKdrbomxS+op
	DZ+hAA+TDhEXW4inP46jHxJ3LtD8nXtPMuxIcsBl08OGrrSOG/07NjIYBe2Okbje0g7oO4
	FZdAXThZ1vKBVHCcIj+tANcCR4DTh5UeX1iUrI2jtt8ApqH5zTY60trHbgT1tHfDyR4Uhs
	hs5JqP3HcaV+NdtVKhMa3tzSwPsvSUiHJDTHWaBIMm87btIkr/pMiC4GR08gSg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790592490; a=rsa-sha256;
	cv=pass;
	b=WoyffVLE2OTqcA44UxznAer/Zgmufj1P+uCstwtbxxClpvFd6oP1Zx0IlcD7sOQcAMzmt6
	VPyT6rHpdcfHoYdknw4dQFT6kZ5PgOXkHCv4+xPMedqthi83bBdfR/FU8hvjxbQC+06d20
	9Z9LeRAV/Oj9hQ1HfliwizQKX4o9eJPFySzRf5mRO/7kzdKmk1lBx/eWJ/n2d+pqrOIdpY
	JAdXyQChsR3SEasngaGTCKfp2tp4QS5XixcSMugCG0szCrJspYucXGA51AbzSx6nZA6lzy
	Zf/L9QMv+m3F7EnFvcnzpsFOPdZhP5W3HnJmiw0yiSRz/ytSTQUH8ImktRVBJw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kP8yYGQK;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IwualFtV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9CoMuFGlw7MXW6ATeIJUxpgfNon/N8I1UftDdHt+Jow=; b=kP8yYGQKw+QCLRZoiuZkPhtSSF
	bm8ysrOQNuYsIfQFfbNnpL/y+1XJl+oGDhjtd33M62+ZM17PKsghhvIP+TjYBtk2kz65eu8fzEMI6
	0eSiUuYvpKA9i2m/ZTu2wzgOkoJVLazksp5p04FoXuKdh+hods3TIkt25oAgLyEKZphkuQdnEz0+5
	qijAzTKNACgBWVXA0AQvpT35Y1nqVoylM5vdws3d+n2zUrGT9Qe7UC7RAwrdZ5n0AiyIugsMJPfyI
	ktL/DlRd6/N63Wfiqs1Q9n7/Y6gJGZA01DWRF4K/cr/83xlH45/cYOebB3J0er6OuRdo3VDD3rePd
	yuNWxXMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB85K-00000000I9o-1dcq;
	Mon, 28 Sep 2026 09:55:46 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB85G-00000000I84-1jyB
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 09:55:43 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B925720127E;
	Mon, 28 Sep 2026 11:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790589340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9CoMuFGlw7MXW6ATeIJUxpgfNon/N8I1UftDdHt+Jow=;
	b=IwualFtVnRAMuqqaqKM76/jMZ2A07rZBvRoNIrG4XmtmNZkx0FGOKzHWMVMJ+pm7RB8mgA
	K2/jHJExfozgrJGQRbpmXS3mVTg2Bjfr3gHsIs/jYDuT12dPpphanyMoGDl4/dBMCnLr8g
	mmyTw3wJH3WCbAfoBG+uGi4DBrADcc2P2lZYk4i/zDnyu4HEedoBgoKWSKYoEPUfiDH+pG
	fHkZr4OnYkxtfLVZ3bjnUpmrufWDE6lGVOEcka68kt+vt4UvzUtHMtY4FwhSRMhjmgYHIw
	pJUFIqptYDZ6nyihPxFCXimcVLY/C83XwhNMl63jsLuPGDYYxG6R+uTmIhoYuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790589340;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=9CoMuFGlw7MXW6ATeIJUxpgfNon/N8I1UftDdHt+Jow=;
	b=MP0G6IhVe97JkAISLVqT/kCB022eMz4KWISPOoBqmLvjlsloo5pWeLkItXsTeSW7EkFfEa
	DCmO0mrKCRihFSkME5p4DbgA7H4p0CfFV8VoXMQ9K3KChIvgWoilcilCGRMcJ3aNOfEAaX
	ldpyogApNV5ixacF6NMDnEPLR5mskt1StvjiV8peCgN3G9zf4I4nmz3MWknsvU/q4H+jUR
	F32/zF/oMffHQbU4U0NRpUxwTO3pj7UOSAKbFmtFu91nLB+VQ3Rg/pnOZj1pvozEkIm8g8
	YMg5n8EbzdtK7p+7/rbnmye2TAauxySO8v67I7XqLtBORlMQwTa13upJ9fw6Eg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790589340; a=rsa-sha256;
	cv=none;
	b=Ve4L8cTsrG+UGi1vRkaBrQKLXjuqovhEtDKeaS/oTzLJ2YpET0HnR964Fxr1Vz/90w1ufp
	1gdrcQaJGwuCkdYKF96Ehz/s2hKIgRvDKDgvs4PTrvkomo+y81eNXYSCxydpuo1ivaSKBu
	1hfTh6OhYApOqhkdgvgRLr4D1x6R8jGgpRKyuweUdrmYeFWo4g7bXsue550p+mdudODNhB
	f3JCLkv9ROY33Op+O2d4vrHmMYD9ayD2NrKIax5+wyaAHOev9ycrTxWq5WdM0gjlJx37Zi
	xhZwjBWn9+DBFtQFTRyV21DeFQbZUa9H9aM42sgo+kPaXBJDb6l2Z03xymxuWQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id A5130741B72;
	Mon, 28 Sep 2026 11:55:40 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] video: stm32-ltdc: reset the controller on probe
Date: Mon, 28 Sep 2026 11:55:38 +0200
Message-ID: <20260928095540.1101553-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_025542_611525_A8EFF4EB 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Linux resets the LTDC on probe. Let's do the same in barebox,
    so a chainloaded barebox doesn't attempt reconfiguration of the DSI host
   while the LTDC is still streaming to it. Tested by chainloading the generic
    BL33 image on an STM32MP157C-DK2 and observing it doesn't hang when framebuffer
    support is enabled. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 87DAE2017B1
X-Stat-Signature: t1444fmhsgox3h89j8bob4axeaz13cyc

Linux resets the LTDC on probe. Let's do the same in barebox, so
a chainloaded barebox doesn't attempt reconfiguration of the DSI host
while the LTDC is still streaming to it.

Tested by chainloading the generic BL33 image on an STM32MP157C-DK2 and
observing it doesn't hang when framebuffer support is enabled.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/video/stm32_ltdc.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/video/stm32_ltdc.c b/drivers/video/stm32_ltdc.c
index 43d443788364..5165bbf01749 100644
--- a/drivers/video/stm32_ltdc.c
+++ b/drivers/video/stm32_ltdc.c
@@ -272,6 +272,10 @@ static int ltdc_probe(struct device *dev)
 	if (IS_ERR(hw->pclk))
 		return dev_errp_probe(dev, hw->pclk, "peripheral clock get\n");
 
+	ret = device_reset_us(dev, 10);
+	if (ret)
+		return dev_err_probe(dev, ret, "peripheral reset\n");
+
 	for_each_available_child_of_node(dev->of_node, np) {
 		struct ltdc_fb *priv;
 		struct of_endpoint ep;
-- 
2.47.3



