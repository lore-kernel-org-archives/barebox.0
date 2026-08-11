Delivery-date: Tue, 11 Aug 2026 17:34:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtoUR-0021Xk-1Q
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 17:34:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 994D5201C9E
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 17:34:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=To7clwoy;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hI3tuNGH;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H4hC1WkioeSQYtNkNg2S6NPQaO4ap0dNDb4/gyaCoAA=; b=To7clwoyIkIBBCSI+PFCH+nXX2
	Rm6kkbqyq9ZpHWCsnostqXx6yHqHOk1CkOMjpzawgbhpS175N/siMN0XMDRpP/iCYUqnqxkJ6kaYN
	qTFp17P5AY3HFhqka8m2XAWzwkJk8Wrs7Afc7bWXgikrCmqBEkqBtlF4KXZOezgKaz+VbaW1hFURT
	s+Y0V6/6ePLzDjBRiRM0MPXbvJN0Nu37NHu/PNRwIVSk33mhtSenM2TQpMI3nz9EZ8zmWGaOdKvyh
	fHwXiUvATaNLIakN8E5EyIneZozsunNgFnem0ZIJktOXhDzS3MHH4ql2LgCu5cQoEmR7crvz6wFRV
	dExQ/b4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtnEu-0000000ECBh-2mhV;
	Tue, 11 Aug 2026 14:14:00 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtnEq-0000000ECB3-1lJc
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 14:13:58 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3856d6fbcb3so3055706a91.2
        for <barebox@lists.infradead.org>; Tue, 11 Aug 2026 07:13:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786457635; cv=none;
        d=google.com; s=arc-20260327;
        b=SdchZMZwWgy6FvHmBJGWMoWa5W+7cv3pv4i2cKD5PiQc1n3K/3ELy0sdy8BhIgSNvo
         TDlbKBUstY7ottg7rUFe5bxJpPB6tcpRNqGXifYybBkXvYyp+RXWUG+/RxHCHnq9/sCV
         ltP7lsAaY9XK3IOPzOUanD3YWzh10u8AT1O9kppqrStxO5bXsNmnFxYrOZ7nU1/iyRuK
         2jUftPBkLfC9J9zmq3bnha+nFcb/A78KUxGAkU7s3+ULxbfzJjrgxxEMQvqKQuND8S5l
         2FoQxbVKl2DslffrLhAUooa8sqzL6FR8UtAJf/wwVS8Lz8SpxSBaNwrMTDlbrHU8j6jc
         uFrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=H4hC1WkioeSQYtNkNg2S6NPQaO4ap0dNDb4/gyaCoAA=;
        fh=dpSMu0vzGWXDEagAbPffcU1LZCN1+Z6NIFb9P+UScNE=;
        b=WCHKJfFuni3Kbv9h/Cce8g/YV1I3+OGOK7Y3R4QIRSn29pLtf+23snaaZnal0zaYZC
         KvBMtDfTCdQo9MR1s8KXXCSx4zwxnY1gMsmexFR5UfPmOJaov/aQRUQgDGgN8LJdE08Z
         zrxemA+4QOCR6vDDjXXclIGBAmJEen453H9Q3SXQJqPycOlFYbcyLhQjxWpwi377v7La
         Jn6FBzpPzP56Vbqfuj5ZCVuyOgi492g+3khHZNEHE/mVbdW6+atmdFSN95hi9/z3wwaM
         MJM4bmZks6OH+KJyg28gWpDOpc+ayKJvei4a8RD47W+3g97o3AGzAuNadjDgUNRMlc/n
         GVmw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786457635; x=1787062435; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=H4hC1WkioeSQYtNkNg2S6NPQaO4ap0dNDb4/gyaCoAA=;
        b=hI3tuNGHsjOLy1cicg9hpXL5L4+WxbnlvIzoL7+dSQWlRdloM4fWYSi1CVk/A1WjUN
         S7BozC224EsG2imOXD0scUfhGlpsXd6s+UaQS5BzLGb9C15Ve8+UugQz8kJBzfWWmThV
         6XgzxBCbmKOCn/+E9PSN89CtHZv0KstYf8LZrHe4AVAvTcxtre5euYYyhoUV23fmINga
         XMJ90o9HivVjdFrGdSTV9iGOr366s3SW/IAMHjLkbbo3J19bCBIA5x8anLRDnQwRAxzY
         4+erOKLE1yZ7fH9/cl/yh/2E2cxnBgK/mn8NHCFgalyw0FBPuHaMpR3TKj+TMENAGWqT
         6dsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786457635; x=1787062435;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=H4hC1WkioeSQYtNkNg2S6NPQaO4ap0dNDb4/gyaCoAA=;
        b=QtZyPUVmrqr5i8HbK+B2AgWm1u78yIK4mbUGv6QB/sx9KhHjuyI7WkL1mCOiae8YBQ
         WeIvZA7jdYZULTiMXn8uOOJP7+9aiWK1c5NC0yqLjhID9tyXS9aPZPwixi2SqCrMsbpv
         nD767P51negj6V6NaIrZ9+ZfvXPyvAX/MJp6BIaaOnEkxEJVlkI+cqsknZ8qV8XGSoAv
         rOHtYrqff5Rkw+KKY1z9V2vWMqo3DO7exbcQcNbal2qs4VW20ihoEKRpKEQPfmqRhe8E
         W7L1tmZuCrqhaD+d8T947UzDDE+gMuI9FxaTCp+VgEVnis1O7WVdsbGvmS1Gk5Hsf6z8
         FwGw==
