Delivery-date: Mon, 26 Oct 2026 14:02:33 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKLQ-003Vul-3D
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:02:33 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3C3E22022E2
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:02:33 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hK8YOfVf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AEAtBVqK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019753; a=rsa-sha256;
	cv=pass;
	b=Si0fPHqN8mJsif6Kt1gaogMtGNm/Ua9d74cNDl3hp1YombI3gbSDN7lknKL91Tv5GXc5ko
	glY4cabVu+/92JDdoD2T3piHXtGwS+A4v3jjs9Imp5F/C8POYOLw0vm53jeOV9/agX635/
	JFSHDfuz961mzFjVLFfSfu58ZHI/DHgGGk1X7GNhYl4BQ/Ak8qNHy3Mw1MiXylzU7rqLb+
	MTXh7dC2ti58y/g1DQxaeRP2knw+Yp1cOEUD0xSCu2RnppxScnLr97fnN/xlvqfjKMlPsa
	fa6S5v2oMLJwrp8wjac60gzUd4eHf7EcNateGQhD5vhePqgl0JMjohdv94NHnQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hK8YOfVf;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=AEAtBVqK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019753;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=qqzPoWXQTFwTdGVeery+TQIa2/jiRsULrYn8FS6woq8=;
	b=eaVvEA3bk7ZGtZH3pH2LuQf5xCSzj7bNCIyl8uoBzwfyW+UsMn1t0ylZ7+uL7JozvNs0SV
	0Ai94CZttWaz1E/AZsMa+G7wUyKZTSqBTwladPm/WLIEDecVUAk7cyjH/PLEo1nKVtX6BR
	MEGf49uzWwjs6P0gl6o5BArxvl9WvEg7UYLyAMOW+LdwhGYryHDS/+jt3wddDVHrGxhZbv
	PigU8kch0hjD8C56GR07XoO7150pBTBK1fNtrbaJiRn261QNqKZ7q1N11OmHsmAxhh4WHX
	m5Bvb1BHFdkQSo457YjDtjNW42SU+1lJ8l80H7rI4KfDOPNPWxr/zg6Vz4Py2g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=qqzPoWXQTFwTdGVeery+TQIa2/jiRsULrYn8FS6woq8=; b=hK8YOfVffp0eXo
	NAIowsxoKbYSqxbz54Rw8rDiBwSYTcGdlsTyZPyMPdfupgvVU4fKmTmIzwb+RUR7zWk1xKFxlSZLT
	bI/IpVwItQxgvaWjKESfjFdzdEHKnl7TSdzMfbygoN+rKR2NskUait/alNiwPl8cEkjZ0TkLX/2JF
	o/n8y+3iZ3+eVVOVOo0KaF/AqNeHf+TL7vEos75b+alD1X0JXrF2s0j1E1ps8vuYm14cuIlZdCavK
	zbc3M0bIIDzJn6U/6S58SzUXPm+heOxVN7GxWKs/ZV2H5pYjolDBwogN/2PHJFYomcMAI/57/cxNx
	lUJiDjXZ7Fm8geoL7LFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKKU-00000002YTR-1sDq;
	Mon, 26 Oct 2026 13:01:34 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKKR-00000002YT3-1LHY
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 13:01:33 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7A9E620233A;
	Mon, 26 Oct 2026 14:01:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qqzPoWXQTFwTdGVeery+TQIa2/jiRsULrYn8FS6woq8=;
	b=AEAtBVqKUo5zDA96jp+cN1X5DxvXaZM8bhLWU0Yt8kKRZkxgF9VzcxDhQyWG2lgAccs+j6
	kTyFm+H8HOMkYE1H3yhnkX1dElID7io8pauRt/7pJPnA63gjVvbl4eg/rPbm3sCi4Wmj3j
	d7jjCckztaVE+Vyc2cqJCBHuQY+Bu4fMMLQgU20KSxRCpRVyfPBtsm74HQzaVd5bFUMBvK
	N3LpO21K3LR7QNpv5VYwFQvX/0PNJimpgAUL6NwnlfIU0tBHrfWQ1RbcUlHirfh3xnj44F
	LYTARRp6MeiHe+/e9qYVuGZaey/DBAHlsEXwS8Yxq2POYE/8S8KGtxGkRvB0WA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793019689; a=rsa-sha256;
	cv=none;
	b=g9wAxTt1iIxmZpzAVElkioYtwkRcnYNXoQ2xrPHmNBVDZRb6EgsC3mtdPdXsH1qTHAcGIC
	ifuCRea8q+M49BiTLfKeCwkY5ncpPEuuWgK8GB1ii6cAwUW5jiaEpMBd2w4AtQuN/o1vWD
	rUTKdlI8Ave5eN5QiDKu3Rh33XUB7Ft5cUnGRCcvb4IT29EWFf0kz3HMWY5rzS68a45MyX
	fX60mF7/1mcgty4mQ8+KldK2zfEUm3vxwEsOtEj6GiOugCzmTGu64YbxkVH13ExV2VLp9K
	OWAqLXN0lr/WXVXOAQ1vDd3n8KOnfejLkJysluTdf9ToqHprHah28zpjDyfOAQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019689;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qqzPoWXQTFwTdGVeery+TQIa2/jiRsULrYn8FS6woq8=;
	b=Yks+G/VuhaoXSdYJhqoC/St6kw8ceANm/EQgZoREn6wrIbyZhPxFPJZQJEcpXHHVk/Vg5Q
	VwWtywZfqYE4/8+ibQQ+W8enBh3YOZajdNEZ4NtsihbuUk083Cw0hGXCQeEuq/d0Q1cafI
	r21nA5YERtw1BAdunzrWwMQGFiHj3dlrtJXEusv8YBBPaSUDAAz8pcla5IdSLoPhbnFX8I
	VSHalA1XM0VFGUA/SKxNYGQcsi3QsXTQoAUgh/4hv06dyNV31R8qjkPxi3UcdBbI/Pd/RD
	NvSb8jv5SIf7zTL+qB3ltdk0vt4I7b8UZt1fjdQ/HuJNoUo0RNP5UESSeDWjGA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 6E3F4FF946;
	Mon, 26 Oct 2026 14:01:29 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261025093538.2890451-1-a.fatoum@barebox.org>
