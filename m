Delivery-date: Fri, 02 Oct 2026 12:59:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCaz1-008oSr-1w
	for lore@lore.pengutronix.de;
	Fri, 02 Oct 2026 12:59:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D346B201E1B
	for <lore@pengutronix.de>; Fri, 02 Oct 2026 12:59:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hC0f9iIi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GEFzNmgQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790938759; a=rsa-sha256;
	cv=pass;
	b=CNRwV3LGgCz5xKbHs/1c9md1zJRQ1t/qk2lVTiizWfiisqfHlB+ArRCgsvZTWiSc66iwXe
	6uraaOozgj/qkemOZl1vzxEjP0i1IjfonRgamO7IUJkN4sYMZi7wxaemowRdblO6YNUAza
	DNxl7PIUY5CXvLecJAHsHVN5JHmApk/+XaTqKxaK3QE1qAxcoXxe4pMIBqUZJ9CtqTd8FT
	yzUoreZ/J5uzbxCFMcj4z1EPvLi58xFtUvHp0AtFjCIgiStDZ6PbFrj5YTJVugmKFL0h/o
	UzuyGh8btANHiGH27MHK+qbWp4GNVZ3yGgujokbZi0skpaR/ukkafnFqtAMsng==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hC0f9iIi;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GEFzNmgQ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938759;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=OkP7/Mk+fClQhAEdFsKZBJBzkRERrROpcOljNwoMZvY=;
	b=F3AV3f0h+s3MuEsay6seTLjFabM/JfjO+KaYfGF7iAUe4nd7iY/f08nxmmM05R9cnq0Epa
	jkUrKTiuLZwPsMGDOSnnoEMaZQOcUb1lAsWx8w0DIccEspBhyyf42efx5Xwyq3OkkfzOb6
	9TzM+iamzBtxDfIcnHFKrwOVs4OuTgdJ4iju+PtGNIwjX9POlYypNDvAqa5Gq5ZadG9A48
	kkVqNmBkTYxkTebiVssPjnOAxuIcMGEqrcGYjXti24mtxB0eBKHdy47Ve5YkMgG91xegQt
	bt1Ft3hkSSOXBxUr6k9fRyb2g5g23Jh624tl+XtkWSXjDMBLvXazEasQTMcRDA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OkP7/Mk+fClQhAEdFsKZBJBzkRERrROpcOljNwoMZvY=; b=hC0f9iIicK5FHfJdvgSP2Z7K6Z
	SwwbGc/31K82sjJpH5fDBjaw7R73kzko00ZNyK2q5XAWObbeYi+OINPxjUqXn8yvy+GPz3LKG2Wjh
	pjWsxcfgxwmn9hXobKBuGrYVx8v1owgZ2EJC5k1b//0xTPA/Yn/EecBkS6SHMk9v/+PHZDmOI5sxs
	6LByGb+8WslppXlvrpRtdl3Wj5/fBXoVXL6f6SeFxN0Oe/sduGE53TJBiHDXGpzfBAKI84WYqVHz5
	05oaOZ8DL0KqylRmKhxWG4R3Ijq9I1gpLUPJEobX0yptVMXDAOr7WaD9H/Kabn+i7n+iE0EvYW5m/
	Rjcx8+WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCaxs-0000000BOgR-19LN;
	Fri, 02 Oct 2026 10:58:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCaxp-0000000BOdz-1Wpa
	for barebox@lists.infradead.org;
	Fri, 02 Oct 2026 10:58:07 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id AA67C2009BC;
	Fri, 02 Oct 2026 12:58:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OkP7/Mk+fClQhAEdFsKZBJBzkRERrROpcOljNwoMZvY=;
	b=GEFzNmgQ/hfaNwrH2Ldh9emZC05iVcUF7Ip0Lb9HtB/vXGbTufX5RMyF2e1H/ldNydb3Yt
	iAuATwlrHSNyCieU8Y1hvrxBSnTKKnje7Omq0BdpvPNXBCcoMZyHIdzuHHifdkvKuX9OQo
	hLJFuAWPpLNtQZJkEJn6SUdV7bRCAgljwjtHqQBFXOq41YmPDPTcAWdaYM8xsogtW3kaXQ
	akz+bLccdoUHohAfdWtDUYReWddkXP8aVacICoAojkJyM4/ZEcRZGThfXlvvW4Ou7hgUH9
	oQ6vRjLK/UUrIIctS0cs9tDqV+NFgCOmJuRvCyfB26B3RXOg8askPgcTTAdqzw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790938681; a=rsa-sha256;
	cv=none;
	b=T/UgKyJqtsp5N5TPwrYIBzjJecQlqfWKG0tQ4jOUzVue0GiX4U+55JwzmTAydUfC6mzEnb
	nZba5+dHWe5gc+QwJD72WWGb125tSewPV6uNtuYRAch1w+kXTPSYxckldIQeLfZ9RKa41/
	+Xr+LoRnqd7dLQhbv5wkjFswwyRRTU1AB3u/jFcqEnHPEzkyK4kXdsQwQK+5yDTSFihfHD
	F8Nc8QICqXtidBWb75H+8bs7hyFRwj1omXvk48ppAF0mIEr2PSSeDLhKtdQS/VHpBAMmA1
	FFAOAsEPLJDosVraHXgl/VP/zyN2hDZ4GGzFGA0BOAjfJ5hF0ReJjAn1FVOg9g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790938681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OkP7/Mk+fClQhAEdFsKZBJBzkRERrROpcOljNwoMZvY=;
	b=H++qVaJm6rC4JqBzIfxfzjJ034sQYsDF0JUbKFSMpStFa4qZtOpGvhXum1yekPDdybsQhe
	GWdaHTE6lzwgx3rN8jZR6lJD+x3cyRFlHRBaJaGClJn3De/0kPPOdq3ywzFYNyYkfycA2u
	aac2AOSqWkQZgu1CRa+1nSyMcI9sPjzI5DRATIxU4J3FaYz591Aqz5p5iaI+wC8j3nC6t+
	c+OuSvukB6RaZ+w+NTiDyFl0LEmfLzBTSSI2DbLXmaN4+N0mWbd8H/fdFnLXz6hi0BaVBa
	nvTPDUyhdOXBRT2V/87mehnvcU8HvoNll5rrxoIdcZ7j25q7Me6iCPO5ilASkQ==