X-Gm-Message-State: AOJu0Yxa7ATyz47Z6a7KOSg0D2qFuZVhaIfwLX79hlbsqCmv8S9Krdhx
	0W8fcg6KtvrbFxYouR7PLVstyF3Ug2tORMFfjRwItYKpvNyLAK916QJOQBTbBj28Q9IkbeVSA8H
	jBhKqOlFuce+qtQw9izgI8QAhXkJV2SCjHyvc
X-Gm-Gg: AR+sD11zZZ28+PwbZhD0s75Im6T7Y7huS+jqkOcnS2E8INsMj6JiWUOc1bfS7qv1JRe
	YRFAG53Yae+EPV8vi8xRRV+5uPzbiDa2ictbN++w+r/pc7eg4DKZWuuch6CZOLjB8DXew0amGPD
	eIlqB/B19mvtKPC2lP2+pAc2AesIrNSn+zFgekkYSbe5cKTSQcet67ZWQ17nRkJAOMmmGAcItWq
	566tCoXeL+Tm8Ld0ycdzz835UBHt2vXYBXP5kwl7RfIm9np4GaHfuMfISpA5Brdft2TrgNtX3r5
	I3ZUgiYLcFwAYgsudjt6zggREE9hgVnvdEUSq/FtNWVHUA==
X-Received: by 2002:a17:90b:1d44:b0:38e:6dd:a9ad with SMTP id
 98e67ed59e1d1-392ec11ef75mr3884213a91.0.1786457635383; Tue, 11 Aug 2026
 07:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
 <4fe06c6b-c3d8-40ab-9e80-b853dfa617ee@pengutronix.de> <CAP1tNvRB6qH2Ujv7=AvKL3kZTdaDrWO2gDZSKRucW7_g3pwoeg@mail.gmail.com>
 <92b327a9-0253-4fb1-80d3-31d4c1ebc2d7@pengutronix.de>
In-Reply-To: <92b327a9-0253-4fb1-80d3-31d4c1ebc2d7@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 11 Aug 2026 17:13:43 +0300
X-Gm-Features: AUfX_mxhMjRUI52Ty3b-R5jbGSmCo7gU52pOdUJUZtZklmUZ_R9M7sByzLl5VqM
Message-ID: <CAP1tNvT6SFC6Ld9mho97uEhYLyMjOLuVR8JrZ=HZeJyBdQYN7A@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_071356_482744_3632E2E5 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Could someone share the correct RK3588 tee.bin binary for
   the test? Perhaps I compiled something incorrectly... Thanks! вт, 11 авг.
    2026 г. в 17:07, Ahmad Fatoum : > > Hi, > > On 8/11/26 2:54 PM, Alexander
    Shiyan wrote: > > Hello. > > > > As far as I can see, this option (CFG_CORE_DYN_SHM)
    is enabled > > by def [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:102e listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zjwpt8xx3nzazgcpw5nz67hkkx3spx71
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::102e:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 994D5201C9E

Could someone share the correct RK3588 tee.bin binary for the test?
Perhaps I compiled something incorrectly...

Thanks!

=D0=B2=D1=82, 11 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 17:07, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hi,
>
> On 8/11/26 2:54 PM, Alexander Shiyan wrote:
> > Hello.
> >
> > As far as I can see, this option (CFG_CORE_DYN_SHM) is enabled
> > by default in out/arm-plat-rockchip/conf.mk
> >
> > Experiments with the open (BL31) TF-A version give a different error:
> > ...
> > NOTICE:  BL31: v2.15.0(release):v2.15.0-274-gc64fe42d7
> > NOTICE:  BL31: Built : 14:41:34, Jul  6 2026
> > ...
> > arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware vers=
ion 0x0
> > optee: smc_abi: probing for conduit method.
> > WARNING: optee: smc_abi: api uid mismatch
> > ERROR: optee firmware:optee.of: probe failed: Invalid argument
>
> Huh, no idea off the top my head what is still missing in the OP-TEE or
> TF-A configuration.
>
> Cheers,
> Ahmad
>
> >
> > =D0=B2=D1=82, 11 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 15:19,=
 Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> Hi,
> >>
> >> On 8/11/26 1:51 PM, Alexander Shiyan wrote:
> >>> Am I missing something?
> >>> The following lines confuse me, what is these line mean?:
> >>> ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory s=
upport
> >>> ERROR: optee firmware:optee.of: probe failed: Function not implemente=
d
> >>
> >> Try enabling CFG_CORE_DYN_SHM in OP-TEE.
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>
> >> --
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


