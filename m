Delivery-date: Fri, 14 Aug 2026 08:51:28 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wullH-002xV2-0m
	for lore@lore.pengutronix.de;
	Fri, 14 Aug 2026 08:51:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5A46D20195C
	for <lore@pengutronix.de>; Fri, 14 Aug 2026 08:51:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GbPqT2xX;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=EUe1TLuP;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rBQXhEz5vhk1lu0kmE+X9RanGrPtKxuxMAue1BepKpg=; b=GbPqT2xX/J2xx09SM8SOEYrrsA
	ZvBAm/DTWE1K6oKgfVwcTT/eHdQdurNdybesQeapxXvXHqP0TnvkED8RsEDbafwFBNn212aVSn6Hs
	MhYlDW1VKY37jJ8LCJPgjy8mldQP0BZSsPq8AovXwyJQ9YLwJ7njLjRI0XP7C0GtouZ7y6mH7O0lZ
	/o2DpnHr9K5lNb+4m+/mTu+5OVA1uB19g4/Sfunl50Hz2BBilYPnUtdaMn1xx04heD/PJGalPEcv1
	ZdDwDn8OVEWGF6GDabp1CVURn1ssRs1M66Cxn1jjeWTmSMZ0ExrY8JvTT7RGsnhJ6NZGhmsCXa+0v
	y+uwNVhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuljq-000000023m5-0Cvc;
	Fri, 14 Aug 2026 06:49:58 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuljn-000000023lG-1nrt
	for barebox@lists.infradead.org;
	Fri, 14 Aug 2026 06:49:57 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-2cf50c6f235so8820875ad.0
        for <barebox@lists.infradead.org>; Thu, 13 Aug 2026 23:49:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786690194; cv=none;
        d=google.com; s=arc-20260327;
        b=cy6JLKOdV1OIo3UTWIQH9X2Abhm+nNqEydJYLsTthDz6PowQu70n8QLDDSoez3KNtv
         ifZS87fMpS3ujLW0S5oQc6wXk5SUpl1kk7xiQKC3WAwlDX1SwfU+2ObdidzRjgSVHG60
         WmoA3YPn4U+qfaz7IFVUD2pFCvIjr1paOHEoKQ9wejHws6My5/Xlc0mwaqQQTP3nMxRo
         01rOqxSjs6kzUQ82/VuE6bwRr6oWDDitEpB2HR5QS+5z6nTECNYxdJX/tw7DhGTkLoFt
         2SmBWPxDWWBak1FxjdoNfRGgQX6uEa8oJByYh90w2TQrP4so6H5Q1K1njiJg4d3YCX9D
         WI4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rBQXhEz5vhk1lu0kmE+X9RanGrPtKxuxMAue1BepKpg=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=AKjN3YwTWdkVHd5PAIiMwU947r4pAQwm13oUkEtPjDCxi/QTlphARgvZV5D3P0WrNx
         vH9YbBPIxkEbIzvxGoGu5lmzH2ZDF/yxlreWmdQs4qQS14AtNim/IYq+tb6EtFMZgpv3
         VnYoXOGoV2vmnTjA8Cr/SLHbhDsJ53ae/kTv+Jkng/Mn+rE2woGIE6SG3nzpZpHSWYsD
         Fdh0YLIstf0ygpC40zGYSdN8a4Mn5Acvr97S4/KYAnm0XH4i43lpTbS8cBdCUid3L2io
         o2e77ULna6nJ7Sjioo5VuVoPRmoVSMDHfusp+hsaOkrS53l3b4PRhDlAdOT0vTfZyrfe
         kjcw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786690194; x=1787294994; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=rBQXhEz5vhk1lu0kmE+X9RanGrPtKxuxMAue1BepKpg=;
        b=EUe1TLuPZPx9/+W1d29LIv+Gtt3uEO2O/fQeZgOC4pfXQVglKUp8d/YrVXPeyY0ce2
         lG0oX8EVC5vTJBEFqECiy7te6WWZQNe8X/f7IG/8Jc3gKBReVQUMqCc5fIfUGfH27MaK
         5Q8vftaxJLPCqm3jUbmOXFIPbXJOFvCvrinaqkKnSQz9X5JQh00k7GJRqwpyHM/i3W/h
         OihRop6vOaIkHapv/s3mZO5yAjgFwqhzSF1qpK9kMCAU/muaBkfUHXxyqCrZHm6Mftr5
         9zW1drFEzT+2KeoNRxVx0H2qVhjHhrAfv2w7oBlXAK2llEF52b0Ka49Z6h6dbi10NJ5n
         R3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786690194; x=1787294994;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rBQXhEz5vhk1lu0kmE+X9RanGrPtKxuxMAue1BepKpg=;
        b=TtvLWq9mfsMDHieP7jD8GRsp3+qriqdW+H6Jwi3Y0IEst4cYEMT+to4o9iPiZYuso+
         G3Pwm3j3ER1ugOr054YlmWXGAOLhgKsF+N1VHaZ5ayufcMUG4UzGm2lpLoSZRPABoai1
         BrDbnYk9FTSWH3JHcDU/0ONr6MROO6jIsKxme2Q7+Y8m3xBURw3Anv53PLsi+mHj5t12
         /iL789GolCGA8DkaD/l5Z8NSX0ssy40j/OiciOYt/O6fX53eOpF6c9E3ANAD6IvnUiPb
         rTiBJG8OvKsvRnC0XDK392wz1ezZnYxC3qGQUjAMJyY211/TIx5k0ibGEj0uecFbUQLs
         j+9Q==
