Delivery-date: Tue, 24 Nov 2026 07:54:05 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkPi-002iBD-2I
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 07:54:05 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 459A2205A0C
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 07:54:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="obbrU/Cu";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="YJtx/EyZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503243;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0Hh+BeMEUEmsOfFZUoQn536du+i1oEoQovP29muTNuA=;
	b=LK15Ej0KShPNn52ACZJBKqVmeFF3xkJnzo5zK1sPBM/fx4yW/kfCeeaVdgU+xMkPTqpq1w
	HmTLZsNr+b90qWxemtOfsFbHOGwaWwAeU0ZbGBIfzPQvvP6HXHRnQQxcPHkGX51RpDzAOt
	FOHx52dDKIHeNexgs9u7FSTeEJ0jbcTZbliceIVRThyg/MK91d+l0snrzT2IPLNH8qLrAc
	ErCUiwJEuVyH3Iefh64dhzjgOOAJKch+PW6NWASavX/aUu4BItAJAaEpf157AVKrya1JkS
	VO3llz1Tv5tKKk6pc4O0/udsl0cabfrSDsUEZjSMyhK1hn4MLkmvz3pls/GkNw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="obbrU/Cu";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="YJtx/EyZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503243; a=rsa-sha256;
	cv=pass;
	b=L5HQHpR+s2CnZGTCQJBc84EeU+HhP1OzxTK2ZGbDyRLbgBS/zO0rDnQln9CkZygC8nk/1T
	cRcNRpyR2xUraML41JqfPtJouX9+jj4gyqHDBQpNQe+vVk1ndM3vz0b7qP9hzyTqfAKQp/
	ojInc7mLx2kBFG+xV+mQBx5Jhch8jMOxxpjBz5Qp+ZgE5tygXWQxYuCM9g2TFWngSq0cpo
	tWOextmPSl0XSLFSJeGSvC6N5MpgahaiGqbVZCflYl4N/j5FQiw1AEA8cbUrYbDhlGL5EL
	HKlOddN8KWDE7YoJOsrsrlyXNyk8RRcypqwyYZ2rIKoN55ZsKy3yCSmHT/ZBRw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=0Hh+BeMEUEmsOfFZUoQn536du+i1oEoQovP29muTNuA=; b=obbrU/CuDe79oa
	LtqjlgY1atilRwsrIYd7UeVOTiVqvl5sCAeH/O4SiUXfiibAFsJZ8xwlBs4tBVy7vG+lSYtyywI19
	ZOpz8v+vfBwtXXZAGN8MaS7sk3kjdJvuVoFxlNdTuCjNfUV++MuN4Ozr9XPMjcQfEAD8oGEeUwBB2
	KSwNgPPTbGPhP5FFWgVGG4lEXvdbDN8hERjte/E+aEuBKSJB2FyY646h11A55Ub2NaSYZPkhLjooF
	/TU2dZl/6SskushDLZdgx1PTKSGin3gUOsP3lnWMFekXJTKFdKNa/stZKTN1fNniW8iVnY7K+lYi0
	+zQwq2TnNvSgEE8rbYFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOY-00000005g2Q-2IRu;
	Tue, 24 Nov 2026 06:52:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkOR-00000005g0a-3C9W
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 06:52:46 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 181F1205A19;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Hh+BeMEUEmsOfFZUoQn536du+i1oEoQovP29muTNuA=;
	b=YJtx/EyZcrxQKfEKX7EfNMjLGlDebJBAW/pRICrA9bSCD5/bGD40Aw0YL5tKlIlM0r/OAB
	tOKujN1RMllpx6s0pJKdqdkDDLyBVOui59NqsB+8JUmN9ip+qF0+BOM3SpTiwLRjyqbLNY
	O6smIQt3ZMlgpSLGK0wn8hvDgL0M8e2f6lB+HQcp6oJogWm7xXMpjbcFKXjYQWcKHFxpkb
	VCX3wQakO97k0dWFD/eHLVDxFAzzROkHOz81ZZapqHyOKY0omlq7Ns7KCUkiFReUlPXgfk
	Hk3VyfRK77v6hxfJPqHX/Zi3jVfA3C9U1oDOgUOqkPd1qysQtA/D9aTRy2U7dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503160;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0Hh+BeMEUEmsOfFZUoQn536du+i1oEoQovP29muTNuA=;
	b=PDqi/8QDw4wUJjBEp9ZDY9XzA61Rlow15tfx6HYxuGj0hfYIFYpwAzsv4lBkw8vCDrwvNA
	fPRAfCqthRXoOyjnPzkZVkkTQiwg+Jph4mVQqb1yVKnYqpLhZXDEO0YX0E2lbpk4wAlaLR
	f0H9p3W/dBS86F1K2GyEU9vhnnhJV+yrm22qWTiP6rv7rzqoc6EbGpPuQWQLvu/x7QzNio
	OXZLuX19m2teptIjIP8XHbRZADQaHz7r7+xiYzK+qzcISD22m8GwLj4hBU72xhXnXSuT0v
	HzZfKHQ5ZQdlSj7aBYnc6Vq6Yx83hHWTZNS3SxFyIpK4kVypRsjwpEdWSpxqYA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503160; a=rsa-sha256;
	cv=none;
	b=KdduqYhok/PzJ+A5ieFPNmU+UaxenpNVd+iz3VbzkBhcDBfTMZ5P3R4kITT5UKJnMvcaCu
	RRrahw/9Wv9Tk9RuMofvVSWAvmwY3px7pcKXcxeB5N6U7/KIAEl0xNIKDssX7RjQNgFz/b
	CPIM9acD183uy3/8iI3HZsFRMHybkIkZT3MCE6hS0HvwIl7uWh3waVCa2FdU9N4efWmEkA
	/aIwKpbXB4FVpM2yMxinZPyzNOhEc8qLU41MdgTq1NQ8aPmToyVI8l6Gl0WkHRPyOTKUGK
	I+A2cmS3FFHqYEU3Dmm28U7SRgCbc941ERBbMXA6Bew0f6LBt80e9rg0Na4n/Q==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 009B9FFBC0;
	Tue, 24 Nov 2026 07:52:40 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20261113100926.1764058-1-s.hauer@pengutronix.de>
References: <20261113100926.1764058-1-s.hauer@pengutronix.de>
Subject: Re: [PATCH] boot: rename BOOTM_OPTIONAL_SIGNED_IMAGES
Message-Id: <179550315999.350571.371214851873889223.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 07:52:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_225243_996434_5D7264EF 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 13 Nov 2026 11:09:26 +0100, Sascha Hauer wrote: >
    BOOTM_OPTIONAL_SIGNED_IMAGES is easily misread as an option that adds > support
    for signed images which are then optional. The option doesn't [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: 7iw3bxm3nkbcftxca3b35u34hxxrftf3
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.96%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: 459A2205A0C


On Fri, 13 Nov 2026 11:09:26 +0100, Sascha Hauer wrote:
> BOOTM_OPTIONAL_SIGNED_IMAGES is easily misread as an option that adds
> support for signed images which are then optional. The option doesn't
> add support for anything, it's merely the opposite of
> BOOTM_FORCE_SIGNED_IMAGES.  Rename it to BOOTM_ALLOW_UNSIGNED_IMAGES to
> make that clear.
> 
> 
> [...]

Applied, thanks!

[1/1] boot: rename BOOTM_OPTIONAL_SIGNED_IMAGES
      https://git.pengutronix.de/cgit/barebox/commit/?id=e2f558bd6e28 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



