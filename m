Delivery-date: Tue, 11 Aug 2026 15:30:45 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtmZ2-001zfv-1T
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 15:30:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B03462017AA
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 15:30:44 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=NjKPWGDM;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Lkr6EBgc;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIsDROXIPJLgf/wgcdmnY9YN8PCeKFPSk0quRc7FAOA=; b=NjKPWGDMIHwIn2hGZNr9DNo3jw
	6gedWwBAziBeGdCKhL2Z2tPClp9RSgi3v3j81giTlSpBBoOxnL8gUqt8bDq5QgOuj/xEVi89XhT4e
	VXVuTcTin5+F326WBjINoSbLzA1vPsehcCwVSB5TU5ysKESDCevAC5gOXu33F6WvnrJ9Y2MeWlXmx
	6GBQFLImJz3bEenxusBaBp10nbUg8vYXDxIOUGRmj5P6QOL2lCfoZ4QpIZ9x+2RY3tF/3FUk8epuF
	alg0Mv7GKe+hI3nukF9VHYJaAwH/H6zOHFKhtS++fOnkoR/wIQl+jPm6E3dMF9926M146ChWvyi+W
	cDiN2rQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtm0I-0000000E3Yw-36SG;
	Tue, 11 Aug 2026 12:54:50 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtm0E-0000000E3YV-04fx
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 12:54:49 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-38d489b6b71so914311a91.0
        for <barebox@lists.infradead.org>; Tue, 11 Aug 2026 05:54:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786452885; cv=none;
        d=google.com; s=arc-20260327;
        b=fyGJJWHME9siBRqWnl8muEgrvSixI5qMD4hkvu04k6Tfs9fgqufRtBYMWWlE2jk48d
         W48hCxMuRSZo34sp+F70PgGexmr6uDDzirAbgchPuBKPq2kbpTynijrLizRtV+A94Rs0
         vKK2wWXHYXFdQsOfBO59NlvCIaek4gEcb71buoibDzsCyCKNYtSTXPef1jTnJdCXj2Zh
         iW90j6IfhtHB3aLiP5Uy/9pDmd3E9cSyD5bAn9gRa+rP/559h/WXJ1Hoa4yGKRD9Ap+W
         cMSk/yhTHjX7hyKhQduQCCHhXIixzjup7nWbNuM2vT6LQZM15MrK1cdbeFVf8+xDh2i0
         4MMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=OIsDROXIPJLgf/wgcdmnY9YN8PCeKFPSk0quRc7FAOA=;
        fh=dpSMu0vzGWXDEagAbPffcU1LZCN1+Z6NIFb9P+UScNE=;
        b=CR+GChdemxQjWJ7gVw7KflgemBM3O/HAUtpTHFcBEWSGGC4Z/HuYxCIu+7baCCXtdh
         gYlT2yn3boIpTKpv64YysvmbQ+JXOxSOp2tRdG+MZLZEpGERQaAnG+yCWZec85OuXEIJ
         J7iJ+dFa9UQAu5GLodYmat+KYpeDIxh5qzs9/vk4D8VPbpESHBOKquFhk1r/lRHFUIDO
         aR81PhqaoVsek/N0OwH2D66NxrXwc0zCZ2hgTPvwucHWxprbaWiy6gkuhFuvRSgnAo7z
         JqHy4c3LIwCjECq6rpJ+A7APix95Eyl+Nkt5dBR0U1rFbznyBoSYTAkEFUWcGhwoy5ya
         cieg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786452885; x=1787057685; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=OIsDROXIPJLgf/wgcdmnY9YN8PCeKFPSk0quRc7FAOA=;
        b=Lkr6EBgcJdbgPLjXyRAjH+0cKlGaSSHdLhL6ZYUPy6zBsV/hRS7olhKf7I3M99tPGC
         QLvTSnwkIE7m64XD4lvflRf44kOezsWqHsTjmKvkUno/OSvQ2sC9ClFydw026JP9kubP
         P5sKrbxejHAVKtIXp45UiBAWmhbc68RtvODP/C55pO9WtOvMUPPEi5gAweL9cyPEBZOC
         7D+V9FuTED3GXWw24cXmUp+li9GC3zfggQA/v+2eWRjzG+ldMeyjH5TJFT2xTnt1Fu1J
         34AMfUS3xXnrjKl6/zxo/hCuKrpNZOWKA9uSMgYmmOIJekoL6OgLVJ28mUweTy/jVmNh
         nm7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786452885; x=1787057685;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OIsDROXIPJLgf/wgcdmnY9YN8PCeKFPSk0quRc7FAOA=;
        b=Whz2xKOafaOa1n23raRBntQjAdHduMFthvSAD3O4tVpjncEcafchITYl4JqHD0uF/S
         MKt27LqJAzOUDC+v+qDQKZRJGSSdcGkgOoKCDmic+gmmEIjeTGy55XTv9EuoJqIl7WgU
         IlyUI+M1zNACbIk36F9jYOV2rApHB5vqspt2Gw5zFy8lSxyfaauFFbxTZpePfeCct0QQ
         KJLpOqVuNFDuryw3BbWrPelFOf+nGT+10dzDzuAzlJ+jbXTXrBRGB2X4thDHQU0ln7dJ
         iTEg+XASGrYn/kieuquGmuPOegpFgW6Taaj+IKAg82KeN5vbUXi/15MEAXmM6viIWHFB
         Tj4g==
