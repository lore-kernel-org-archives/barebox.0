Delivery-date: Fri, 28 Aug 2026 16:20:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzxRo-008BVJ-0i
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 16:20:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C977E201021
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 16:20:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=i7m14O1W;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=eC7NmqZU;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSYaRgCQHmgj+IiQJ0EJ/GpnIaVav7uxsW89ZMG0ZyU=; b=i7m14O1WTXzZWU
	ApddqS8Z1M2urTq4CEagZN/DxSJaCahk3HjpRJLAksxOY9CiBWooJsK5oUVY6zvVGDAI+q5rhpb2V
	2ppWqJpAC2fVZQnXSrHkzVWD1tlEEB67rekAbzSuN4tDxV3JHQCojGwcLRwrB32FWw2hQNmxUHbvz
	bFQrG4zMSLQQsv9LPAavZVp0fztpCsSyPZk8UAewUu6/Q+a+WCsY2jcBsEAe5xBTZQJJscFDmQIl+
	huDFd8mjhfT5F/7acyfKEP/T490MwsG8+mhieBfvpN3rhCIQrAQyzYt9JBTG2/OaCBAlSCDoTXr5b
	L3yM7PVDAJS+7JQ6+RWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxQc-00000005xos-02r4;
	Fri, 28 Aug 2026 14:19:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxQa-00000005xoh-2fvZ
	for barebox@bombadil.infradead.org;
	Fri, 28 Aug 2026 14:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Cc:To:Subject:From:Message-ID:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description;
	bh=oSYaRgCQHmgj+IiQJ0EJ/GpnIaVav7uxsW89ZMG0ZyU=; b=eC7NmqZU91XkA2hf/icgvBMruz
	aCvZ/35ZOOJw51zUvc2WtaDs3te3D+IVmXIUOrH8zAd38rG1Du8fT15IIsDX75Xbinz075Owei3na
	tdp9nvd3hHqgFFdaNhzxnUdajFIvMgNfitpu9fpZbPIoeqXBujKoWdGb3RvpOL2wCKIMhRciETm8Z
	faNiF+ObL8gJqAesjbeVlAt/D1tWGOJ/UB0J2Z0RS0wM2H1PXv4FotdetJdCUkL510UolOROcv3mv
	oHcwXS4NYJxxl/KlsM5zdY3YWJC7DtqUdo6bSJYEaGaXIgtP4v9J3S4KGi6fMQ0yHZwLptkBfL5E0
	yvEadtkg==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wzxQX-00000008JUa-1pDy
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 14:19:31 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 31823200C95;
	Fri, 28 Aug 2026 16:19:27 +0200 (CEST)
Message-ID: <466724b2-2de6-4e41-b546-724dc2bd3d9a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [RFC next 1/2] dm: lvm: Initial Logical Volume Management
 support
To: "Tobias Waldekranz" <tobias@waldekranz.com>
Cc: barebox@lists.infradead.org
In-Reply-To: <20260824183203.3759144-2-tobias@waldekranz.com>
References: <20260824183203.3759144-1-tobias@waldekranz.com>
 <20260824183203.3759144-2-tobias@waldekranz.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Aug 2026 14:19:26 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_151929_581941_AA2542E9 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-24 18:31, Tobias Waldekranz wrote: > + > +const
    lvm_tok_t *lvm_md_vgsect(const struct lvm_md *md, const lvm_tok_t **keyp)
    > +{ > + const lvm_tok_t *key, *val; > + > + lvm_md_for_each(md, ke [...]
    
 
 Content analysis details:   (-0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-55.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:tobias@waldekranz.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xarebizcn9ea38i83k6yroyrf83kiifb
X-Rspamd-Queue-Id: C977E201021

On 2026-08-24 18:31, Tobias Waldekranz wrote:
> +
> +const lvm_tok_t *lvm_md_vgsect(const struct lvm_md *md, const lvm_tok_t =
**keyp)
> +{
> +	const lvm_tok_t *key, *val;
> +
> +	lvm_md_for_each(md, key, &md->tokens[0]) {
> +		val =3D key + 1;

Should you check against num_tokens here?

> +		if (val->type =3D=3D LVM_TOK_SECTION) {
> +			if (keyp)
> +				*keyp =3D key;
> +			return val;
> +		}
> +	}
> +
> +	return NULL;
> +}
> +

> +const lvm_tok_t *lvm_md_find(const struct lvm_md *md, const lvm_tok_t *s=
ec,
> +			     const char *key)
> +{
> +	const lvm_tok_t *k;
> +
> +	if (sec->type !=3D LVM_TOK_SECTION)
> +		return NULL;
> +
> +	lvm_md_for_each(md, k, sec) {
> +		if (lvm_md_tok_eq(md, k, key))
> +			return k + 1;

Here as well. Fuzzing might indeed be useful ;)

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



