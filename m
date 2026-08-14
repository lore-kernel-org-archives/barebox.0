Delivery-date: Fri, 14 Aug 2026 10:44:00 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wunWC-002zRA-07
	for lore@lore.pengutronix.de;
	Fri, 14 Aug 2026 10:44:00 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4B2D8201DE4
	for <lore@pengutronix.de>; Fri, 14 Aug 2026 10:44:00 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=G9M72ReO;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=a2r+Vt4o;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nHpCbQYHHXm1z5l04PFWSYPC+eA7JNsZmwYCSmfxIi4=; b=G9M72ReOV9zHi3Oi781I4Fm4pU
	4ud9RgOhfVWE0wVXklEmLTwupE7LBl5y2bpsuQDl3dxIbLBM2SR9RTIdOMT6nv6I2e9LiriGjqqa9
	mqonbCWng5YSv5nW7RSzMZVUR5Bdfm3lqAS+9jd72w96BhGxYp9KEkcmwaiuqsP9ubgtd1O7VObrA
	xlOjFIN2zztIOAkiGRk7LKyZwtWt2ITkBOBmYmpOH7WXy+8FZrqFJ0RYWURDPGUT+OjT2WVwyzm5k
	pGBIy/keCDv4tkBLk1YqXoCYLZv9VjUb98U4pMCsszfrDJT+1qa/JuUYukjhIkXQvO6kbBcQOt50m
	o2DaCkkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wunUs-00000002IzU-2J1z;
	Fri, 14 Aug 2026 08:42:38 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wunUo-00000002Iyj-1j3I
	for barebox@lists.infradead.org;
	Fri, 14 Aug 2026 08:42:35 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-38fdeaed181so1071011a91.1
        for <barebox@lists.infradead.org>; Fri, 14 Aug 2026 01:42:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786696953; cv=none;
        d=google.com; s=arc-20260327;
        b=lLppFjFR5dm+2CUeZejfoVjcUkmiw2ZVRxUWByN6NRXMOi7O13DDBlgTBkSODU8dfR
         4UaYDanzeBjswoQnL8L6biCNNJEcQXkFtxaQdorUEaW3g562MUfToakbaKQ7c/epyQRv
         xBJDHnKRNbqRjul9qPcEB4qVyXwQ8U/pE48FEKG6pfKiW7+JQ0wrUnU8Jk12vb1iW+b/
         4uOEF8D5hwKqq6x+X6oTrE2JnuA+pljQM1oRs+pHlL0+SflHBMPYnPOL6ym4KdEUVjeM
         Hvow5nUhQ1NpSiPFACZNrhR0IaD+N2jDNkPoE1d7QleOAfVIkkEiUOMXGBEXgJbZO2Zt
         8lqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=nHpCbQYHHXm1z5l04PFWSYPC+eA7JNsZmwYCSmfxIi4=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=L9L8DMZX+YTzuGn32yFTooFajsSfGJ51Ku0MUplUYf9hV8HKIbsQ+uCXG1Njw49c9N
         5K4ZQW2xg7IbZxRXIACpMX7pjBL63SG/Z+dFj4ktl4pC3klVxldJ8Enp4IFbTVE+Fg+c
         Ie6QoDrDC5VOYm7+Ojg0RuXI84zBJSlBDI0fDizM4jeK1cItHy1GYCr6DaIThGLd8+7V
         DkMJ9af1MdN89TxOWHeLYbMIak1+rkn5/9wgLPYFGI09eTP1rT0VC/KBA+9TXeOI2VhM
         chd4mg41TieMsx9kIvaPNYSHrOIeZjeoXJkNzCV7gLcG5fCbrhsDtmDYFP/5743aN/VK
         KAqg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786696953; x=1787301753; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=nHpCbQYHHXm1z5l04PFWSYPC+eA7JNsZmwYCSmfxIi4=;
        b=a2r+Vt4oRQ4ixE7lUq4afAeZDj7JWTM+TgzveUxlF69QpRNU0kGN+WuU5+jfyx1/t1
         odNiiJ9TYtkMDGEdtRiAyUh7XYX8EGDdAdqc9yBZdj5D4VcsA/2yKAW2A0mYmWJc2D8o
         Rnj114zipuXCflNnZ4bM3FXW7RYBshE/E3ycR999q/J199OXQKZrr8JP5/39Lx3lwTLV
         XRo5lsSrIaQukS+2GcfQ3gKgnIfXGczwXDPBa7DpQMR3EOXl9Agx+U0dWKbZ1SqBcCdd
         4ZvaRyUnCLOLHTHOTLJ6QndOCf4Aojh3IynCyYrWAVGatHPlQzCoxcgKZZuu5dFsD+zp
         LMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786696953; x=1787301753;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=nHpCbQYHHXm1z5l04PFWSYPC+eA7JNsZmwYCSmfxIi4=;
        b=LO41xNTOuuxMrTyIFY0o27Yjd9HFjd0xbN6Wqbb6QlpFZPRbPf5a+15kCcvP6k0jru
         sfgo5/9rBmXM1rsGRB085fWCajClNTtl5C76ks5qtVlrEw56b+JG2lF6/83DUS9etS4b
         BV5uzm1KGgVP0fXoUq0t80j+Il5YjOWYYYQ2llzjG+MFqn0mej5gtOdtJEYP/SNydjDS
         UxQUlBdEPOHmw3dKFYYeRWfU53wFSoDkXSNRzyhtCUijtHLIKOnuoiLyBJSohzcl2R4C
         y8AOL9ZCGyTj9wSVRONsVVdDWx6WAYUXCpSb63NgZWFbFWCMRFMdoiysTn1aGCCkTFj2
         zBaw==