X-Gm-Message-State: AOJu0YwBnH7rCpSDm18c4uAeB4RBkMu1zfzGpnob4VoSwlHe9e8/CI3c
	7vaPkTeFkWSHzHPSnGxTb10KhxebbwspanOvh/VOEuLeb5zvZ5ARlM2cksSFwNm/ttvgDqKmn+c
	N7QE85XZR63+49CHI21JhG2Qqjh0PzlBtw5Hz
X-Gm-Gg: AR+sD13m1S6eFSmpx46rO1PSCmXgs8eVOP8lo9nsA1sJQ/lyNnKpKSzG65kI6Fitj7d
	QEdx3ZGcYU72FIDUFW/ZvGdZNiYpXBgSzRvuM8VB7ug9WdmsbK8xa6Zc0oCxMQVR9bz1ZLiapds
	PyF0FWZ1yBjnSZ3Vk5BFIbzI33G19sWr9kmj8FBhda35XD6DnzEfT/X0fV5E4f1wMTuiaOlvNHj
	VP2grXZu8rQ72Kcxus876ANacFO08SAOKpKQ6vuurQU6lPmUIrFfYD7FER+IdYH+mJQHMoZs2j1
	5SV62zzRF1mmwVGESoipWhmSRnOA6VQIbCJ9d/tZGa4BUA==
X-Received: by 2002:a17:90b:3b86:b0:38d:fda6:4873 with SMTP id
 98e67ed59e1d1-392ec5b8b3emr3060722a91.10.1786452884824; Tue, 11 Aug 2026
 05:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
 <4fe06c6b-c3d8-40ab-9e80-b853dfa617ee@pengutronix.de>
In-Reply-To: <4fe06c6b-c3d8-40ab-9e80-b853dfa617ee@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 11 Aug 2026 15:54:32 +0300
X-Gm-Features: AUfX_mzBT9GEYdxqSJ6dTCaqOla3Oz3I1fsLgASUAWubObWu_-sJGX7KGrdBWzo
Message-ID: <CAP1tNvRB6qH2Ujv7=AvKL3kZTdaDrWO2gDZSKRucW7_g3pwoeg@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_055446_056000_D07B5101 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. As far as I can see, this option (CFG_CORE_DYN_SHM)
    is enabled by default in out/arm-plat-rockchip/conf.mk Experiments with the
    open (BL31) TF-A version give a different error: ... NOTICE: BL31: v2.15.0(release):v2.15.0-274-gc64fe42d7
    NOTICE: BL31: Built : 14:41:34, Jul 6 2026 ... arm-scmi firmware:scmi.of
   [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1031 listed in]
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
X-Stat-Signature: qkyjeecht1whg3boi467tqncxf9gaz7k
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
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1031:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: B03462017AA

Hello.

As far as I can see, this option (CFG_CORE_DYN_SHM) is enabled
by default in out/arm-plat-rockchip/conf.mk

Experiments with the open (BL31) TF-A version give a different error:
...
NOTICE:  BL31: v2.15.0(release):v2.15.0-274-gc64fe42d7
NOTICE:  BL31: Built : 14:41:34, Jul  6 2026
...
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version =
0x0
optee: smc_abi: probing for conduit method.
WARNING: optee: smc_abi: api uid mismatch
ERROR: optee firmware:optee.of: probe failed: Invalid argument

=D0=B2=D1=82, 11 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 15:19, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hi,
>
> On 8/11/26 1:51 PM, Alexander Shiyan wrote:
> > Am I missing something?
> > The following lines confuse me, what is these line mean?:
> > ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory sup=
port
> > ERROR: optee firmware:optee.of: probe failed: Function not implemented
>
> Try enabling CFG_CORE_DYN_SHM in OP-TEE.
>
> Cheers,
> Ahmad
>
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