Message-ID: <d924d7df-d8e8-45ea-82b1-10795138a8dd@pengutronix.de>
Date: Fri, 2 Oct 2026 12:58:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] FIT: add cmdline to whitelist of non-hashed
 properties
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 =?UTF-8?Q?Miqu=C3=A8l_Raynal?= <miquel.raynal@bootlin.com>,
 =?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>
References: <20260924-add-cmdline-fitimage-v2-0-4a665e165002@bootlin.com>
 <20260924-add-cmdline-fitimage-v2-3-4a665e165002@bootlin.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260924-add-cmdline-fitimage-v2-3-4a665e165002@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_035805_560769_ABA164E5 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 9/24/26 19:59, Thomas Bonnefille wrote: > The cmdline
    parameter of the fitimage is an additional optional property > in a configuration
    node that is used to transmit information to the next > boots [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D346B201E1B
X-Stat-Signature: nj6i59eqs7184bn6uxz85aeqwouc4sfs

Hi,

On 9/24/26 19:59, Thomas Bonnefille wrote:
> The cmdline parameter of the fitimage is an additional optional property
> in a configuration node that is used to transmit information to the next
> bootstage.
> Just like description, compatible and default, this property doesn't
> reference an image (e.g. a kernel, a ramdisk or an fdt) and so it isn't
> hashed and shouldn't be added to the list of hashed images.

While the content of the patch is correct, this sentence isn't completely:
The property is being hashed (otherwise it would be a glaring security hole),
but it's not hashed as an image, meaning its content isn't resolved to a node.

I'll Cc you on an amend! commit to clarify this.

Thanks,
Ahmad

> Add `cmdline` to the whitelist of property in a configuration node that
> aren't images.
> 
> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
>  common/image-fit.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 635f63c9e2..cd477911cc 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -333,6 +333,7 @@ static int fit_config_build_hash_nodes(struct fit_handle *handle,
>  	for_each_property_of_node(conf_node, prop) {
>  		if (!strcmp(prop->name, "description") ||
>  		    !strcmp(prop->name, "compatible") ||
> +		    !strcmp(prop->name, "cmdline") ||
>  		    !strcmp(prop->name, "default"))
>  			continue;
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


