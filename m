Delivery-date: Mon, 09 Nov 2026 10:26:53 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQLeO-008yVK-35
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 10:26:53 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 996B7200AD7
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 10:26:52 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="A3QTxZB/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JQCAZ4DJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794216412;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=bAXWTCG1sWbiFzR5bY4d54pK9/7toxBUTM9FG1feXzI=;
	b=BocVsk6iL1aCE2QqpNKOw/FisZap5w/tILUYAWedrvOf3Jjs89eZP/DHks9a3VNPnNLRFY
	078KCgIIJgyH4WQrisN4Hz9wOz0leUf0rrL5CuIFSeID+Hagw8WwVTS8uiU34u1aFtQcyT
	17GRfJc2dQrKbLtD1vI6gYbY7+RcYvhFcPAdUcE9Hd29s3z1NG3jKYR7Z3+ui4zgvpr6lY
	Icf8LVyU8XOYGBTG9mnX2zt4Xw5CCNIVJiRJyBVATWdLBUvJe1Mhw754jjhntLcQ0yAMfO
	h7pL7S96GOnejiv7TX9xNE35q37TUaqRAyZ5f2+j0G252uM1bH7SE5ipn/cJZQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794216412; a=rsa-sha256;
	cv=pass;
	b=MZFMWAZNKFMkjJTvr0rtTXhiPeu4eAtp1YX8O6ATLl0+HVW66ba33S6wU6FUM/qTgtaGYT
	pLWkFzNsEbJN/bXIs9rhTSNnElTF09yrE+Y4RGCVjcsrNKitpz7b0EkqzZMV33Ce5LrGsd
	9OZAdBQ+ejILGClIRA/FV1M/ObzKXnGgy7LHmenmbJ8Oh7u+Y9LLVgL5bn6AMj3gur6j4x
	CTHAumiv+LA5QYL6I5vT03+pqlLM2W61XUCwn3Ye0NbTkWmFXi3KKa/ftUsEGOQlKrnnnw
	HyJKpBfYLBzB7b8zy3t3Akv1PuKwqYawJu4OsgGgnEE0Sous7qJ9W3t4Hfppog==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="A3QTxZB/";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=JQCAZ4DJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bAXWTCG1sWbiFzR5bY4d54pK9/7toxBUTM9FG1feXzI=; b=A3QTxZB/p1TAjX5hlS8cPk+3dP
	nn0x65Wahkr+CQ3R8TJKiAMC4+zCUKqJdCrY+QvsuWu4XbfafkYQeVHWl1q0mG5PnGGQnZU2xcwbj
	MU8RLSaeZswlwMk2/nnT5pL4w8y3botdkgYOdU+M5yuWdtXrBSszxkZZz60Ylz/Lkg9/xDRKnIva5
	eT8448s//hUA2prCX7+r0H5E6XEEwldySc/Pds4sVVJJ8YBJqa75q0vpSRRzIDcyL/EIHx7+cSZux
	S4DzXGxZBcBHAdzvgyObSNMmTzFBv4JLaLSXaIh6rQhFjbgZqScPUR4FTxJqlqfs8dmzjrMIIUQoM
	dk2ynVgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLcf-00000000Flg-3CYz;
	Mon, 09 Nov 2026 09:25:05 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLcb-00000000Fjs-42AY
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:25:04 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E6BA62006AF;
	Mon, 09 Nov 2026 10:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794216299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bAXWTCG1sWbiFzR5bY4d54pK9/7toxBUTM9FG1feXzI=;
	b=JQCAZ4DJyTlumWpH7PLujcbmtKl1QkhGe2+Allijv/48wvVd5IW7vDV5kL+2LMkaNvzsUI
	a9yKlg6ixKjTCCS4+k8Up1rBt0Pe929zDhBWzh10die8KWhY4W3sKWkDaiTz0cgZvxvDSp
	ALju/2HRZabfwHsvOVAoeLLCbvFn6T98z34T+sDYD1VyZRPlJ2FRwkSj7vyNuaz0Vn0yCj
	Ab5q2UBLFinY0+Tz3za6MWoX7pm95xbk8vP3RHB/Zzv+BMe4a2wXC6UiEDgYci03KRSxM+
	c/6F5qxmZt967b6ysmHEuMXrkbOiPsdOl1AgCKOGUuqHc952c3gcCOdbWnRfyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794216299;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bAXWTCG1sWbiFzR5bY4d54pK9/7toxBUTM9FG1feXzI=;
	b=QNp4L9FXolPiEY9/fTS1tKeTWmvbbLCSsmxVE0pqmKToux9Wg9Huaq28WPxOWmZe/x42BH
	Co0APgNIthXm9/zUrK0WXQwVyREshfUEOrQhVyTa2oXQEHHWQ3H03vpU1CmCbE0OuY7oV1
	QhscY+xC4bxTJHCMzZJnoONJPYBR81ZdpqqMaKNwj1HgSoNjvQk3FjnrD7XF8OEUIXLtfp
	I6o84qQmaXTZr2XGiF1dva/q8C6ZNw8tjeG2xZg6OYCb2uER6An6RvawpWMJqWchnybb4h
	xfx1Btir8Tz8l3FuSZa6yTYQPhBPfMS2rK9gFZ4pXw8ePerUDErg+JCev1t+AQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794216299; a=rsa-sha256;
	cv=none;
	b=cVicAuJF2kcyTSRrWUu9GUI41XHG3az0E/wIqAYT6Hu4BtbcCJiA8rIVbVXSWAfJJUWbtF
	ibjIrI871n0EevkgFbosJXA53FfiwiN5AJoGrZjOWo9B09Hx3ox6RRcVSdbIHQ8rYK9k6I
	S4Jz4bfxPGhg6Zt2OKMdOzt8DQ2lIQQO9WEGQAmmc9fVhiXGdpOjWj/AnGDvsFHHBAcH8v
	KAvuoSG1C4bgDVmiPXVUj7Oaks/VshSd+pmgalcsLwWGajqgEG86NevE6sbmoLWCJE33qk
	qEYwV2O7q3h8miMwjk+iLsnsHTIJYL+gaxoozaA4flF72WGimP5QaR1BxBB+UQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <7beda2a8-b1ca-427b-bc38-a63ca73284a0@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 4/4] commands: mipi_dsi: add command for easier DCS
 experimentation