References: <20261025093538.2890451-1-a.fatoum@barebox.org>
Subject: Re: [PATCH 1/2] net: designware: wait longer for the MAC reset and
 report a timeout
Message-Id: <179301968943.201707.13603629658571405034.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 14:01:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_060131_545065_4A870DAB 
X-CRM114-Status: UNSURE (   6.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 25 Oct 2026 10:35:34 +0100, Ahmad Fatoum wrote: >
    The DMA soft reset completes only once the PHY supplies the RX clock, > which
    doesn't necessarily happen within 10 ms and indeed takes longer [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3C3E22022E2
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: nx5u998rgsi37f5fzo46zz4iyh8fok36


On Sun, 25 Oct 2026 10:35:34 +0100, Ahmad Fatoum wrote:
> The DMA soft reset completes only once the PHY supplies the RX clock,
> which doesn't necessarily happen within 10 ms and indeed takes longer
> on a Libre Computer Alta if eth_open_all() opens the interface right
> after boot.
> 
> Let's wait 200 ms like Linux's dwmac_dma_reset() does since commit
> 56311a315da7 ("net: stmmac: dwmac_lib: enlarge dma reset timeout").
> 
> [...]

Applied, thanks!

[1/2] net: designware: wait longer for the MAC reset and report a timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd4f42074f79 (link may not be stable)
[2/2] net: phy: mdio_bus: honour open-drain PHY reset GPIOs
      https://git.pengutronix.de/cgit/barebox/commit/?id=b0d9e2bac7bf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



