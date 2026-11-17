Delivery-date: Tue, 17 Nov 2026 12:29:15 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTHNC-000P3S-1B
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 12:29:15 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9259520228C
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 12:29:14 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qFFLcu6Y;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DIEtAbzU;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794914954;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Q/9fO56qTv684rbzB5MxzXBzwCI93YwCGw7DKDFCrMY=;
	b=THBIP+4LUqEk6Vd1Q13Q9Y2RgRKSguik2QcdwjIZ1rkT12E/dth8sqClp4oh1cxX8rbqbR
	i0BBw+4TTZwib1Xz+vD7rnWLFHK/KVcQ01RAVa9YKML0QuUlvY2ViHFEjatBzglgbRoJOo
	OKPbjmvQsrn5HtHkjVuYMBuLxZucFIDiGjZ9ok6CjKdXd2CfjchPgUzAuQiQ+tQLuw5q7o
	SNCaJKx7jUGx3YDClyuWZ/aLhxvvz1/MO05MMWAODqJzEZjeNdTu7+muYkowBREY4iYxAx
	e+JVe2Fc4aWcYoX2vHiqWdJIjm/nCy+8z+1NHm5EWclynWeGKN9rkppyKyWA/A==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794914954; a=rsa-sha256;
	cv=pass;
	b=acUCaSgxsGklgRHfgBxBNCNayYwbR7N9PFTG5SocI8BGZmvhSnvDt3QmFwIJ/42WfHDlyV
	DhAg8VMbtqcnvk3jOc/ZmagoxUz/7v+ig0qAjf+pZChJ93OJA1u8sgGxa7xQDtTjGFQH0g
	JgnVntleI3AeChdnIUuXp7Nag4LqqzIXfqpTfKs2j6R6VnI0nqkDV9RjEn69JZ0A8HrRs5
	pktaDeIP29jLp6dAldF7jyYEF46TpSrcQx0xFv6KrYMfLYv5vXSCB31yo4lcoJRCJBfU2B
	CxaQQza94gDyFodfW6xvlJW9zDM1XfXsADEGjKx7+W+U4V2U1bV5kjV6/Xriwg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=qFFLcu6Y;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DIEtAbzU;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Cc:To:Subject:
	From:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Q/9fO56qTv684rbzB5MxzXBzwCI93YwCGw7DKDFCrMY=; b=qFFLcu6YQ6/FK4u5a5sRv0iPNS
	463x3eXDWkSkmkm8AhCEuBDYbG7wFJccHvvMdBzGsRbgqouUN9mAOMXrn6MERApbZ3RsgV0w5WuNP
	ZUS2/FqtfwikCw3thvS8iNyj4vYSC93IpEpVmMCatlvQ/gJeNzbIBPZoAs4l57U7V5xCEg0fk497/
	a/my+mjkjPkIu2Ktj4/nxDiEk6ztLpIQuaTq4gFDUNFGHk9524GDNQGB5Gg7qQZmvO4jkkUIWMMuP
	7YJ5g3LJKwHtaJrw3SGZLRfdKmW5YE8CKYxgkq7YlWGkcv/VCrDC0VhS+JwavosJGi5joZNb0Igzj
	D2rWexsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTHM2-00000005RUO-32Lo;
	Tue, 17 Nov 2026 11:28:02 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTHLz-00000005RTF-2e1X
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 11:28:01 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6326C2001E8;
	Tue, 17 Nov 2026 12:27:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794914877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q/9fO56qTv684rbzB5MxzXBzwCI93YwCGw7DKDFCrMY=;
	b=DIEtAbzUDB6cjMHbbtCU75BVLx30YIeElsEfjR+gwbGjf+iw+3M0KoUrnw8xBLXbKzdEM7
	Ge+jxzHNxAYneYyNkGMd66ILhZcXAD2ENhBmOnU0s2Ie3XH0KXY8WDz8qVuM/ntsJMnMaq
	iaMg3Dhr9WcDNVCqotHo0ts8gSaNAjUFyxDXTnJE54GQ8hgurdD+A71lsjY4gkKBbYF3lD
	ZkeWrG6cqq8/a6zlJuQZYO7XgsUxqYGQ/WpDUNFFWF5zzJsL+UENMEQzy/YBxiMAR/goAg
	3ozpPAEqChZ343H7rAeC/Yq6W1bMxPZe79ibgkeo7qwr8RiEYegOU7vtiGHtOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794914877;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Q/9fO56qTv684rbzB5MxzXBzwCI93YwCGw7DKDFCrMY=;
	b=GZIKWo3FtUCYplVLJdjpio3/NP7UAU72BMa3VKadd1x77f9O6Zx+buRupNSeQv5JPVyc3l
	YmZqLM8o7s5/UbxtVRwY+dwNCU4NBwUsnZGaXjC9EqqWFUY0gwQ5PaogysAqAFTIlkVWfe
	/pETzURSLITSLobdGwejI+7isUeV9NnmI0P2LSDPxFJW2WOA472OjQe7QFURnVExnZyEt/
	L1yGmOMdsKiqnwK2rjVqUPbxbsfHxQTQnkBBadk+vGshVLiK2ob25QsxOgW8uHqHaOY+ls
	c9fJPGFra3XyGCkE2Dg72Z4g7djJnmCiYp/dWCOLT+TuXKooudUuEmlvPYbAYw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794914877; a=rsa-sha256;
	cv=none;
	b=IWfu5aHPlTokqzrN4v+Tn/nqTn4/v4schPyKWVrRVyeeUZoixzuXOF8uhBP8ieDOYssEP4
	SetXVrnHkxU5bY+ll8cE3gCC46cWU2fJ91eeHbkRhKPJv7YBg8F+/l30EEiQ0GttBH9x5A
	3ApBL1SqXOzKNcPMMgX8QIi6FhrjHfIjjPh9OMj1aDxd7eq5esZhbC/Aw4a2JnXFiBJuR3
	0PA+lPkPo6xj0gjzS4p0WCtaSJjyiUP79TQR/Jf2ezhS8X3WLnCez8dbCQvunewjHs73PM
	pilslzMxKbJQxPjrDJwLVAWlDjnKDjVxieInX0FgHdAZLd+6wbOwWAqiONx0gA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <971f258e-bd09-4523-861d-39090f62f00a@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 2/4] usb: typec: stusb4500: add USB PD fixed supply
 driver