X-Gm-Message-State: AOJu0YxIF0wFJZxbNxJVTjzhwpmG50GJF4XwS1qMLGvYGYUVYrc3i4/J
	kYggu/DCahOqRXiic3Qebj/n54qNSnEk+pBCUYLfAeiEGBFcIQSfQJHYs8y7sOqsTWiSErq6q+M
	vUBicno/tm4hBYxbN6Xo3syhx2itTVIJfYg==
X-Gm-Gg: AR+sD10FvdD+dAIqTrAPJnoirZoYQsO/Oqkf220vtRe4Z2rr8BuQ4fB65gJS9SZjH+I
	j/PXFjHB8gHDxegVeIDCG962v7KDybXrZJAh6C3JzCTyZ0YEO/2CT94TtwpzFulmC2HuE894kZU
	hYIJbZw4nfu/hNtvH/k2n10lBUY6z6kHYyQp9vCoWAuknhu7B8wekK0QUpi9807JsDM1Tzcrb0R
	nr/0TY3Lm0k7df9KKUjL4J6waD/Sw91cW/+gvvBGdWppcyScsYcnVb7WqLWNtVkydkZpgdYe740
	KuP3R4qd8wjfFZPKjnJ3aPDHEIENZvU04EEP8HYN48oxYR/68817+uyp
X-Received: by 2002:a17:90b:4fc1:b0:38e:2524:724f with SMTP id
 98e67ed59e1d1-3933b8f143fmr4917862a91.12.1786696953179; Fri, 14 Aug 2026
 01:42:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRw3xWZCs3KUFMH7=9f7s8Op8-5hQUCFiFE8LY+mcp+VQ@mail.gmail.com>
 <6a7d6747.1bdbcb37.263332.61abSMTPIN_ADDED_MISSING@mx.google.com> <CAP1tNvT7fBV90WAoXNwuhXes=j--ZshKdJxbOe5_HmMGWmwn_w@mail.gmail.com>
In-Reply-To: <CAP1tNvT7fBV90WAoXNwuhXes=j--ZshKdJxbOe5_HmMGWmwn_w@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Aug 2026 11:42:20 +0300
X-Gm-Features: AUfX_mztkzpfEoBS-ThDl5dVUl1vitDOFm3P0PxOrJWoT7RwfRyaermgjGWyCIo
Message-ID: <CAP1tNvRLYGdbNX_uK2bqHAOSqPDydYPi25fULCVTXop7VB227w@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260814_014234_454905_5720E93A 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Update: Issue with RK3588 resolved by adding SPD=opteed to
    the TF-A build command line пт, 14 авг. 2026 г. в 09:49, Alexander
    Shiyan : > > Hello, Sascha. > > With CONFIG_SCRATCH_SIZE=0x100000 compiles
    fine. > > Now about the current errors, one build is used for two images
   for > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1035 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
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
X-Stat-Signature: ry4yb1n1d1ugoibkzp1on7u5ehjneqmh
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
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1035:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 4B2D8201DE4

Update:

Issue with RK3588 resolved by adding SPD=3Dopteed to the TF-A build command=
 line

=D0=BF=D1=82, 14 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:49, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> Hello, Sascha.
>
> With CONFIG_SCRATCH_SIZE=3D0x100000 compiles fine.
>
> Now about the current errors, one build is used for two images for
> RK3568 and RK3588.
>
> RK3568, Rockchip BL31, tee.bin from OPTEE_OS:
> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware versio=
n 0x0
> optee: smc_abi: probing for conduit method.
> optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
> psci psci.of: detected version 1.1
>
> RK3588, open source TF-A, tee.bin from OPTEE_OS:
> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware versio=
n 0x0
> optee: smc_abi: probing for conduit method.
> WARNING: optee: smc_abi: api uid mismatch
> ERROR: optee firmware:optee.of: probe failed: Invalid argument
>
> Switching to a configuration using Rockchip BL31 with the TEE/OPTEE optio=
ns
> currently enabled results in a constant restart of DDR init code, meaning=
 the
> code never reaches BL31...
>
> What else can I watch?
>
> Thanks!
>
>
> =D1=87=D1=82, 13 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:42, S=
ascha Hauer <s.hauer@pengutronix.de>:
> >
> > On 2026-08-12 17:44, Alexander Shiyan wrote:
> > > Hello Sascha.
> > >
> > > After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=3Dy the following bu=
ild
> > > errors occur:
> > >
> > > CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
> > > In file included from include/linux/array_size.h:6,
> > > from include/linux/kernel.h:6,
> > > from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
> > > from include/mach/rockchip/bootrom.h:9,
> > > from arch/arm/mach-rockchip/bootrom.c:2:
> > > include/linux/build_bug.h:100:41: error: static assertion failed:
> > > "sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
> >
> > Set CONFIG_SCRATCH_SIZE=3D0x100000
> >
> > Seems we have to look into it to get a sane default.
> >
> > Sascha
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
> >
> >


