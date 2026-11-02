Delivery-date: Mon, 02 Nov 2026 11:34:21 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNpMr-006L9N-1f
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 11:34:21 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 821AA200467
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 11:34:21 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QPP6hx82;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OEGEUyTB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793615661;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=T/yvwkkTusc9hZKcsGADD7X4XerKJwWt0AKTtxbd3d8=;
	b=AUGCg5W5SHTjdDId5PcGesJir5Q53s1WNTSXhXdPfel15R5/gW+hJsBMewjB8W8qL3+9ER
	99uSxu6Gzdlj6N1oM9YCRHnWlQ7WVXxNdHN5MMurtBzbrJCg8ozUV0D2hmNK+wYFUCVraA
	/M4Sfb7qjgXxatXSQb7/ycoHgC+m338775DO6K/rQ5Vp4OvuK7re+gPddym1uvgyWYI4Ps
	YqzPxfCS+iCrhf0cCvJMirBpf2PLUULZWtmQ1QDHUxAtFWXLwko+/QMSPh8l2/ka0FlL3V
	XXbUW4JnjgzCmHgfoCthOFe50WT9TCsxFEzXCqTISLs3lXuNKl8G7fUWSEj+xA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QPP6hx82;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OEGEUyTB;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793615661; a=rsa-sha256;
	cv=pass;
	b=JB14QliFOnICb9GcHkLIbJoaWHOLyYAyDdETpFs6s3pMZ+iXF9BY1ip4jnA0M2AQB5jrKf
	fKD03QiQ5fz8mGDe0TAqWK03hvXgNkbtplk94YrSoTKK5piklad9rzxyW3PHCczXVaMN0a
	3FXA6HYX2rG8U97RSn7e0psQR+DThUEBwA+hdigVCoFqZbwUIuf5cB01NP6RmVum+EQvAV
	iQzJytWiA86xIyi+zr1d3ax4Gb8eB2Ttt2NKnDC64AjGNo8smU1X9kycO1J2+GmtdhU1pd
	O001TarG+CyLRrbs2IBYwafMDsyMTOHMbf55Uaw5WU50IXkjb4rjHqESEP4Vtw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=T/yvwkkTusc9hZKcsGADD7X4XerKJwWt0AKTtxbd3d8=; b=QPP6hx82+EhE5E
	t1twNO72l8lGjiF+K3arQHG7+3PRJxu4G/AOP2B+Gb66ZNFTZ7Kmbqzojc9jiQI3dBzn7RIxAkhVV
	l1G/hudhHWcHNY/1ivgEgs05uTc0KTlx+Zds8bP6u334AjYOybyTvxzQv0qj8faKdaVX5aYVaxAwe
	hQFrYmcNiRdjoK/ToD8gfMA3AxzBFw6T5jizOLou1hHGsfsdGh7r6bl3NYgxDgNO8urN43gxLyvHe
	7C8zFnByuO9fg8dFHXTCB7yCUmz+IRTUi5L1Ezt/nDU9RjocBEFX6j08JftK9KaM/0xmgVRaHxGXU
	Ri/8zS8CuRg/9yfi//4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoWO-0000000G2ms-3ASh;
	Mon, 02 Nov 2026 09:40:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNoWL-0000000G2ko-2W2X
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:40:07 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E58EB200878;
	Mon, 02 Nov 2026 10:40:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T/yvwkkTusc9hZKcsGADD7X4XerKJwWt0AKTtxbd3d8=;
	b=OEGEUyTBadtdAnGQSGFE+GgtC+5Y2T3tAAba5WA+xV2Ou1J2fwi3ojzUlh7ozba8UfQRyl
	pRUQM7otevyNP+aFN9PndiQW//Tye6hqMMedbi4s7FLRiGjPC8wHWqopF8GZaA5oyUFtxM
	RfgbG1l4Wjy9eQqJNWqZ2o9jAatijbN3/zdgKU00X9uGyj9sTXjpgk4Q5ST3809mU5tbDe
	u/R37s4yOK7PzpIGH5VcfkILwdGJoQU34A0cZy8Bkdg9ucpCDsY4c7URVTkH2oq/4TKPOV
	X6k2SDloj9zAZUmsdtfXzk9Iuz2WMmrK83DQcst1PX+3eVqt7F1+0L6N7u5eRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612403;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T/yvwkkTusc9hZKcsGADD7X4XerKJwWt0AKTtxbd3d8=;
	b=ZBuIfpHopoUsC8lsehxOxkCR9/tefnSwWwX0Z8d5NxO6V9dun6FyJLFbeH7KWBE5c/5Qud
	ClP7vdQVat4UJW732LEaHxLjEWr1B7J3iK3ZLrNxA80djxuQ0BzEYsudUAcxJamxya19Ul
	i1ydV0g4omuJsqVXp8Zs5MHkavEK6TUYdOca0kveM9tMSDYAwls30K1jv/fAyB2VtD8EgQ
	XUcMM9e/yc3zH4W+yaOGYPOjBLmVKKHgvZwLPBSAxX1MRWlntVkYSoSm7C9Z/tf5rTjP8T
	uRQ/C7twDSHAXR8tNQgD8Mz3Ym41Zv0Z8KNs7yrqnh0gViWiWPxDN3/BkFjTcw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612403; a=rsa-sha256;
	cv=none;
	b=E3s/fsBszTqso0P5xLuiCGupNQhAzhoPSqcY8RJhSDtE+yJVCiWPc+fteHcF6fuwabSa0v
	KawG5GfT8/dznHKPzv8Re58WaSaJYAQidGcrxiriBrmRkWF4/u+jpSpI8C0OInc0FnCBXn
	rtCVF2G4w+z5CtaJd2gnj7dvVhHn1LzS7EA5p/1FBfY9DZHa4pd/UfHYW/mG5yIdf+PCGe
	PzfiNSo2g1cX1X/4q4n7A79Kn3YVrqLIquCvkpydlcVG7Uo7HWcNVj5oja/NbY5JCxKauJ
	gNbfBN0wR3/S4WSF3d4eEa8ISNWxkKI80hsFG+/ioLFFpr5Ww0jt2HxVkSxTyQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id D6272FF89D;
	Mon, 02 Nov 2026 10:40:03 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
References: <20261030-file-exists-v1-0-34035d7392e5@pengutronix.de>
Subject: Re: [PATCH 0/2] Add and use file_exists() helper
Message-Id: <179361240387.2637646.8672895913143281341.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 10:40:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_014005_797049_5615696C 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 30 Oct 2026 08:16:20 +0100, Sascha Hauer wrote: >
    Many places use stat() only to test for existence of a file without being
    > interested in the struct stat returned. Add a convenience helper [...] 
 
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
X-Spamd-Result: default: False [-60.55 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.94)[99.74%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ka6s1qosfs4nayoj9ehae46ckukymnst
X-Rspamd-Queue-Id: 821AA200467


On Fri, 30 Oct 2026 08:16:20 +0100, Sascha Hauer wrote:
> Many places use stat() only to test for existence of a file without being
> interested in the struct stat returned. Add a convenience helper for that
> and convert users throughout the tree.
> 
> 

Applied, thanks!

[1/2] libfile: add file_exists() helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=f982798e8039 (link may not be stable)
[2/2] treewise: use file_exists()
      https://git.pengutronix.de/cgit/barebox/commit/?id=034bba84bfee (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



