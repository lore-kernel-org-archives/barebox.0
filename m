Delivery-date: Fri, 06 Nov 2026 11:04:46 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPGoQ-007y2O-1C
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 11:04:46 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 94881202A98
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 11:04:46 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hlPg2njb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VmKftLDq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959486;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Tbxbfiw9W0JJ57f4fCtaccZnwK0kyf5YvU8yLF8Xdes=;
	b=M5gj9GxjlQs0cVvro+KLtrC88lmhood3MYqEhqlMhaK6NSTNt1s+qwZmj9DWUwbtVxKYLv
	f7jl9/4Yqb1J4JjFyJB//g2N4z0+f9/Mca5L4de3mmP9575fIyNlyYjKrE4A5CANaqPaRF
	FYEzpxFSkNSrS3IzE7JIK9Sbo8Qm52OABZRS0oc5WthA/8Iw5b1GzAeHTHODLGywlBJcCc
	lVOrpygsV+UUJSEt1VWfBTcBDo92S80BHCbrV2UNRYPFSXs3cEdcNxd25ygqyhZ9IKrakd
	pmk9/q+3bk2DRQmKDZCA8srXkFhcKTVWjncUj0N6NEhy28a7e4KaLw7/92hhAg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hlPg2njb;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VmKftLDq;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793959486; a=rsa-sha256;
	cv=pass;
	b=dYKNSBrVao/w8gdqy0UzjMx+whJfSixFyXTAG9ZmMNcNgGHs3HYNKiTKOJSofwa0PBlKZ9
	H6mpWNziX9mJX0yDtv9+3rEZs6ebGkywSHR8W9/wNPI7f7MWjxDLx+9cKNZmGW74IMc0p4
	zUq76XmlIo1lrte38gBkGNG8fEdRnM8873gOHW5S/Tv2s3XhH6ErfhYZMYNVpps8MvLZ0+
	P8hmkXnHVMU1NfW4xue/9tysUhBBk7Dg9RII7kOwNAPeYsiyfTK9dE1i/q07gv9anE51IG
	PlZTOf0oq27cHqgoYrbUZUQfCioqgfVsESc4AskpfPB6YLpzy+emN23eg3lLjw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Tbxbfiw9W0JJ57f4fCtaccZnwK0kyf5YvU8yLF8Xdes=; b=hlPg2njbBIFM1g
	0vlYgtBy3I2FNvmqC2U/+pgXSSHDkmhnArgTouzrqwRuSUM07PshJCOoeAbZpqSnyZxDK48RJ0W1g
	iVgZGmWiw7iEPob/5JVoiFYzEtrjZMutVpU9m2XkYOzTn/gCrvBZNA+FSHX8DerbprfsFZfTX9RN7
	LKjTvj69xE7Mo5uppSQc8d6rrNjhYliq7j7msuk4c9oTG9ufmA5kRcUllKtBr3Z7mZPT5pRuhQGf+
	63+dqv4yFUmlhYGk2CcakDbIerhuD696NvysxEzSbTmBcqsnN2fXPYKKzsf8zNR9+V4MmSmxIefHk
	J/04YU6PFdsRy4byAuqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGnX-0000000Bq9W-1QhZ;
	Fri, 06 Nov 2026 10:03:51 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGnV-0000000Bq97-0ABx
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 10:03:50 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EECB42022D7;
	Fri, 06 Nov 2026 11:03:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tbxbfiw9W0JJ57f4fCtaccZnwK0kyf5YvU8yLF8Xdes=;
	b=VmKftLDqdeKnJuoUTwYaAcvVTeExWUUYEH1mdN+LqhW6EhPiZ9AWxqnFmcU5ZlvegfGyWA
	nvY1yOCK5JQVrPhoVKCd7IbzK/mzKZDjLJpA/g+R1Q7/mBiANMzgz8uJEPo6NsA2C8Zuad
	ERz5rcH4CzbK8agKz+VsHG/GHqGIJR3VLB5iDmVYq3wvKFrVK3tSRJ1/UrZEfVVLXz6b/F
	PtiyTUaexCTYS5KKO+tikNCQlJ5bqXHN605xXycYS1vCqv/Ei9ymS2I4rAdqCTXVF5Q+XX
	IHA5tCUzqkNS71xHcxSytVHvZDtXANQ+nYw9hGzkFTehIUKiFfsxlCxYePLRIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Tbxbfiw9W0JJ57f4fCtaccZnwK0kyf5YvU8yLF8Xdes=;
	b=B19Do0wbX2xDXlgrrh6GIT+BIqlWMNinHgDvYzhDbQYfzbV/RhkltqMKTwNsHsc3BdodJz
	86LBsPstIqNFkJuoM+ANblvF+dmepD8wVL9NSo9JUAhEVFPpMJai+d7pKS5WLnFWFJQDeK
	OGR/4bj5emLyjoPQjzb8pB8ulaTwYnYQ90A6zAC0mT1Sn3yxMo9KZpTR/KaNMGhr/87xf3
	ibartdQk1y73Mo37vyf1n7KkpeJQQLw3/NTTC+BJexQHbs7qtEhAwgvnRUie8se6GOJ5kt
	GFCnFjmRBTW9vHxN35bjQDOQeJw9QFZHIZvnlhXK1GCvbV+0Rdv4SiyKhxSU4w==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793959426; a=rsa-sha256;
	cv=none;
	b=BGtjp6lRN2UwBP6hUlMkCoS9OnPulzahg2cPlaA64x7FPLOQ/PiGS6KvuQ9C3F7YS4l7IL
	zS8+60aYje5mPwihU1boBfdxRlUoehJuLeC4CeOSa6oD1R+DUK+WMps8kxcNSvk5pi3PFS
	WIbsvdmeFbWdteAIo4/dnm6n6ULyZkv22Hy8c90EatkQFvjISMpka6eAENa426c0Oa/3zH
	36jPMeekYlf22WLJQ0/MxhujDmDiRK9GLMRNp7dDU59m8+ESomRt9BBGuyLd+JVLRG2CEu
	whcNZSYQzoGEGjqEJxwpnBsEXWiDfLT36KDjQNll9trYL3RKA08AfyxDVEU/Mw==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E8D7DFF9DB;
	Fri, 06 Nov 2026 11:03:46 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261103143234.855394-1-a.fatoum@pengutronix.de>
