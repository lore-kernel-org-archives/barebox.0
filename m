Delivery-date: Thu, 22 Oct 2026 12:10:07 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJpkM-001ozo-2V
	for lore@lore.pengutronix.de;
	Thu, 22 Oct 2026 12:10:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F3E2C202293
	for <lore@pengutronix.de>; Thu, 22 Oct 2026 12:10:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=30xdI3eB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CSmKNXvu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792663807; a=rsa-sha256;
	cv=pass;
	b=aw+iDKJgiXNys4c848FPA8ovVnGSDYiFo9m6rPKULRfzwfq5UaqLiJPjjRw0K50kzosW0i
	UMTc3vnEQrfa07XWZyt+x5qLx9ALRmuah2Bc42q8QhVxXDlVgMZxuH8BoTbTJQF6pi0zZx
	h7q+NG0DNoxQisK9g/Dd3GQX/qnRdRKaY9HahFs9X+sh1PlYL0eQlD+H2fn2db6PLrs3bf
	ha/ZiN6G4KuAB/yLx113Uxs5XQAV4qaLVHmEpYs2LwAavwF0R0AbTMPcTLQ6kISxo1aa88
	zv/okTDbSpeStzvtwzjSqKVeqd3RRsu/gmrjava9FGZfRrgSCohQvbTgfwiBIw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=30xdI3eB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CSmKNXvu;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663807;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ARnLgA1oGBRXs/Jcgij8z3Jysc4sAoR0ehElV32GT3s=;
	b=FLB0Xgm0rhoDrQKwuaPFC+/Lb83oDC1QQMOevvrElrmeSMm9KhAgFepJhHdbGMiEJ/TMkA
	18JRlYtDMhz2Kiuh3m2nmEM2kldEeubiMGBEjGg42JiQ3tQFZggVN07+WL/CgqwWhqLG2+
	sjj13honcMcNVMKhcDfQKCOBEnGvALrp/dlYE5E3uiRuesZyJxRZnL7oYzZ77S1qW5fLCG
	DlYjk9uxfVpk4cu7MW5iv462KMDQlolzmN27KtY2BqKJQR/mBC6Mew7EIelIIUxTMfHd/u
	+6jkDkOP74B6dzMKM3IDwX44WXjPviVyqcKccMZwW+mHBmfjg8TGmzYN9kSQTw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=ARnLgA1oGBRXs/Jcgij8z3Jysc4sAoR0ehElV32GT3s=; b=30xdI3eBJrDdu3
	5GmQVlWbmyoDgrJ7I3fPB1qt6HhYhrjhvIVJoPF+4+/VlFi56wHXNMhZx9rTZ0t47ESI6NrlYOUWK
	MIdXd0rvmisVG63YRLZajqFeiViNI+/PrnZvSrydgjEHY4ohgwicEsh9Rmze3lHAFFq77iQ5ZdSm1
	49MZGGFPxHVstwdROhqVXOIMKcGv2v3Ib3QfS5VzuE5j86D6U+vor56NehYdjjhDK2VoBzPRKMgam
	mUpig0VSHWSS71AkwxJDqHGmLultLI68fbzGVihgqWGVZ0n91MdbnBZsEYUWvbJ9UbI0TF4M17lj0
	xC/JfS8sNXgstscoyazw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjS-0000000DuJd-2FNy;
	Thu, 22 Oct 2026 10:09:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjM-0000000DuGd-1c66
	for barebox@lists.infradead.org;
	Thu, 22 Oct 2026 10:09:07 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 911E1200582;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ARnLgA1oGBRXs/Jcgij8z3Jysc4sAoR0ehElV32GT3s=;
	b=CSmKNXvuPj0bpGQ+QGeJBgZCSW98eIpEqtCSv/M/L61glgdQYbaWgADzytuH24yQiLmY+Y
	Fz29+RDz0xXoC8id1TEpYB3Yn+B96x1B66eI+HBEboVo/+tHP+RppJ9HIjcRuhELTocgzk
	ovaDOHt1hgdtGXWNR1QZSvNNXuUBAr/JTyLORkx9FaLK6QyDFRaAfxMuKWGb/3PHcpMjl7
	ByqXRRWT5TIuVPLp5tdjYXPF2Jzwe9m/twGF5FrpxixIUbXbpo26IBk51PNgh7CzgnQwHL
	bGu7a2O5/81g1ftmDBGeYqqrCypatGjw5fSy26tl57fFkOwJe8uqIOGOOXwUCw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792663742; a=rsa-sha256;
	cv=none;
	b=JxZWU1ic294vKGHnTYOqafognAG4AGihzQnfBAxqIBeCAWIr9HPU3IyTL/FMQYOK2lJbqI
	st+0LOiKPqgoGj3PaYwZh557JLkOCepyJu7wmN7goim2mjGMaWRYgnIPdpfjMt4ZIplxuM
	Hz8/MImR33/6TbwLtUhDl8yiMUj6pNhZjpmytcREAxlm712uwjJAmN/hwfyTt3IOazG451
	SrgdqGaaup5PpxVavM/ed+zacp9PLh/JE92vt3CAj5EQjevO/UTmkwOOlb2oCaN4yvh26O
	CqKmSvYBn8B0uDNqlLaSXtEXglHX4Ja1mx3kB4jbjjyaNzad6MojGiaVHnI4Bg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ARnLgA1oGBRXs/Jcgij8z3Jysc4sAoR0ehElV32GT3s=;
	b=brTwyIiDoHlal4zSNsAGw5WOi7bk9ipYnVeFXTz4Hwk/Nw60AeMVh/6k+drJk0GhpEpuzP
	+d/lrmsVsOFDz4fACi6TMm2T/8iiNoyFcHjZrC98UdfxAViowz0xBnck2kc4cfpPBX0+85
	tB0ScRJKQlnOllGM77Q7EqP+bgymjoOv44uRdocLyaEo5sEMuh1E+OVsHReHSkK53o+PJU
	k9I8CnLIqp5wSt/pBeYUOWl+XEGs4Ta6sM8YQNB2Z46fhiTUFuJLf1kT/wiE7tWKMZxU2Y
	HRL94aKy0Q9SBA82Rscyj2sRkXQ2+Bexf3h6I+31dt8/MZ729ZmmLjMOVuEYkQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 83D27FFC6E;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015112441.2835686-1-a.fatoum@pengutronix.de>
References: <20261015112441.2835686-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH next] Documentation: migration-guides: turn
 migration-master into directory
Message-Id: <179266374253.1192486.5981749148016681613.b4-ty@pengutronix.de>
Date: Thu, 22 Oct 2026 12:09:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_030904_582101_4B409A43 
X-CRM114-Status: UNSURE (   5.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 13:24:02 +0200, Ahmad Fatoum wrote: >
    This allows us to avoid conflicts, especially when basing on master and >
    targeting merge into next. > > An extra benefit is that the upcomin [...]
    
 
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
X-Rspamd-Queue-Id: F3E2C202293
X-Spamd-Result: default: False [-60.57 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.81%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
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
X-Stat-Signature: 66z6ba7oytm1nuhzkbwaeih9wbzgdcff


On Thu, 15 Oct 2026 13:24:02 +0200, Ahmad Fatoum wrote:
> This allows us to avoid conflicts, especially when basing on master and
> targeting merge into next.
> 
> An extra benefit is that the upcoming migration guides are no longer
> hidden and thus easier to review after a local build.
> 
> 
> [...]

Applied, thanks!

[1/1] Documentation: migration-guides: turn migration-master into directory
      https://git.pengutronix.de/cgit/barebox/commit/?id=df53c88dfd4a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



