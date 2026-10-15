Delivery-date: Thu, 15 Oct 2026 13:37:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJmQ-00Du33-0Y
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:37:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ED37E201BC6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:37:49 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="sLJ/Ehqi";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D0h5qon+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792064269; a=rsa-sha256;
	cv=pass;
	b=J7wvq8q392F5JGAeR03wFhiVzyd4BgHKg47Bjb2/fbPX7KMChnvbeeUtNneWlCXLN1Dj5w
	FoG+ov9V1yBCWqFpq85YeuSN/bFEgmJlO8YEJKlihvd+oADeAbj3wq4FhTJfQtWUhNXh98
	1+mB6tHzn8PVE7BzPKCxph/G7qbEtp8Mm5yb9Onz8f1Kll1a5NHrJBdP1HQsBToL/t6rXO
	1qheOY0n6Ujnziju2dkZtEWrgsrLOTOLJraYi927hdumfjpZdCxTo+PnoJqgPoySWXnwoQ
	UYd/dsYe2HwAqVAvsdnFKc9i4kAd1ikgv5xdKkhKEH8gYqzw3G8uqp6D+ds3CA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="sLJ/Ehqi";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=D0h5qon+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064269;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=12gsTQTfIzMgKCttTrGcZs4ah8xHodH0q0ev+AY1HqQ=;
	b=GmLT8rluWa9YcoL6pjSnBd/hGUnGiIu69vhOeilIWjfhPkrbm8MjWBi0SrbhJgy3MaAQFX
	hGOG73jy5wFCzaBhnV29paQQgR8Dp3K5YbjL3doTN9jI9X7foafFoG84jhPVoeaaoaxgwW
	f+G/eDEizKFmycWAO0ov4VqcyT/uaSv42/o9LfojQvNcmwCeB1yHIY/EfphULypHsxW1j2
	3QCetNJeVdssm3ZfEe5D+sRK9mlYL1vjvc4/fC6Zv9za42xQDWbRpnJehUDm5JdseENjhV
	egqtpR2OOA+KWZaNZwZSVx0IUJVQzdQyZox6UVIbrOohFdrbM2/0As4GICvBZg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=12gsTQTfIzMgKCttTrGcZs4ah8xHodH0q0ev+AY1HqQ=; b=sLJ/EhqiAPYOnW5xdl60YlP+4R
	sjJCqRYvJEeyaalbgFjQcuiO+rZ5FE6DFtbN0+V9EOka7yhZWDFpxy00ZHrtfFUPLGelujPzNQDfL
	RiFzSqRSasweluXq68SLEyrrPZDltberdajygqP/KFd1Cw9JQdirZmHYiQlIyYpwKT92KyuDeGqqB
	pJR8w8dajXNKvRxviv63rys4XAH5FCXi09vV5hWhk3mprmzymBzBSyQHHNyC8+tykn6WV4w2TIsPs
	WRRaD/GBOioe/Vo+uEZx+cNIfM3wM/GqdW+t90LiFj2JEBbETgwEHXo5Vu9ezUNyUDfcDgc9I79UR
	czqMK9VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJlL-0000000HaaI-2FKs;
	Thu, 15 Oct 2026 11:36:43 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJlH-0000000HaZZ-1Z31
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:36:41 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 673FF2004B4;
	Thu, 15 Oct 2026 13:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064197;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=12gsTQTfIzMgKCttTrGcZs4ah8xHodH0q0ev+AY1HqQ=;
	b=D0h5qon+iL+Co+NdeIOcpmawB/ja3O42WZbrie7Ftdj+oozqSR8I7y3+QKUE+ur9Lx3UE6
	1M9Tg5xpJVnVyGGnQishj9rNfzECm9OrN7AC3h9Ls6BayNXFx8g2Ppjc19ghs4IxQPqVbr
	/qMLzgilI27QrjKane3yU/IlhTzdqhAGirqyHTmY9C21xgOkLesjlljPHxivW7B8qiVnUN
	nuN23/IMWqoO515iX17ucWkQlEGYjf1/V5tiIXCmUmh75ir8oGBWTHwbwavB2f9rXcP+wn
	PT0whiNGNVnm0wj1818+p/2XITKsWKlAKLzomE3BYhQytaEBwzo6Q82XLYJICQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792064197; a=rsa-sha256;
	cv=none;
	b=FLkpUR25bOcqCWHMF9SAM7ZzICrK9MJm1HK3aFxW3+1/p4wIDAlcZ61OKKECOrfnIe5Q++
	tugvwbYeJiHwK48Wm/cVrkQ5AzBgT9Vp4cf0PiZqMvMsWrOPTdWxrPQAPD3UzENRideVxb
	P+U+k+quPYKYRSkPlgm57KQWK2V3EtM/RM35OvW8toeSoB3dVHN8/mqSDVs/O+aYKDLFoi
	jfqx6WZWDaJh8mtDz2aC98iLk0T71g1fjIa8Yfm8dTKoHQu9FGJLmvZufVUkFrCy5XvQCd
	+4W88mgXnIyQ4vFXqjkBVhlNc4xkQhJ8/SdjLfWZPbFX631FVknbRPCsXhEijg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792064197;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=12gsTQTfIzMgKCttTrGcZs4ah8xHodH0q0ev+AY1HqQ=;
	b=QIqZqmhs8Xr5lLqCSrnEXzaFodE+iseSQvZT6FhPsD23lcwAA70vsV9m+aX4YHE8sBCVxU
	N8MurhPNxtpa2JtjM9r8kyYZpJAGrcRfiRcFfHvQEWxfvZyW0DN9/l7zDT1F7p5TGAJChv
	j8VquUGTnBJY/7hsN3ZHV8oOEJca0Jc5+p04w+ET/FXR4y1PGqGDuZypA3qd/FXscpYmbz
	8NuGRmOJ7Q3Tc07jZQZjdSZ2lJnBCSta54MI7dTTOdvlMR0T32OX+bSfX+v2G1ZGyiLfdc
	M1H/8qwS7J9hQ4Eim1dgbVjm8LWngK5eXrJJUuaJRU8jUBbDQ9+L5VYDRYGlvA==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 5736FFF88D;
	Thu, 15 Oct 2026 13:36:37 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