References: <20261103143234.855394-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/2] fs: pstore: don't claim uImages
Message-Id: <179395942695.4004389.2947371014276748916.b4-ty@pengutronix.de>
Date: Fri, 06 Nov 2026 11:03:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_020349_263052_B06F2534 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 03 Nov 2026 15:32:29 +0100, Ahmad Fatoum wrote: >
    pstore_driver sets .type = filetype_uimage, likely copied from uimagefs.
   > pstore doesn't read from a device at all, so it shouldn't claim a [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 94881202A98
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
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
X-Stat-Signature: jrrnjwi3rsi1wm49koyb8s8mwdrrbfnj


On Tue, 03 Nov 2026 15:32:29 +0100, Ahmad Fatoum wrote:
> pstore_driver sets .type = filetype_uimage, likely copied from uimagefs.
> pstore doesn't read from a device at all, so it shouldn't claim a type.
> 
> This is harmless so far, because file system detection never reports
> uImages, but if it did, mounting a uImage without uimagefs enabled would
> mount pstore instead. Let's drop the type. Startup code mounts pstore
> with an explicit type, so it's not affected.
> 
> [...]

Applied, thanks!

[1/2] fs: pstore: don't claim uImages
      https://git.pengutronix.de/cgit/barebox/commit/?id=46aa94cbab1b (link may not be stable)
[2/2] fs: jffs2: refuse to mount non-MTD devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=cda5322f178e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



