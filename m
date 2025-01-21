Delivery-date: Tue, 21 Jan 2025 08:32:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta8k2-002YvK-38
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 08:32:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta8k3-0007Qc-1X
	for lore@pengutronix.de; Tue, 21 Jan 2025 08:32:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IHlhxcgR24dBnGRrPudlxDmmtxjB57Z7EhII5tG2g2M=; b=BMf2ruvxpa9kYWSe26yyhVBUYX
	tzUQYe8ETUY3n18z2nUBRXRC8Rk2FxaDXbCk615xA+yC6mEfuYOvOZuEqRh4jUN/Vyq+VxlojAr4R
	AFpm9oRSxALJ5NSp/I0QAtklyTTpar1qHJSGd6mmt1jAnUCDe182f8FoNIqBlzpQH/UtAfptKC0wg
	fQ9j6TMlb6RFdJTBVx5graTe19wfYFKYYnu4F1VHhcYPFubK5fdofpddS9YyB7hHfea2q9MfE7jYC
	bZi3roh1d6Tx09LPfG14sCTbpDUE3xb3Vv4eAjtn8oDAh3Ph/3YZyTdskoZYgTH5aqz/OvSoW8cmN
	WnjW2I7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta8jD-000000078xy-0xzr;
	Tue, 21 Jan 2025 07:31:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta8fJ-000000078P6-2zXX
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 07:27:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ta8fF-0006cA-Dx; Tue, 21 Jan 2025 08:27:09 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta8fF-0014K4-0n;
	Tue, 21 Jan 2025 08:27:09 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ta8fF-005o7Q-0W;
	Tue, 21 Jan 2025 08:27:09 +0100
Date: Tue, 21 Jan 2025 08:27:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z49MTaSLjTvXEeMm@pengutronix.de>
References: <20250116140740.297902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116140740.297902-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_232713_749099_07202C67 
X-CRM114-Status: GOOD (  18.10  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add varinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Thu, Jan 16, 2025 at 03:07:40PM +0100, Ahmad Fatoum wrote:
> +
> +	dev = get_device_by_name(arg);
> +	if (!dev)
> +		return -ENODEV;
> +
> +	list_for_each_entry(param, &dev->parameters, list) {
> +		if (prefix && !strstarts(param->name, prefix))
> +			continue;
> +
> +		printf("%s: %s (type: %s)", param->name,
> +		       dev_get_param(dev, param->name), get_param_type(param));
> +		if (param->info)
> +			param->info(param);
> +		printf("\n");
> +		found = true;
> +	}

This command is a bit inconsistent between handling of regular
environment variables and device parameters.

# foobar=baz; varinfo foo

prints "foo: no matching variable found" whereas a

# varinfo mmc0.c

prints all mmc0 device parameters starting with 'c'. Would be nice if
both variable types are handled equally in one way or the other.

> +
> +	if (!found)
> +		goto not_found;
> +
> +	return 0;
> +not_found:
> +	printf("%s: no matching variable found\n", arg);
> +	return 1;
> +}
> +
> +BAREBOX_CMD_HELP_START(varinfo)
> +BAREBOX_CMD_HELP_TEXT("shows information about the variable in its argument")
> +BAREBOX_CMD_HELP_END
> +
> +BAREBOX_CMD_START(varinfo)
> +	.cmd		= do_varinfo,
> +	BAREBOX_CMD_DESC("show information about variables")
> +	BAREBOX_CMD_OPTS("VAR")
> +	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
> +	BAREBOX_CMD_HELP(cmd_varinfo_help)
> +	BAREBOX_CMD_COMPLETE(env_param_noeval_complete)

"varinfo foo<TAB>" expands to "varinfo foobar=". The equal sign
shouldn't be there.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


