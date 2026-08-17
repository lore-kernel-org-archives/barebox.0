Delivery-date: Mon, 17 Aug 2026 08:15:56 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvqdY-0041se-00
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 08:15:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 405F4200F4F
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 08:15:56 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=zGLtRx3o;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Z6lZVx0h;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VHp/DAahn4iDOpUWdjJYnYPbUt8XpVl9ZE0Qee+mI6A=; b=zGLtRx3osNDspF7BNHXt0rTKYK
	vXYf3tYe07CeXUv/IMtq6/x9LagdeluJn+Tlcl+GaKIPhWoqdGx2yaTtQewrUDrHYLuClqAFoZemn
	WXLDHEZTFLdXRDYg5v+Kw2ltyqW25p7zV7qLdCX0WwFjBes0+BVlvgOaf1XU/yaIwvA5nxlZ+OMrh
	LHFLh8yFXvmK5p8HX025q4pjGEiBXCv4G1L7baLXi9U3MNGoGsjNc0OAJfrlcuJW8VCGNvt0ylPpy
	tMwBWcqF4/rr0acGIyfi6N49WeZkkXx8kcSvflMgtbS8eIngednuDYCWARtPDuhQ5AxdsqL2ym+Id
	On9+pAmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqcM-00000005T0p-3yW0;
	Mon, 17 Aug 2026 06:14:42 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvqcK-00000005T0H-0LLK
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 06:14:41 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2d02b4c3601so32211485ad.3
        for <barebox@lists.infradead.org>; Sun, 16 Aug 2026 23:14:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786947279; cv=none;
        d=google.com; s=arc-20260327;
        b=ld/+ykmEaIkoWrTX3HUAojGHFX730AwUQqAra/tEjOvUJfTOGc8AdoTAPQAk1csTZ1
         mJgqI/CdGQvrpB1MsWZEqQeAVP+xdF211Y3uzGELe8hc9ACPaBq3TTXw9OIyT5GUNvH9
         3MF9V7W1RwLesXwYZljrGVCt5e0osjslTw1dNEajhPTA96x52JvdFuiFFnPuZ4mAYnTH
         RcpQ8ippX6W53mk0XjedFKZjIf8/5rRYtWURVLZkLze07KizmCjaZwedV2uBOwzOlnW7
         fMkQV4Wu6apOAq389PXUc4/Tl8F3WsAZybOblWCkr50hgn6gCq4gfdlnUiPSmVEsdTb9
         YsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=VHp/DAahn4iDOpUWdjJYnYPbUt8XpVl9ZE0Qee+mI6A=;
        fh=vM2vRr44yOjyRdmzXzSi6lSzuq2Z1E6KH1Rw/zd25II=;
        b=L7FtO36TqxeeO3TWvTQ5KtQ80OwfPcWqYw+NPnHh/HPoJDLXzY2HI7taWP8zmpgRJ8
         Yu69uEj837f9KiGXI98eTKQTUvH1oG9nEBYz2KMrRfHojEtbLyvyN8kU2fpWMr/TNR5z
         GapcFWa2fRQ6A4GzXD48g5ON3hrQX9WziF96jbiX2pNyyiQ0OPtoIz/DTaqZhpYaz4fu
         vjMiLUpyrbZOe9uxuOWLjVdv4ZTeGJhIZ1re4UMMlDOu5+8l/jHwcnVqRCZCy5vxb/I0
         a0264GcI9CNH00tXQ20sPdKW3iP3QNdVXajLwOnUw5nYifTHEMrXcUrs5HXi56k1t3Qp
         OgKA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786947279; x=1787552079; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=VHp/DAahn4iDOpUWdjJYnYPbUt8XpVl9ZE0Qee+mI6A=;
        b=Z6lZVx0hkETFf0Z+o1Qk+f3tb57O4vmAAfVHgIBoeSj6BHe65TBRf9Vgis1buve2F8
         x1GhkBNcXlzEC9bNNurw+cKsd6PHkYpCHsO3sENEtjBPX7PZS9XET3FynMswhI05RkR9
         l3VwmwiXncHsqFQvKzzS2CkzOuOzham2F9xpI35w8WrQfVrH9g/45+X6mg/QrNHf7pSF
         4hsTAi9erX54dosgPz4J4CUakKSNE8cgTXC4SnYRn1mqi1btIDMjsqJtiVqW12sjxS/Y
         pXE1keFy87jXWKxZYiKLzn8CM4/jrMIEVocbGj5sDJ8kx4MxW6+fqMhc6OuG0ZSryuNk
         TPKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786947279; x=1787552079;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VHp/DAahn4iDOpUWdjJYnYPbUt8XpVl9ZE0Qee+mI6A=;
        b=k8msmGgB3FWh0eUxycUJiedd9eb7M/IfgJpsYIyf5seWTUz7RhaU9TY5RIg/rsRwsQ
         VELAJL0+Bfz0gXLB8+f4frHgIKoD44Mq4fQQHXvSJNN5oIukFvbCe6A8l5oigUQFL9+u
         VUkKDI1I8L1EJr6aR1kTqvJbJTWSnbcCqKxzWQNPM9ZO0rJ+k7jXJGONtxpqCINGmNC4
         qNjaRpdAZsg/1jJwuPLhJwnZp/TJZjiIKevQYkhsQK57gKzsCFmVoe3SuNtDisnYSLez
         r3P1xEhkHxJiPVEINULJfPMlTM6a24Mxh+YNvEtc+9ZJKtwXc4ErmpOJj2Et8/5FHhlW
         9JsQ==
