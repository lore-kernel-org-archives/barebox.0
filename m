Delivery-date: Fri, 20 Nov 2026 13:02:20 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xUNJr-001R3u-2W
	for lore@lore.pengutronix.de;
	Fri, 20 Nov 2026 13:02:20 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DB02B2022EA
	for <lore@pengutronix.de>; Fri, 20 Nov 2026 13:02:19 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yc50/H7Z";
	dkim=pass header.d=gmail.com header.s=20260707 header.b=NYs2dBbi;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795176140;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=vjRLihUYfh6BfNNpJsKtGNQG2ribw7bXm0dhru7Ubgc=;
	b=RnjGLDhJcyt2YwpnwdNM+cLE4Oalh+x7F4FLqXpuH9/8j1UGKHCXvbTVGsP/eADLc+0VsE
	2GWS0jxcDb979ycysfOIpd5aqn0NeI1GbGtSvY8nCdUmOMNMd+c+cfRpHArndg6NMgt8Wx
	5eEWxWgfFWW90byVt7lEm1FJPofBi8UqfI6DJ02EYGtq6FHPRztbpyg3JSPcLx6kA6MVgd
	rUTNlR5uNc+5vKE5DEWbhgnt0DCmDpygGS5guy6WLFoLDvY0Pyi4Obdbie5Nw7p2BgDZkc
	SZxwX/j9y1sLl0arpuexACasLHr8AfULxH7jBjDRdlr29EvMZGKpcXNBCFkeVw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795176140; a=rsa-sha256;
	cv=pass;
	b=FzVDakPZFmx8YFK+QLfVezCQuh9DJPA0suTMk7lr9zJgUaPf29JsuuO1Cao3FhMIOaYyEQ
	KATeu5qzetiKcLYakwuJxbOcxgYNuewgiQlG/E27oH7mAcqMnCqmxwGR66+TWQ7C0nA+4P
	ntZfpE+fmPywrSMdocy5SBkACU4NjVbQAe7Nv9aGAT0Mz1BmVftec/9+LNL6mV6Jlxd0mY
	VSJp4F/SV6kHPG761sXr6FcBL5V30VfOOFCCzxk1OkXbPYSWV783zFoTQmRijelgmGsEsy
	gIHGoH92IUuW2WnGC64RZCObIpktM4YIIyYxHzGxkSrdcK2VqSMqP+K7qIln7g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="yc50/H7Z";
	dkim=pass header.d=gmail.com header.s=20260707 header.b=NYs2dBbi;
	arc=pass ("google.com:s=arc-20260327:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=vjRLihUYfh6BfNNpJsKtGNQG2ribw7bXm0dhru7Ubgc=; b=yc50/H7Z1bTeI8
	ErBSIo1Oq5X7V/lzzbe+ms2hOOgiPA+GEdLRB/PE/53nHKZzHSNnBerQfi4vZO+B48vdqlCHWtRAH
	/DHiZly/WIO0iUCQxin8xGuhm9+p37vOClTeOhrjfnqQTQ1Cl7Xbturd9VWAFiuWx53kX+T5uzQny
	GShPO806uRAoMsQuFse5QK8qcrkWOtYIbFGM9Adhvfe3gp6htCNOzw5Oldwesj7lWIo+QCT+9wxnq
	OIcug/Vq8xe6RJodgcNfDPYSY9E/eHNZn8oagPbU5C/lQY7k/YjH6wXPULo9PBxUdoMwb+OK5fLeW
	ecvc+6acWx+wzzxQ7Igg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMPx-0000000EhF5-3P5f;
	Fri, 20 Nov 2026 11:04:33 +0000
Received: from mail-dl1-x122f.google.com ([2607:f8b0:4864:20::122f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMPt-0000000EhEE-37jg
	for barebox@lists.infradead.org;
	Fri, 20 Nov 2026 11:04:32 +0000
Received: by mail-dl1-x122f.google.com with SMTP id a92af1059eb24-1a8cc11ac42so995377c88.0
        for <barebox@lists.infradead.org>; Fri, 20 Nov 2026 03:04:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795172669; cv=none;
        d=google.com; s=arc-20260327;
        b=HAv9bcrdBGevIN/jOPUyZeepTXpnkT1LnA9bPcAWhpLTpzZF/n7usIZ6HE9UrT3pJK
         z3t7cRu9qQ2yLDwGyYfQGydg2+zVr3mMniL8N7NbMIjjyC4V3gWSS0XYi4scoZo2gfIh
         IaKXx1V1YIF9lKwicX2vbIJJc5JVPIRPYY9ch6pTb0z9HYX7QAgHOEZAe6gjNcKpUv0w
         3AKQqAqNz0My05tMpK1unmzOi8DG4jca5iFb92S+JAerOfIJXVzrTmf1qIfTjHEq34HW
         qh/GFTQJSBB34fEQZD5LJwP8tlB8C0yywhJvK8tjzSJZU5nuEACRv+DjNXKqhdOsAaSu
         Nh9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vjRLihUYfh6BfNNpJsKtGNQG2ribw7bXm0dhru7Ubgc=;
        fh=zysG8c1ghqS/4l53x2biGaqpk9U8yPQ6STJLPkn1ue4=;
        b=jvlt5A03bY622nEyNlDMN3gvRYUkn92JwSUtLugxyRuOtp1GlWm6Udf41qWjwnio8X
         UHWwE0F44iG+ScnSrNmIauXo1i9zKdODkRyhwUcIqh2f5dI6JRCbbKf4Pue2m99qcWfy
         A7OEBjCs+PPj6Xoz1PP57gmixvyrEmMTNObcRKfyfXKNzqGTgdbITPyiawHR7WEsiHW9
         cHcMfxs8O2WwxHTRVN6uhkO1ZjYUg/qq8tRbbdKhDmobw4Pv8q+thMrvMLl/zR+oYu/l
         8hK7sRNp+DodtlI1/s2/EV7HXHk4vWImnXMc02RqajQ5Ux8r/oH7z96REQbVaVUNGE6a
         8Bxw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795172669; x=1795777469; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vjRLihUYfh6BfNNpJsKtGNQG2ribw7bXm0dhru7Ubgc=;
        b=NYs2dBbipIwCY7EeDB8jO4GUHHXaDh42oPiaawZkYgBn4wkYdu0AtwWUjue24sHeBw
         3B1mr6aDcM9QIrEJ532cYFhR272oJwOmNz6ENaRlgWPIXNqHEPTO8E1v3lqgIvIoV2uD
         pi1FEORSU8aL5kcsIInDgCwFG6gh3WFOSqkmdSD0iYYq2dV0yidOUpH9K3upH+nZBue5
         bm6OZ2bkR01Uo6C+SuB5mzad9zoiaoG/Q6dt8zae83a9kmYSdNjL414XUuZOGuUowNK4
         kzt5rs+s1s9k1fE9MFDI0I1JXzk5dEws7RboCRoJul0uPrtLi7LnXzaCoG+n8Cw+8u94
         WYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795172669; x=1795777469;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vjRLihUYfh6BfNNpJsKtGNQG2ribw7bXm0dhru7Ubgc=;
        b=n2ebKOJz620eET9tn9/ky/6xdTVcgzQbIJQhWrYHdjJbjAt1ipxPE/X5weGXqSvLTn
         hNG8gC4cYXb/s+GOzfQ8+eKq8TZ+dOMLVX7q3RizwoyHI0aGcQSgVtAAXInhd7xqfTAq
         xX598tzu6UUMiWztjvMsCwTZF2rGlM+lUKMPvxO3YK4jN1CXbebDq3tG3q7HAwnR3+ok
         W9knzSVP6u3PAYrtTCEnQRW+dw/tppazidbCDatWfHH0iKqJGSlOttFdj0t1gLmnuIQv
         D3V38GXJKdW/uSaBsf4daiFe6d4GmWjUztfBKTdqKfIjuBU4HqqKA118D8DcBJin8Sqi
         5Dsw==
X-Gm-Message-State: APuU4Z/6YdLhRkqcFvOgLlWo8Y/C7ou98K6u4B1zLc1C+zLoRNAp5B5k
	HGCV/iTvp36fOwIjcc3RKXnmgKmlXWQe3R1k9biNDHguUJ5WSJJF588Jy/3Uwg74rItT0Cup3/r
	wEyns+PzTIn/KgArWcoRpYlbclLEz0kJfm9VJYuLOAg==
X-Gm-Gg: AYBFou2waoiEBXn1DaFDg3ATKL/PASFaRuyAZjp9pgCOEQYMIoQ5fwfR2Z05Ps4xRok
	Bk8SN+8hj406pu/pYBoqtZyLYRdEK70k/uBRdDwwpindnPXO9dnhjKpw8UD53kQwbMwKu41byp9
	NGEgXu1hjzM89AzyImJu9YHtXZJLOtJX7cuHfHdkUGfNbmZ7XUqy0TLc5BUANNQam7SisIM2DQE
	vd189pILmMMTvktxOAxepCezodLphaB4Jvi9SAEAg+flGRcOyjmD8eHZlhAyr4AmEspInRHJ+Bk
	Wh0SYxGF4BzSp6VvrCBKaArR06nO57NyTMu51Xl8mT+WqZwfkw/2AwZFWTLO8TZmnqnbEP9Z5bw
	pIzwPXCgyMyRoCUpLLRmjphnhpHnHLYu4+OsudPY=
X-Received: by 2002:a05:701a:cca2:20b0:1b5:3417:9bc9 with SMTP id
 a92af1059eb24-1b5568ffe5emr2386814c88.26.1795172668522; Fri, 20 Nov 2026
 03:04:28 -0800 (PST)
MIME-Version: 1.0
References: <20261119185828.92337-1-a.fatoum@barebox.org> <20261119185828.92337-4-a.fatoum@barebox.org>
In-Reply-To: <20261119185828.92337-4-a.fatoum@barebox.org>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 20 Nov 2026 14:04:17 +0300
X-Gm-Features: AclHuK-tILGXFzduIHjRYNRWTUpeXI-R35vogiARMGVvWZM5Nif_b_GpRVIZmI0
Message-ID: <CAP1tNvTk6JULwLubCTfxDuX_YcWVSiXeyQ-wbpFgnCxwPvLhRA@mail.gmail.com>
Subject: Re: [PATCH 4/6] i2c: allow creating siblings on demand while
 populating the bus
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_030430_425941_0208594A 
X-CRM114-Status: GOOD (  21.77  )
X-Spam-Score: -1.8 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Tested-by: Alexander Shiyan чт, 19 нояб. 2026 г. в
    21:58, Ahmad Fatoum : > > With deep probe, a device probed while its adapter
    populates the bus > may depend on a sibling that comes later in the device
    tree, e.g. a > G [...] 
 
 Content analysis details:   (-1.8 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
                             [URI: barebox.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:122f listed in]
                             [list.dnswl.org]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20260707];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:a.fatoum@barebox.org,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::122f:received]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: DB02B2022EA
X-Rspamd-Server: mx1
X-Stat-Signature: mjinfc1winm4xeo19mnbmqazobmesdxy

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=87=D1=82, 19 =D0=BD=D0=BE=D1=8F=D0=B1. 2026=E2=80=AF=D0=B3. =D0=B2 21:5=
8, Ahmad Fatoum <a.fatoum@barebox.org>:
>
> With deep probe, a device probed while its adapter populates the bus
> may depend on a sibling that comes later in the device tree, e.g. a
> GPIO expander whose vcc-supply is a PMIC regulator. To create the PMIC,
> of_device_create_on_demand() rescans the controller, but the rescan
> hook is only installed after population. So the PMIC node gets a
> platform device without a driver instead, the bus then skips it as
> already registered and the PMIC never probes.
>
> Install the hook before populating the bus. Alone, that makes the
> nested rescan register the expander again, recursing until the stack
> overflows, because its node only gets its device after probe. So set
> it before registering the client, like platform devices already do.
>
> The nested rescan must also register only the requested node.
> Otherwise, all later siblings are probed while the expander is still
> probing, and one using the expander's GPIOs fails to get them.
>
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Link: https://lore.barebox.org/CAP1tNvRtU8munqnUTiqU_zEP_rxdm_hb42u_oU1FV=
L93czrtFA@mail.gmail.com
> Fixes: 7d8f15b36489 ("i2c: implement rescan")
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  drivers/i2c/i2c.c | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
> index ef92854eefe0..d0f9be826025 100644
> --- a/drivers/i2c/i2c.c
> +++ b/drivers/i2c/i2c.c
> @@ -405,16 +405,17 @@ static struct i2c_client *i2c_new_device(struct i2c=
_adapter *adapter,
>
>         client->dev.parent =3D &adapter->dev;
>
> +       /* claim the node before probe can rescan the bus */
> +       of_node_set_dev(chip->of_node, &client->dev);
> +
>         status =3D register_device(&client->dev);
>         if (status) {
> +               of_node_set_dev(chip->of_node, NULL);
>                 free(client);
>                 return NULL;
>         }
>         devinfo_add(&client->dev, i2c_info);
>
> -       if (chip->of_node)
> -               chip->of_node->dev =3D &client->dev;
> -
>         dev_dbg(&client->dev, "registered on bus %d, chip->addr 0x%02x\n"=
,
>                 adapter->nr, client->addr);
>
> @@ -496,7 +497,12 @@ static void i2c_hw_rescan(struct device *dev, struct=
 device_node *np)
>         for_each_i2c_adapter(adap) {
>                 if (dev !=3D adap->dev.parent)
>                         continue;
> -               of_i2c_register_devices(adap);
> +
> +               if (!np)
> +                       of_i2c_register_devices(adap);
> +               else if (np->parent =3D=3D adap->dev.of_node &&
> +                        of_device_is_available(np))
> +                       of_i2c_register_device(adap, np);
>                 break;
>         }
>  }
> @@ -742,17 +748,18 @@ int i2c_add_numbered_adapter(struct i2c_adapter *ad=
apter)
>
>         slice_init(&adapter->slice, dev_name(&adapter->dev));
>
> -       /* populate children from any i2c device tables */
> -       scan_boardinfo(adapter);
> -
> -       of_i2c_register_devices(adapter);
> -
> +       /* children probed below may need their siblings created on deman=
d */
>         hw_dev =3D adapter->dev.parent;
>         if (hw_dev && dev_of_node(hw_dev)) {
>                 if (!hw_dev->rescan)
>                         hw_dev->rescan =3D i2c_hw_rescan;
>         }
>
> +       /* populate children from any i2c device tables */
> +       scan_boardinfo(adapter);
> +
> +       of_i2c_register_devices(adapter);
> +
>         return 0;
>  }
>  EXPORT_SYMBOL(i2c_add_numbered_adapter);
> --
> 2.47.3
>
>


