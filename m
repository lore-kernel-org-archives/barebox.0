Delivery-date: Thu, 01 Oct 2026 22:22:24 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCNIO-008Zk3-03
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 22:22:24 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BD982201F11
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 22:22:19 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yI0T7wnc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FNMuuI59;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790886139; a=rsa-sha256;
	cv=pass;
	b=M/5+dmhILcIOFxDJmW1Jt5tegU/B9YrxyEH+8zZUTO+4cwja1i09YGrFCFE0GpHyWUxUNm
	48h9mXxes6Igg2On8anDYcKH6CbXytBelwizc+dDvfOcK0txOKnDAiZW/9PI73qYerVRF+
	LhcOLau2z+M9nvkYcUAmyNOr+wk6Wf899nhZswonsUlOcwsoK4D0g1E6pkJbf/kpVmec6G
	92fM9PAdQgtGOV6uAvKv6V6/PFVgej/DUX9kgbsfKXpP42V0QrnQo/4Hojs0qwJzBU8m39
	1J2QdTsYlBrvu0myh95+7LIhZzEiqUcE1AAWrTQv5vbtzrOo1N9GlDILH7JuTw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yI0T7wnc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=FNMuuI59;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886139;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=7ed0qa2ZjWUCtvh8LrF1K1EBZdNlY+m9n1FeFDbGOCM=;
	b=LZyYjlSrwpjS7GYvPMvLSFfi6a4qOJmQ9dZ9shv1rx8M2c9wz9LBn+veg1Kj84Kttit3/R
	/gvWFXRlYbTUIAXyGR5fRyrep27L8EWu6BdVMNeegVPuLmj9n7LWuXgn3J7/oCYvtC9ky3
	jdUwepNkTM8d3TQVpbIfdHn6Xyoju3OFgqlzTIzCXJGGEbKBglHAqz6jTqaCPcJd9utgmn
	Yq08WHqKSGIpxe/X3BIDrJOx98NdI/fBCAwDYfsLUiJP3W+DXx/JmqrtIrEl0l+1IkkRyU
	nk3DzGwbb7uS47JRyCw+//ZjD+xUTN0Ru/+J8iRb8izDVyNhctAAShOj7WMb9w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7ed0qa2ZjWUCtvh8LrF1K1EBZdNlY+m9n1FeFDbGOCM=; b=yI0T7wncqx7F+Yj2UYtKI8b4Ct
	SaUBKoa17juQpbWGs6XpcfUZpff8XunDHWqHofZrB6RC3VDN+t1CdTh4QIlCVdA/rPzugIi1XBIE4
	ObYYy5FpeODO9RgMueBm28lmfiXcPoup4pgDzOsPOb02ushhwG1JfiLtdZqA0CNoFvj88lNDPshzJ
	YRP96z0w11edKeGPmUWzRMu8RqDnlcghWcaN/Wvy5sSkLpBjtns8iM0Ymw3Cs7kc+ODSGyKLBIL7D
	ypbWm/4sNk8keMFdVkDHU840i/ToFm5pX7/OEYoh/exbvb76m8GCnwo5VJrHr5yjmiWyMwI8CJF/t
	/jt9uBKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNHR-0000000A8fz-2LIn;
	Thu, 01 Oct 2026 20:21:25 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCNHM-0000000A8e6-35yo
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 20:21:23 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5B9E0201E6D;
	Thu, 01 Oct 2026 22:21:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7ed0qa2ZjWUCtvh8LrF1K1EBZdNlY+m9n1FeFDbGOCM=;
	b=FNMuuI59DmVph5NPePeqQ0nMfIj+1ZGFl4vv03Cb3Zm8Te6ixa78VWdBx9Sf3DVNVsTpUR
	LTuOaY3ZuzmLrzLeKA8nrfaDfurXwD6spxRNnmB6LgSbY2GkpVDFzGwENAal2SeGoEaM7N
	q8GNJr5wdDK59BflQ4g7euFqPXRwQT0+jZB2AdAgsbCL2B35ASZmbJbQDMta/hoprDQSyg
	zbeCp0BMhaFAlacNbhYI+35u+ubGw2VbEYkuq/L2mSzj/0o240rufyIUFSNFJ1iJAhBjLr
	eJBtY60hqzELtB19d8HOQ+ovdQBLfx/Y6E/eoPyQuIdElUyilJvAojvbvPd/Fw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790886074; a=rsa-sha256;
	cv=none;
	b=JRk4RD4AZubmxZQbgHdF94pgFIhYnt0/TtBi/9Mcgost/zS64u//Ygd8rThgvZPzh7YWdl
	yJ1sc9K8xTn1nM3WRwqmmfrPxt2B/PqPi6pMnmorOsxFnCwgDkFqmjk/+GX6IXlz/dbD8b
	1qwcuWtKOlQUKkP3NUz6p9yK6KaOlWWV38L0iK0Cz0lGRKAVEBbUxTX3PXySbK2yHLv+zG
	tKmpMK1JUT1glUd3VyH5phynn1HTvsv4SvdHicZW1mZK/fNsHfZXzXJgIDgCK663JlZyY/
	6OfPnAo1RubjuaUkwiOCrnkDLcZKmArxdnbPQY6Adcdm5wUYwTUW05eSnpkP8w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790886074;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7ed0qa2ZjWUCtvh8LrF1K1EBZdNlY+m9n1FeFDbGOCM=;
	b=J3EnGeUfeF3Ff8xPkns8v8KCnfWp2moFNisHuAd+d1lOPmdPn1qWT8htdr4iaQ+OXfMRyu
	JT4Yv0AZAY1gHuEN7h4nfnumb6ppVxoVGLWCwr8l7kboo/Xk8O1dHM4WVq4scEupcjWsxl
	8NOosKdFATr6qWFJsvOD7VaqrIvQLns060DAOwr73LUPXMuEpZ17HWZwvA/xR2pSd7uisT
	HL4UpCjhj1pf8xH2vRheKhiuutLmmDV+QQcYX3Z0J9Xz9c66g/tbFuRN4uwCT4YgKb7ztN
	XG3v0F7FrNTRxMboWZVTFeatkBdLUH+9iCrgHWdyZA+fXxMY2rTU5qV5XhwvtQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 467F4FF876;
	Thu, 01 Oct 2026 22:21:14 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
