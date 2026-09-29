Delivery-date: Tue, 29 Sep 2026 09:57:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBSin-007bH9-0N
	for lore@lore.pengutronix.de;
	Tue, 29 Sep 2026 09:57:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E9676201E6E
	for <lore@pengutronix.de>; Tue, 29 Sep 2026 09:57:52 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1HgheGZ5;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BxLxpSmT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668672;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VWARQt3wIppH7kRZzUsWEAJP3146RvhKwEqPtgZ9EJc=;
	b=EgBv7oTt1MupPlwc4JBoxy1KpgS99sA1wbZpPE5WWhmXKW6yKfGrrw5eeU1UajALbqv7q5
	GisxS5H6i7U0rH501vIubizi8ykoqOic7QzhY1D1FyDbV+oThKUnxUScA0pCGAKJPBVFXV
	Pa76l6/TyXSgkTQlhTh8kHyhUnQy9VHcWcNe2u8d6QCRIs9c9p3pNg630fTS1RzEPoq1XL
	wDbWcG7zBy8mEl2Bra8T2Yth9sc1n7mCPKawbt8HRuGaVfhM2oEEVNEhn7I1PC8IZRme7v
	BZw5mQVVWWPNobt6htg22/q1yteWYuKagVAUoJSZmzOxEsNBM7QI9YXrEQIfkQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790668672; a=rsa-sha256;
	cv=pass;
	b=Vx2/5ib3A2aVWdCTAbCFaSEpLRPcsQzTL3q20KTAECj0obQbRRwipCGXTYUNixGFye3Cr0
	NhZhf9mWU0qPdj7FZtv889ngpFxgzWn0M5LGOBa7C50s8yYtYNv9a2tWEMZcPiMD6ivs+b
	oRP5SID/wPlPq6IaATn77ryA+XVcjamGDN0j9vSfAbpVcnPPRhEp+zcuhcylHwWDLE6GYw
	hpDybGL+B7LSaS98GF48YEaQfIt56d/zV5xrUQ+YnjImioprakg7rvatiyJN0W1P59eDP1
	+nEuWkwtPtzp3plLMER0ubJ1LhpmJTkr2Ngu/GM+8EHKQVMTITf75v/Sh2xP2g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1HgheGZ5;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BxLxpSmT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VWARQt3wIppH7kRZzUsWEAJP3146RvhKwEqPtgZ9EJc=; b=1HgheGZ5KAhfroyvu5HsuzW9BL
	JE/ijgHjnxzZ1iA1ezyMpRREpOILNDHZ5g1o/aikcshdtb2/UBYstcZwsIl0jeCTjROmSg/0g69TR
	U7wPjSnY+TLupO/fXLoEf9vB4zpb2fCpo3YiHFd/5dkL41pXsTeyt2T/kZqHnGO2FMWzMKYABzvOq
	dsDfj/1gKb/uXIBZmp7gwAzCj9o2ghBeN5u3tTH+NZB9jHW9tXnYq6Y+Fdd7yD2YSRv1biXXKYfvy
	GkNH+3blQ7PkLwfhmj6IIrj1wPTZSvC4AqC5rM/T8SMu4er6eUQjpxh+5kVCHATBcoAkX9+JOaR+p
	bj5XKFzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBSha-00000002fe9-2rOt;
	Tue, 29 Sep 2026 07:56:38 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBShV-00000002fcy-1lSL
	for barebox@lists.infradead.org;
	Tue, 29 Sep 2026 07:56:37 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 671A6200B4C;
	Tue, 29 Sep 2026 09:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VWARQt3wIppH7kRZzUsWEAJP3146RvhKwEqPtgZ9EJc=;
	b=BxLxpSmT0r9NyUiZw4Ke0wCDpJXxvMXYtwC+8uYHJsvL2tsV2MfdaWB3A+5H3Ta/etX2gH
	NO1yESetzIYv+cMkpzeDbfPbftQyLiRz6va98dwf47fsuwIlwYoViNmQ3k6o2xJUxy9jgr
	0qGiRKpqTIRYXuS8ewOXQKCrXkNGC6GbhwliJn81YM4hRUajwkce8vo8XbyTWb/Tk1a/cL
	v6xqtBhC3R4zsRo3Vz8SXBJHPB4KMUCrvsu1XPxhBx7wQJBjfqbt0jRGPro3MGgV3jcQLU
	J25JPSKkqrbV2MnrfW8BcRvxawBNnpgNRZotjy8HQludWAoI/wLoMJO5PWrG3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790668591;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VWARQt3wIppH7kRZzUsWEAJP3146RvhKwEqPtgZ9EJc=;
	b=LcXenZn+nsIIneTJBr0jBbPy0yp68KBf35RHZVonqGRWvfGsQwmNkyiaws2PslhTF9npYQ
	uy405PQuxuf7XmYtu3xMWtHRu1pLP67+sBCrFzPlqWOCZqPfwE3pHshyn3iBIcF7ixwe40
	v6ystnlQSnSYfPFcn65vggdCZWe+TtXYMN0JqBERvo0Aob+jQnGLGBs3QGah1CWEjAW3t+
	wwjG4WwfHAdY1hhgOzoLy2bXSR8TvyQgsFXcZKq4gB8LJ4yXMPmmfTp4O0NqPp1LcMlBjz
	zdsKgZXstqvh37o9tzgSHSKgkH4EKypj0CQxW0+UkL5mMPgmwCIyWrkwJQe7Hg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790668591; a=rsa-sha256;
	cv=none;
	b=Lbr4pQNG31p569JslhL0PnA583F4uvXw0XMSQ/W26YXlS824BuYmWXHyC4K9GQJhKzL3ra
	9eylGwJNITf6JSaL2UiiNV4kqztO6NsA2RKE0bKzLy1+0Q70SUDHD6X0SPVpC5zK7qdq4r
	YzVtraBkUKb7WW3R66dmKlD978FPS1bptXzeLKJ5qcDzOIBn9Jljl/NTeHsVww5jaghHOF
	0iAob76SFJK9J6+1wTMJAl726kpqo+a/fgNz8XqKPiUcEIxvUZm7YdKMH4rdM1QfxrpErI
	gSSoivvDcOml/9Efv6a6RzvT8O/QcSyPUho6ol/qYJjkzlt1IpIyvlsyLkcsiA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 519D5FF954;
	Tue, 29 Sep 2026 09:56:31 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260928095540.1101553-1-a.fatoum@pengutronix.de>
References: <20260928095540.1101553-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] video: stm32-ltdc: reset the controller on probe
Message-Id: <179066859131.756771.13134428428843035175.b4-ty@pengutronix.de>
Date: Tue, 29 Sep 2026 09:56:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260929_005635_461962_376B2768 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 28 Sep 2026 11:55:38 +0200, Ahmad Fatoum wrote: >
    Linux resets the LTDC on probe. Let's do the same in barebox, so > a chainloaded
    barebox doesn't attempt reconfiguration of the DSI host > wh [...] 
 
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: E9676201E6E
X-Stat-Signature: ptb6axo55zak49zzbhgenx4cdfuofk7a


On Mon, 28 Sep 2026 11:55:38 +0200, Ahmad Fatoum wrote:
> Linux resets the LTDC on probe. Let's do the same in barebox, so
> a chainloaded barebox doesn't attempt reconfiguration of the DSI host
> while the LTDC is still streaming to it.
> 
> Tested by chainloading the generic BL33 image on an STM32MP157C-DK2 and
> observing it doesn't hang when framebuffer support is enabled.
> 
> [...]

Applied, thanks!

[1/1] video: stm32-ltdc: reset the controller on probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=8c902e21647f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