References: <20261015084833.4090522-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH master 1/3] ARM: rockchip: rk3568-qnap-ts433eu:
 re-enable combphy0, disable sata2
Message-Id: <179206419734.9125.3289957513409857081.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 13:36:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_043639_568676_E884014E 
X-CRM114-Status: UNSURE (   5.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 10:48:29 +0200, Ahmad Fatoum wrote: >
    Linux commit 5a16e131ddba ("arm64: dts: rockchip: Fix the common > combophy
    + SATA on QNAP TSx33 devices"), imported with the v7.0-rc1 > dts [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: ED37E201BC6
X-Stat-Signature: 5xyhex8xqgiage1zna6hj3u4gp79oktj


On Thu, 15 Oct 2026 10:48:29 +0200, Ahmad Fatoum wrote:
> Linux commit 5a16e131ddba ("arm64: dts: rockchip: Fix the common
> combophy + SATA on QNAP TSx33 devices"), imported with the v7.0-rc1
> dts sync, moved the combphy0 enablement out of the shared
> rk3568-qnap-tsx33.dtsi into the TS-233/TS-433 board files and swapped
> which SATA controller is enabled where: the dtsi now enables sata2
> (+ combphy2) and the boards enable sata1.
> 
> [...]

Applied, thanks!

[1/3] ARM: rockchip: rk3568-qnap-ts433eu: re-enable combphy0, disable sata2
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f05d0099888 (link may not be stable)
[2/3] ARM: rpi: look up emmc2bus by alias for dma-ranges fixup
      https://git.pengutronix.de/cgit/barebox/commit/?id=a52cbcc6f3f7 (link may not be stable)
[3/3] of: base: use default bus match table when populating /firmware
      https://git.pengutronix.de/cgit/barebox/commit/?id=a26873daa824 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