To: "Giandomenico Rossi" <rossi@amelchem.com>
Cc: barebox@lists.infradead.org, "Giandomenico Rossi" <rossi@amelchem.com>, "Nicola
 Fontana" <ntd@entidi.it>
In-Reply-To: <20261114161953.1457428-3-rossi@amelchem.com>
References: <20261114161953.1457428-1-rossi@amelchem.com>
 <20261114161953.1457428-3-rossi@amelchem.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 17 Nov 2026 11:27:56 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_032800_004821_D4FB0CD7 
X-CRM114-Status: GOOD (  14.46  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Giandomenico, On 2026-11-14 17:19, Giandomenico Rossi wrote:
    > + > +#include <common.h> > +#include <init.h> > +#include <driver.h> >
   +#include <i2c/i2c.h> > +#include <of.h> > +#include <linux/err.h> > +#include
    < [...] 
 
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
	FORGED_RECIPIENTS(0.00)[m:rossi@amelchem.com,m:barebox@lists.infradead.org,m:ntd@entidi.it,s:lore@pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
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
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 9259520228C
X-Rspamd-Server: mx1
X-Stat-Signature: kkgawxtxh9e1a3qirgtpdefz5ynqj1cn

Hi Giandomenico,

On 2026-11-14 17:19, Giandomenico Rossi wrote:
> +
> +#include <common.h>
> +#include <init.h>
> +#include <driver.h>
> +#include <i2c/i2c.h>
> +#include <of.h>
> +#include <linux/err.h>
> +#include <linux/regmap.h>
> +#include <linux/bitfield.h>
> +#include <dt-bindings/usb/pd.h>
> +#include <asm/unaligned.h>
> +#include <linux/usb/typec.h>
> +#include <linux/usb/typec_altmode.h>
> +#include <linux/mutex.h>
> +#include <command.h>
> +#include <getopt.h>
> +#include <usb/stusb4500.h>

Please trim the inclusions. At least common.h, command.h and getopt.h
shouldn't be needed here.


> +
> +static int stusb4500_typec_register(struct stusb4500 *stusb,
> +				    struct device_node *connector)
> +{
> +	stusb->cap.driver_data	= stusb;
> +	stusb->cap.ops		= &stusb4500_typec_ops;
> +	stusb->cap.of_node	= connector;
> +
> +	stusb->port = typec_register_port(stusb->dev, &stusb->cap);

We don't have typec_unregister_port() in barebox. This means you will
have a dangling port registered when you error out from probe after this
point.

Either add typec_unregister_port() and call it if you error out with a
registered port, or re-order the probe order to call
typec_register_port() as last step.

> +
> +static int stusb4500_probe(struct device *dev)
> +{
> +	struct i2c_client *client = to_i2c_client(dev);
> +	struct regmap_config config = {
> +		.reg_bits = STUSB4500_REGSIZE,
> +		.val_bits = STUSB4500_REGSIZE,
> +		.max_register = STUSB4500_RDO_REG_STATUS + 3,
> +	};

Should be const.

> +	struct stusb4500_contract contract = {};
> +	struct stusb4500 *stusb;
> +	int ret;
> +
> +	stusb = xzalloc(sizeof(*stusb));
> +	stusb->dev = dev;
> +
> +	ret = stusb4500_register(stusb);
> +	if (ret)
> +		goto err_free;

The probe order is strange, you register with the framework before
initializing the register map. Should be the other way round.

> +
> +	stusb->map = regmap_init_i2c(client, &config);
> +	if (IS_ERR(stusb->map)) {
> +		ret = PTR_ERR(stusb->map);
> +		goto err_free;
> +	}
> +
> +	ret = stusb4500_init(stusb);
> +	if (ret)
> +		goto err_regmap;
> +
> +	dev->priv = stusb;
> +
> +	ret = stusb4500_update_sink_pdos(stusb);
> +	if (ret)
> +		goto err_regmap;
> +
> +	if (of_property_read_bool(dev->of_node, "st,renegotiate-on-probe")) {
> +		ret = stusb4500_renegotiate(stusb);
> +		if (ret < 0)
> +			goto err_regmap;
> +	}
> +
> +	ret = stusb4500_read_contract(stusb, &contract);
> +	if (ret)
> +		goto err_regmap;

The data returned in &contract is not used. What is this call good for?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