To: "Ahmad Fatoum" <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org, "Ahmad Fatoum" <a.fatoum@barebox.org>
In-Reply-To: <20261108101110.1270196-4-a.fatoum@barebox.org>
References: <20261108101110.1270196-1-a.fatoum@barebox.org>
 <20261108101110.1270196-4-a.fatoum@barebox.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Mon, 09 Nov 2026 09:24:59 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_012502_165640_E078B2B8 
X-CRM114-Status: GOOD (  15.22  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-11-08 11:10, Ahmad Fatoum wrote: > +static int do_mipi_dsi(int
    argc, char *argv[]) > +{ > + struct mipi_dsi_opts opts = { .peripheral =
   -1 }; > + struct mipi_dsi_device *dsi; > + struct device [...] 
 
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
X-Spamd-Result: default: False [-58.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:a.fatoum@barebox.org,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 996B7200AD7
X-Stat-Signature: m5tj68x58ur4zefxo79e8431omz638pa
X-Rspamd-Action: no action

On 2026-11-08 11:10, Ahmad Fatoum wrote:
> +static int do_mipi_dsi(int argc, char *argv[])
> +{
> +	struct mipi_dsi_opts opts = { .peripheral = -1 };
> +	struct mipi_dsi_device *dsi;
> +	struct device *dev;
> +	bool list = false, verbose = false, lpm = false, hs = false;
> +	unsigned long mode_flags;
> +	unsigned int channel, vc = UINT_MAX;
> +	int opt, ret;
> +
> +	dev = list_first_entry_or_null(&mipi_dsi_bus_type.device_list,
> +				       struct device, bus_list);
> +
> +	while ((opt = getopt(argc, argv, "c:d:gHilLn:p:vw")) > 0) {
> +		switch (opt) {
> +		case 'c':
> +			ret = kstrtouint(optarg, 0, &vc);
> +			if (ret)
> +				return ret;
> +			if (vc > 3)
> +				return -EINVAL;
> +			break;
> +		case 'd':
> +			dev = bus_find_device(&mipi_dsi_bus_type, NULL,
> +					      optarg, device_match_name);
> +			break;
> +		case 'g':
> +			opts.generic = true;
> +			break;
> +		case 'H':
> +			hs = true;
> +			break;
> +		case 'i':
> +			opts.info = true;
> +			break;
> +		case 'l':
> +			list = true;
> +			break;
> +		case 'L':
> +			lpm = true;
> +			break;
> +		case 'n':
> +			ret = kstrtouint(optarg, 0, &opts.len);
> +			if (ret)
> +				return ret;
> +			if (!opts.len || opts.len > MIPI_DSI_CMD_MAX_LEN)
> +				return -EINVAL;
> +			break;
> +		case 'p':
> +			if (!strcmp(optarg, "on"))
> +				opts.peripheral = 1;
> +			else if (!strcmp(optarg, "off"))
> +				opts.peripheral = 0;
> +			else
> +				return COMMAND_ERROR_USAGE;
> +			break;
> +		case 'v':
> +			verbose = true;
> +			break;
> +		case 'w':
> +			opts.write = true;
> +			break;
> +		default:
> +			return COMMAND_ERROR_USAGE;
> +		}
> +	}
> +
> +	if (list || verbose) {
> +		mipi_dsi_list(verbose);
> +		return 0;
> +	}

-v intuitively reads as "verbose", at the -v option even results in a
variable named verbose. I think it would be clearer to use -v as "Do
what you ordered to, with verbose output", rather then "list devices
verbosely"

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