References: <20260930101606.2097864-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/4] clk: imx: pll14xx: use register defines
 consistently
Message-Id: <179088607426.3011112.17296818868935865831.b4-ty@pengutronix.de>
Date: Thu, 01 Oct 2026 22:21:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_132121_614382_8FBCA207 
X-CRM114-Status: UNSURE (   5.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 30 Sep 2026 12:15:53 +0200, Ahmad Fatoum wrote: >
    clk: imx: pll14xx: Use register defines consistently > The driver has defines
    for the registers, but they are mostly unused. > Use the define [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: BD982201F11
X-Stat-Signature: asgz75zpdoxzin3q8bpgaa9iabbz1ahy


On Wed, 30 Sep 2026 12:15:53 +0200, Ahmad Fatoum wrote:
> clk: imx: pll14xx: Use register defines consistently
> The driver has defines for the registers, but they are mostly unused.
> Use the defines consistently throughout the driver. While at it rename
> DIV_CTL to DIV_CTL0 because that's the name in the reference manual.
> 
> 

Applied, thanks!

[1/4] clk: imx: pll14xx: use register defines consistently
      https://git.pengutronix.de/cgit/barebox/commit/?id=53213b51d712 (link may not be stable)
[2/4] clk: imx: pll14xx: Drop wrong shifting
      https://git.pengutronix.de/cgit/barebox/commit/?id=a64e07dc04be (link may not be stable)
[3/4] clk: imx: pll14xx: Use FIELD_GET/FIELD_PREP
      https://git.pengutronix.de/cgit/barebox/commit/?id=56f4cf3140af (link may not be stable)
[4/4] clk: imx: pll14xx: hit 393216000 and 361267200 Hz exactly
      https://git.pengutronix.de/cgit/barebox/commit/?id=48151b0fa372 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



