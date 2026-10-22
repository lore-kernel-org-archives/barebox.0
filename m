Delivery-date: Thu, 22 Oct 2026 12:10:06 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJpkL-001ozF-1a
	for lore@lore.pengutronix.de;
	Thu, 22 Oct 2026 12:10:06 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 919852022EC
	for <lore@pengutronix.de>; Thu, 22 Oct 2026 12:10:05 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4MsMt5ut;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YSVjW5tk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792663805; a=rsa-sha256;
	cv=fail;
	b=FjPqRFnujokRTc1yUxZWySqMLzWlzJHXzYQ9lmAWancEeqDMtpdL4E12LeRz2RjMLhrZcU
	2nMUdcsHFkG46v/be7Erwd3tDeMWLyjQkKUQGFYceqIGDcOufSh6yjrcGTzvGRsuSO5dGj
	RCT+UvTd/3bcTDvDyGb3V3n6/xjYu50OjudsBohUWHKOEUvdNS3DiObjXuHWdC63T8K8CF
	cGz0ZhC3ehtH2NEE0d6KfQNkcm3xgJ6wdKFFN2C7GehsnBPxUAtrCz+k8ym9Xx+K85Dg5j
	esgrX6fToDnUWfmB6sAbw6lPpAXt8SRqzNAAEIkXt6S/4INe2phGURHf4Qq0Gg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4MsMt5ut;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=YSVjW5tk;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663805;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8OtEN5/+3a80irvugCQTpxxjx0rVJOfz6J61nEksqyo=;
	b=eb7xhaupG0SFFCLPHlOIeTnTvcd1xWGWzWerfuwaUOAROBv5H9YbDu/Zru1PRp7zpfTVrF
	9Ks1o20Pt6TBo1NWOOa+7+QWugxLmQkpAwnsk1xBqWWGqyQKF1w/pdhyeuqa4CXzXsIF79
	90hi7McdxZaXPX7vPtIPtEJ9ZvMBbSE40txUk/62KkmjUY9XzE/Zobbb/PWkvD5zhpWZqQ
	EZTxFFwAe78rWo3q+TJACI0f+Yp1D34EuJcy7NWe0tm/kn4c91B3Hm9qpJhhVFPRuN6C5F
	474rAYoS1+ibtkkt7VLgCE7JdzqMJ+MHBZpmhH7YkTre409/O+lxqirY81B77Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=8OtEN5/+3a80irvugCQTpxxjx0rVJOfz6J61nEksqyo=; b=4MsMt5utWJZOoo
	R7LKUAXhNCpZ38QUVGnsK30mJ5LmFlqWt5QisG+PH3fJqLVNu2y5ZnYpkwGY2pt0haEjyMFsP6BMj
	y6jmvvM7ZJXaGEmwZSPguDwD1SD2+UgGFUgee5kt7bc4k5P0A862bWEnMsmrA0dWiO+hgdUcX4s9r
	UCzjvyi3W7M/bnLtSNs14HeFPBkP8jq/1Ntt/sCa4ACOBTagT5suFVbxTARW6Vr77eVXir1l80zba
	p7CP2a99M8dUeh6nvLG52eGXAnT0n52MhykkzBDFNHpWNhiAxhlTJxU5vhpsmudgGfFRM//jv1Tdo
	AizJBafpnkFGxoN8DZnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjS-0000000DuJS-1mb7;
	Thu, 22 Oct 2026 10:09:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJpjM-0000000DuGf-1d5V
	for barebox@lists.infradead.org;
	Thu, 22 Oct 2026 10:09:07 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A809B202013;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8OtEN5/+3a80irvugCQTpxxjx0rVJOfz6J61nEksqyo=;
	b=YSVjW5tkBOts+2Xf1x6EaSe+Nqqx1NTCxlxQPB/tF5UfwZsLwvsuHvsYJ6lMz0aCO40H2W
	gBMfQrHufe27vIuqh9Kjbyh39arSRIdfx66GjDqlvsaEp9Y3ZnIzOKv1/PicCFtmugW9wB
	bM6ZjihmCTf4+jY/AfXqWF7jtrL6IymybMTM7RVyLAZJK0PoeU3mazKvRQABMsqr7umOPE
	VwNJajGLErOjorks3tXi3OZxlBpAi1ZWGexdb7dz9FXYNJaiKogcWY7L/XnPXNCdAVD3xp
	7dgz/PyL/vDJ9E4U0nQn/bNCHP9SJ5subc/SDI0Lm4zcSJByGf7vICXl4LXIYw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792663742; a=rsa-sha256;
	cv=none;
	b=c9BR31xAv+7y/0IOV0xKY/eaMlv3z4kaPk3sRXacivXOttaHXJqy3RLAL6XSWOKlWPdSKH
	lEMQuCJYRsB0woZPTSiQd0LhH3djG3BVzAy/IjmHJjYBLEkXJm+xuPEQdY7Vlv1jKiK/V2
	E5tTqix5szbLbmB+57Nv8Oy4el9XNChhXwWw2Xx2MMrJVH5zyYS7ABA/oqtxgmOJy0/5le
	J/CaUy+ki0eb/Ps4GHzR6ihv4GpbnZBK2qpuO0xX7OYOKRJEeUaX60ZWtDFruJuXWJxAjv
	LoRBA3jnYWBNs8IxbAS8vdLeh6NFmAhiJBcVZRpzRpHR9h9AllbzWXF6eMT7Sw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792663742;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8OtEN5/+3a80irvugCQTpxxjx0rVJOfz6J61nEksqyo=;
	b=fH8mGGeoW1luHjYzW0v0Rmab6t7cLjaMOMf1jPlgtnDlfSWLS6emxrmsWSvtuUKq5vWjdr
	aQEar/oZGVVbOdwSfVlmFLnX2G+REX6BXa12QXRmLeACJ6SBHOsahvTOd0oejvwttY/Gq7
	ilS3sEvEYMFvcLz0ejIX58Cu2zL3kSllCzZmdfNtn8KECjP866/UFemZD2zQXqNHO5zwpk
	dOzLyT73sUsAoGFU3A7A6Xpo+8dZAmtUaHYqFHRC74T/Jq4W5CTht0FqngoS7b8XPgvUHg
	WmqsS9YP+z3pZyVGZf5DhYWChOXyxV2PWip+KxoKpCcaY0R43PbIhfkB5XrLwQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 864A9FFC9D;
	Thu, 22 Oct 2026 12:09:02 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261021193607.1108006-1-a.fatoum@pengutronix.de>
References: <20261021193607.1108006-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH RESEND] Documentation: migration-guides: turn
 migration-master into directory
Message-Id: <179266374254.1192486.9147851063753185568.b4-ty@pengutronix.de>
Date: Thu, 22 Oct 2026 12:09:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_030904_599130_0628DE60 
X-CRM114-Status: UNSURE (   6.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 21 Oct 2026 21:36:01 +0200, Ahmad Fatoum wrote: >
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
X-Rspamd-Queue-Id: 919852022EC
X-Spamd-Result: default: False [-56.37 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.96)[99.82%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: bsj8bxjx7sdsr91ozoi7iw95rqbaigj7


On Wed, 21 Oct 2026 21:36:01 +0200, Ahmad Fatoum wrote:
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



