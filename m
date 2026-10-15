Delivery-date: Thu, 15 Oct 2026 11:55:50 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIBi-00DryD-2f
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:55:50 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 91EE7202381
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:55:50 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QZP8Fz8+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dPCvJivh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792058150; a=rsa-sha256;
	cv=pass;
	b=GxmsZcjMEpFvtytf9BGNX33N+kCsUuBpP3mbL7y6MjadjLTaaAIWm1FhulLYzsft9P/WYX
	IDB0VNEmDywrjEayTPYXaqI/Xr3IAFfEk11+PQqsRoP0JniipJ/t6n11znqGIkqolXkNgi
	1Qm8EcQR4yKUGpB6CaNJg7MFak1a0gXJoo2lsC92aI+w8rSMC5UERtiBf0lqhNKU2ZoNY2
	QTYvCPlnW520VRXDugulmC9PKiaiIv86r8kKHn9lEzcY8I3qjKxEuFZ/zxaZgYyc2QW1VF
	YlwrfejapcoOaHYuvISPnyUtJmE4DsbousR5FTuimQMpMc2k/TBrYW7RWV1QeA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QZP8Fz8+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dPCvJivh;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058150;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=McB/v0KSK11NXlYPd3APTR3IXs2cc4TYVcurltTfs6Y=;
	b=JGqaIbwJUL9Qg34vYD8wdKbgfW82p6Gkdezd5Rt9CjvwpnmENBqXvns56HTZ5GNcTvmJzF
	8q9KmUwRuelCwvRTmQB1m1D6xn5OHSrMZ2sffzV+domVa7ThAH5NJ2zTlYw4TYzdKkvdls
	ZczEJ5TtTyy+E2+O4aL0NWoVn4M1v3nroxKBT5FfYKWFSdcNrWy23IsA69lCOs9Zu0AWtx
	36tinaoz35PRfD3MtK04nXGzK5NkAsbw3QnI1phldHzUI5Y/RBaA/Av1K0ZoUWqLoCE0Sr
	uS44vfdlVUjnRP8G9jJeLJ3w81dFH6HsjIuLNaZWfKzoae8ZX7PEz80B8XrqBQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=McB/v0KSK11NXlYPd3APTR3IXs2cc4TYVcurltTfs6Y=; b=QZP8Fz8+UghsGDfZCzwOk9aP0F
	R1GXkajtEf4xHELLLh0LkvHi6yKhl7nW7eo1rIJPTNRN9tb6vcoHPaISU4Ah8TjJljSZolpF711l4
	3znBN4sNrmym1kvXgPAxtSUUiaG4H1KkBmS6yK3mukgc+McsrOftIXfrj6vHfDCCs/nXNZ9mX+2oF
	ahjuXkB8bRCpNIWu0NCvUrKJS5L2dcnb7N1IuCMMcgnBIyJcEXKc6B9AmP2CAfRtVjZsaZMf+W4nq
	dPjU6gcXaiUCjgQxzrFSi3dHLRZEFJWv5XOp8qnGe636JmSMrxDrn4GoQgrNZ3nbt/TiUAvhtuEPx
	GKJBK5EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIAn-0000000HLx5-1cSZ;
	Thu, 15 Oct 2026 09:54:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHIAj-0000000HLvq-43KG
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:54:51 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 13354202012;
	Thu, 15 Oct 2026 11:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=McB/v0KSK11NXlYPd3APTR3IXs2cc4TYVcurltTfs6Y=;
	b=dPCvJivhKDcVmJvzeb4N4t/0ilongT71a7Mi0KPRuYH+AprRkuc42Sdl0HBVdfIqdVvI+Z
	7Rxt8oX8W2w1Np1K9cKc44U86uYQXpodDJDNavRri7U9ss17wFoglXrh7/8wKE4MEhYjBn
	O2CdW6fkj3Rx/CxJyPaSLhhATI9MeFBvI4BiEF9451RWOYgF1h9V5W/50MetE9yKlen0Hw
	lEWgSQ9s80DV/+KrzIHzGUKyOPHNeMw7Y9JkF/ZpZAVRNGB1/NXvsIdOYixFTckLneP063
	dlBzymcufqbe0Gqpc1V4ab9IxfYPYqGSTT0xHfHPs3V9PKbUK10EI5dDRgd2Zg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792058088; a=rsa-sha256;
	cv=none;
	b=CMTIdLGiL+AP/n1LexW80QUaAyv1EFlPOVBfGNPNq7KvL0zCz94Z02EF0TOGzp4n/cmdpY
	Dqqt5XnySbRrb2LxxHfFQuH8ib6+C87G3AAGY5ZVpfiEu6wWvnfVWCTMcnB1aQ1zuXVmrx
	+MAPlNYQFuF7eI02h4971PBU+Yn83BZ3vc7Vw2ECMgIxuYDJEpGGyJganxAkI0SHA5Xe5n
	1KORb+qBdyolIdhaOijsuorPwp5ILfmo9gWKKjui+T0Lg7YJUyO4w32qKJSKQ8wMq6cgEm
	GDvjTNAeJRfZAXohsg8MmN2dXLhsBxtPVxnmlNPaGkcYii+XbCPbI8t8yQiS1g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058088;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=McB/v0KSK11NXlYPd3APTR3IXs2cc4TYVcurltTfs6Y=;
	b=MdQQDuK7RcN5brHENLOsnUNkdKuqGHJVjTql2G6kG5C9nMpi4lgF/8zOe2CEKxC9tsrsWz
	qZ3O4EowqA/8tT88tYt5HE3ifL8qafy51fa/U4kL0dVSbaEE9PfyhayBk7Mfyqis1zeT/w
	pza+UixnUtCgehTWQG9k4hauAODSx9zcRiZP3aMBoI5qEII2svlCclpxjff2rIZCewyKZs
	Bziztvl5QVizr2ruERyQB2PWJ9aaIlo2iX++4sJgEJssXoTJuNpdCVqp6u5ahQLyJFOuCs
	gYH+J7nG1KkugXkX0cC+CW7J9tZkiAvqGJFqN57rWOw3yhSTcxZu6V2HXusaEA==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id 00ED41BFDD5; Thu, 15 Oct 2026 11:54:47 +0200 (CEST)
Date: Thu, 15 Oct 2026 11:54:47 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 04/10] globalvar: skip empty variables in
 globalvar_get_match()
Message-ID: <evt4nixcxhq6rcmdytq2rugefgnlvzhaaf3gwmv24dgj3xpgjg@ps7load5rnnx>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-5-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_025450_174397_50D60A9F 
X-CRM114-Status: UNSURE (   5.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > globalvar_get_match()
    concatenates all matching variables with the > separator, whether they have
    a value or not. As variables like > global.linux.bootargs.bas [...] 
 
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 91EE7202381
X-Stat-Signature: tzmnefdafyfu1zjbsf38m5i4icaerdy6

On 26-10-15 11:18, Ahmad Fatoum wrote:
> globalvar_get_match() concatenates all matching variables with the
> separator, whether they have a value or not. As variables like
> global.linux.bootargs.base or global.linux.bootargs.dyn.* are registered
> unconditionally, but often left empty, the resulting kernel command line
> would contain runs of multiple spaces.
> 
> Treat variables without a value as if they didn't exist at all.
> 
> Assisted-by: Claude:fable-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