X-Gm-Message-State: AOJu0Yyv2vsfghh8fnbQGcFQIWh8ofhI08B8n59Q3qFBygWhf2vM8B82
	2v1THbri83z1KMQ9bSCajs2F/n2/CaQyF5D4keR6BkRnQJfFx6YzKqVcgluOE2YGt9j0/3VLQ+2
	P7MeZG0Z/jlfyY1CngdMZ6Qe7CO7R68CiWM0y
X-Gm-Gg: AR+sD104Aasxlqf7/+7SMYR7mtk+c/NF5D6yFv8NRs3I+RZyra9GwMDGwSr1+j5DkeB
	HPtQXrALIDzAXc1uQ2OfbZepqYp6IKq797SNBPulwq6443Ebi7OLNnEOapu7Iwb/q6/7P6aJHxa
	gDW/IBRhLBpfrgquuvhROlw9GXFLkLjtDfRWkuWH79VcQjqS1Jrue29YgDfBC5gLu54A29RDw2m
	ieBk9pZaYbbY/ZGA/wKKZ/pivApceCx0SrJkOSQmi+TUvgim4HKMwdoEeILkobcJ2YuA3xnQ8jS
	h1OfqOyhbKZsRHEQUU9kB01K2Kvs2NQMIYLQEKET8+9ELg==
X-Received: by 2002:a17:90b:224a:b0:38f:837e:fc5d with SMTP id
 98e67ed59e1d1-3933b786507mr3745698a91.3.1786690193852; Thu, 13 Aug 2026
 23:49:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRw3xWZCs3KUFMH7=9f7s8Op8-5hQUCFiFE8LY+mcp+VQ@mail.gmail.com>
 <6a7d6747.1bdbcb37.263332.61abSMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <6a7d6747.1bdbcb37.263332.61abSMTPIN_ADDED_MISSING@mx.google.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Aug 2026 09:49:40 +0300
X-Gm-Features: AUfX_mzrbVls2BnJgFN4NJVUulGGrsGWiX6Ol08ZofpBTMKctiP3sCrwDDgyjoY
Message-ID: <CAP1tNvT7fBV90WAoXNwuhXes=j--ZshKdJxbOe5_HmMGWmwn_w@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260813_234955_475307_023B4F44 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello, Sascha. With CONFIG_SCRATCH_SIZE=0x100000 compiles
   fine. Now about the current errors, one build is used for two images for RK3568
    and RK3588. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:633 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Stat-Signature: ojr9czagktro16puzj7t5bisrknkucsp
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
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::633:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 5A46D20195C

Hello, Sascha.

With CONFIG_SCRATCH_SIZE=3D0x100000 compiles fine.

Now about the current errors, one build is used for two images for
RK3568 and RK3588.

RK3568, Rockchip BL31, tee.bin from OPTEE_OS:
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version =
0x0
optee: smc_abi: probing for conduit method.
optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
psci psci.of: detected version 1.1

RK3588, open source TF-A, tee.bin from OPTEE_OS:
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version =
0x0
optee: smc_abi: probing for conduit method.
WARNING: optee: smc_abi: api uid mismatch
ERROR: optee firmware:optee.of: probe failed: Invalid argument

Switching to a configuration using Rockchip BL31 with the TEE/OPTEE options
currently enabled results in a constant restart of DDR init code, meaning t=
he
code never reaches BL31...

What else can I watch?

Thanks!


=D1=87=D1=82, 13 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:42, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On 2026-08-12 17:44, Alexander Shiyan wrote:
> > Hello Sascha.
> >
> > After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=3Dy the following buil=
d
> > errors occur:
> >
> > CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
> > In file included from include/linux/array_size.h:6,
> > from include/linux/kernel.h:6,
> > from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
> > from include/mach/rockchip/bootrom.h:9,
> > from arch/arm/mach-rockchip/bootrom.c:2:
> > include/linux/build_bug.h:100:41: error: static assertion failed:
> > "sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
>
> Set CONFIG_SCRATCH_SIZE=3D0x100000
>
> Seems we have to look into it to get a sane default.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>
>