X-Gm-Message-State: AOJu0YzJgPp/WvPsNR3D7039U2PyRSAVOEn2LewfhorZ2KSzyEdCTnfM
	8EOk5yayBYaF1Hmswzo5hvmyOr9MhCA+KfHf67CCde8WTHKRFOaEXqcPF6wK2RHEOgqWbL5ilyx
	YgNHuVTGNdtYrpfhlaLfzLg3H/e5RCpQ1Us5f
X-Gm-Gg: AR+sD103VKRBDVJylMfKUBwGhuuoauyBzH+Ck2lebEEkGaV58/CkOpEVYHiXFRevcW4
	HJJbb9TLReQGQrM4Uw20H2175RN0fndHWl8ItwsydnvU/eDgyiWT0zdSzneuff/rTeOTuUBWzOq
	8le2iUEeDKTFjoHP60uST8E7oIu6w9S1CJCLtd3N7tccTZkpk5/j8LHTTcX1+lrHx9QxMvwCjHQ
	pBtdkgUFBCTIFhuxuVVPgoaHAGoJuXQ1C1pTGl7jpN+CY3isy1TZ+ZK02D56M4zT7+Q9cb0NSEr
	DJNiiZT+vetU4r/NcFJ4SlC2wXMY+qHF+NVd6AFADQjS
X-Received: by 2002:a17:90b:3889:b0:381:11eb:d78e with SMTP id
 98e67ed59e1d1-3933b8ace11mr21060941a91.14.1786947278638; Sun, 16 Aug 2026
 23:14:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRLYGdbNX_uK2bqHAOSqPDydYPi25fULCVTXop7VB227w@mail.gmail.com>
 <6a82a488.478ea94c.10bcfe.7909SMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <6a82a488.478ea94c.10bcfe.7909SMTPIN_ADDED_MISSING@mx.google.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 17 Aug 2026 09:14:27 +0300
X-Gm-Features: AcwNN1UtHT3G7lAXrk919d3cIfXBXS0ka_-3wFSMawBcPN8dqNyPmzZNxsQDGR8
Message-ID: <CAP1tNvR34q93DFDreTvvvYPLz0=7=U1_P9w65a0+Xug4OjcA8g@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_231440_128733_FC8E32B1 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. Yes, everything works now. The only thing that's unclear
    is that kernel loading is interrupted when using the open source TF-A for
    the RK3568. The RK3588 doesn't have this problem. However, this is most likely
    a problem with th [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:62a listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Stat-Signature: rw5qys9hf55zored81ek8a8ytcsbis9u
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
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::62a:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 405F4200F4F

Hello.

Yes, everything works now.

The only thing that's unclear is that kernel loading is interrupted
when using the open source TF-A
for the RK3568. The RK3588 doesn't have this problem.
However, this is most likely a problem with the TF-A implementation,
not the barebox.

Thanks!

=D0=BF=D0=BD, 17 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:04, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On 2026-08-14 11:42, Alexander Shiyan wrote:
> > Update:
> >
> > Issue with RK3588 resolved by adding SPD=3Dopteed to the TF-A build com=
mand line
>
> So is everything resolved now?
>
> Sascha
>
> >
> > =D0=BF=D1=82, 14 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:49,=
 Alexander Shiyan <eagle.alexander923@gmail.com>:
> > >
> > > Hello, Sascha.
> > >
> > > With CONFIG_SCRATCH_SIZE=3D0x100000 compiles fine.
> > >
> > > Now about the current errors, one build is used for two images for
> > > RK3568 and RK3588.
> > >
> > > RK3568, Rockchip BL31, tee.bin from OPTEE_OS:
> > > arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware ve=
rsion 0x0
> > > optee: smc_abi: probing for conduit method.
> > > optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
> > > psci psci.of: detected version 1.1
> > >
> > > RK3588, open source TF-A, tee.bin from OPTEE_OS:
> > > arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware ve=
rsion 0x0
> > > optee: smc_abi: probing for conduit method.
> > > WARNING: optee: smc_abi: api uid mismatch
> > > ERROR: optee firmware:optee.of: probe failed: Invalid argument
> > >
> > > Switching to a configuration using Rockchip BL31 with the TEE/OPTEE o=
ptions
> > > currently enabled results in a constant restart of DDR init code, mea=
ning the
> > > code never reaches BL31...
> > >
> > > What else can I watch?
> > >
> > > Thanks!
> > >
> > >
> > > =D1=87=D1=82, 13 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:4=
2, Sascha Hauer <s.hauer@pengutronix.de>:
> > > >
> > > > On 2026-08-12 17:44, Alexander Shiyan wrote:
> > > > > Hello Sascha.
> > > > >
> > > > > After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=3Dy the followin=
g build
> > > > > errors occur:
> > > > >
> > > > > CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
> > > > > In file included from include/linux/array_size.h:6,
> > > > > from include/linux/kernel.h:6,
> > > > > from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
> > > > > from include/mach/rockchip/bootrom.h:9,
> > > > > from arch/arm/mach-rockchip/bootrom.c:2:
> > > > > include/linux/build_bug.h:100:41: error: static assertion failed:
> > > > > "sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
> > > >
> > > > Set CONFIG_SCRATCH_SIZE=3D0x100000
> > > >
> > > > Seems we have to look into it to get a sane default.
> > > >
> > > > Sascha
> > > >
> > > > --
> > > > Pengutronix e.K.                           |                       =
      |
> > > > Steuerwalder Str. 21                       | http://www.pengutronix=
.de/  |
> > > > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917=
-0    |
> > > > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917=
-5555 |
> > > >
> > > >
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


