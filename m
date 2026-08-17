Delivery-date: Mon, 17 Aug 2026 14:43:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wvwgn-0048DX-0h
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 14:43:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4B777201514
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 14:43:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=nukFypxO;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b="XBYJAX/t";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/NO31sLt+w3lRyzg2qZNUb/jiCWF4Sr5dape3H/W/U=; b=nukFypxOI3Hxzh
	kwBmG6o6JFtY79tYKyuU8hol+UxAwp8nViyF9OiSDZCMOd4R4RQ2iLDd+VuUdLXSlgcDyQE5fviN9
	PRQchACFBsybAjp0nkDOtX98cBC8WoYFuKc/jJGzFMfLQcvt5PFXYVkyU8rCwoQCINC68gGTsu/BO
	lVlN+q3+5sDqmMs8XnC5K9hctZjpYwv36T0Ga/DQWeCZX6bZ6sDkp7yTKS1HtFYJbSkh4wLNyx20A
	YOpjF0udyj/evQmFsdXsfrKf2bxHmtFm24UbG10OBAc3GQzt3UKsihiQuv3vreNCoBeSNdu7suy6W
	4FJOSdklBZBUCXqIF6IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwLc-000000067JD-1lSA;
	Mon, 17 Aug 2026 12:21:48 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvwLY-000000067In-2HdY
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 12:21:46 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2cace91f112so37341335ad.0
        for <barebox@lists.infradead.org>; Mon, 17 Aug 2026 05:21:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786969303; cv=none;
        d=google.com; s=arc-20260327;
        b=AYlwWfUZykgcO8/LiAql4g7fjk3+3lxZJZkd3ODS3Mk3GBHJqOYl61qDHfUm6M6nnf
         DTnf8tss4+HiMY/xnCnYg/bjEPTaO6srYCREmmmsbTLgbN3hPkDbf+Zq8gJOXvWM3GfI
         yaLcor8Tyjw11Ry05pxmcTtGHau6izkrTmO1c3gHOlbMLZIr/qPrpAwPGD7WCo2JcEJ6
         p+ZuC3mh/ZEgKkLk/gjonmifIR4m0R+rVTe5fK4vUWu/0HSQ6W5t8KxDVZ6ZYFq2SA/Z
         m5LuzxNg3G7ePNxkRSMk4jiDybfM9ufhAcDy1G4shCUNfo2uCtZmFwZQzHBOdzYHlhIm
         Ga8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=t/NO31sLt+w3lRyzg2qZNUb/jiCWF4Sr5dape3H/W/U=;
        fh=cqh3LYtq+Hg+GSU7d5w53Aq2i2vUbBDj/rOK+MeI0sc=;
        b=OR3/bqRjv4AR7svIISDslwX5FDMnkpescctJupIlvAH6522vM1XQGgHcIcQSrFZJWW
         eLJUxtszlovwEPtmobjLRGqXXSQyOTebse6TE2EGG2Xltlmn2Bh+DcN+gYmdV1zGgmwn
         kZWE9PF6dRkcunU34aM1GcUHsgkebdqHJeQMoi0bJ9CaVVaKVhCQavZ1hVjQzGV5cWHw
         7oh2R5ytLYIiRNSPTZl0ULVblpZ17oM4WqNzBV6JgZT75EsbLTsXGpFWVmWhiEOS7BlQ
         gCfpUrpCLdVe3TBkVXoG3meA1zb73aO+SHQwjNJQ888ph237aXknf+uTEDQ8vyndYeOZ
         qOHg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786969303; x=1787574103; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=t/NO31sLt+w3lRyzg2qZNUb/jiCWF4Sr5dape3H/W/U=;
        b=XBYJAX/tRNmAsRZJ/iNrWvtJTAkez/X7HZ7ZiQ6ghihLYnR7yOhJHi4qHPTHyNXRpi
         regEwT+XlVcLABLC8iDDWHfJzAQVWX32Yn8v6Fr9JIArEzqT/nPFAWAuxNspcCZq1tjb
         XNkEgOukVdJnaC0PsUczDbJs/3KXdB6tk0CWEFoicbJQoEXwUk8M/yYsz7vzIcQq4mr5
         JAQF+HqhPldoJB4N85xS0F8ErGR+SXHIHsoJ88NV02jeZz7ymocJjkeKy314lRWmsml+
         5SJeHqJgI2h+xWbkcBfiSUQ7A+1nGccjlqjEGDMeYoUv13fGvBdQ9eXDEiZ+c3Z/HIqf
         elOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786969303; x=1787574103;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t/NO31sLt+w3lRyzg2qZNUb/jiCWF4Sr5dape3H/W/U=;
        b=nRLBdf/4gMXZ9hkET2Av6TKS0RwsNyat6yUT7aB9kuy9cNyJwv1frmD0LUz2xL0zq8
         5kkVHzHxgm8OTtB30HNubk8xEfYq6gVpPgpJd0AXKT6UkTXBRpqQH53rJe2InUkA4if4
         vRinBAGQUEn3BT5YOpCDL42xhbSwLNCu8ksQaLaZHkYCqNgHwZJ0O0cL70mZ8IruyDUE
         jvjJQmcfXhof0OEMZ1GQICaicHHMe1/NeZGuxJDc0kUXE87xCGN3ETK9+R1BpjA7Rqst
         5KG/A5MWdWFYBz6y/kLN9OORuQ1pPEb3g8CwBiy/432iJqq3XEAqeqYku/6AgDSyfRPQ
         XFRg==
X-Forwarded-Encrypted: i=1; AHgh+RrbFO093c+Q7D5NBLPqsipC66l7rpL1Qsd3J/Ck5GNHsCtDSkCDfb4exz1b3ml9mahKozaNe9Rw@lists.infradead.org
X-Gm-Message-State: AOJu0Ywe9Yv+rbQcStOw3bppWqIouVIctROo0STdIgEodIukGUGcqyzP
	SdU1G2pDWb88n/sFME418uGEDDg+MeWipFX/2OCC3VrVmvH/SISyfYF7HUbaN/UG9QFspikZIWL
	4w5lTGPLA2UmyIHMyweDTypvjPCApV5Latib8
X-Gm-Gg: AR+sD12aH2hgDgvIvaO6pH4kFoYoyZ/uRK/Y5OEMIl+HaCJ/Q2L+5eqOmO27qi/96/H
	vBqFUYat+35odTXtNNijeWnWccEKSJoqKkd2bEKI53ty0q2Hd1ENuXZptpGjFajt2Eg8npGuU3w
	PBe353w00dWfw0fXpnLhHRdEdjn+U1C5w3qhivoezp8aX76PLOyw4MNv+Rwqo3jsyw3y5RKjXTK
	oPd+WvfxMH6gGsAU5qjhUo76MS6P5VURUmiL7Sp0byN+0vkyhrBQZKD7HHe8SZu088wepBSDJz2
	X2zu1UPPQXXNMAC8egb2ohAlNKzu5wy+TCAQ+potIsi3Vg==
X-Received: by 2002:a05:6a21:1391:b0:3c3:7e9c:e292 with SMTP id
 adf61e73a8af0-3cc7200c62dmr27320610637.25.1786969303101; Mon, 17 Aug 2026
 05:21:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRLYGdbNX_uK2bqHAOSqPDydYPi25fULCVTXop7VB227w@mail.gmail.com>
 <6a82a488.478ea94c.10bcfe.7909SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP1tNvR34q93DFDreTvvvYPLz0=7=U1_P9w65a0+Xug4OjcA8g@mail.gmail.com> <19d25c21-a937-4e63-abd5-67afafc6abd9@pengutronix.de>
In-Reply-To: <19d25c21-a937-4e63-abd5-67afafc6abd9@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 17 Aug 2026 15:21:31 +0300
X-Gm-Features: AcwNN1XnLTl6Ph23bpaMrDeXi9hcmcFj5L4shwVhgE6uCE_-vb-u8ROxrDKVz6Y
Message-ID: <CAP1tNvQfejB6Hwi2F5rWomcs_VU-4n4Oand5HYJ74=mVVK01aQ@mail.gmail.com>
Subject: Re: RK3588 optee question
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_052144_607725_7FD96785 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello. Yes, kernel loading stops immediately after loading
    the scmi driver. I think that everything is described correctly, because
   the image with a working configuration (Rockchip BL31) and a non-working one
    (TF-A) differ only in the binary itself. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:630 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: q3j73o98d5jj3cjnsrn1on6nqkijodrq
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::630:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 4B777201514

Hello.

Yes, kernel loading stops immediately after loading the scmi driver.

I think that everything is described correctly, because the image with a wo=
rking
configuration (Rockchip BL31) and a non-working one (TF-A) differ only
in the binary itself.

Here is a RK3588 output, and for the RK3568 the output is quite similar:
[root@diasom-evb ~]# dmesg | grep tee
[    0.000000] OF: reserved mem:
0x0000000030000000..0x0000000031bfffff (28672 KiB) nomap non-reusable
optee_core
[    0.000000] OF: reserved mem:
0x0000000031c00000..0x0000000031ffffff (4096 KiB) map non-reusable
optee_shm

Thanks!

=D0=BF=D0=BD, 17 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 10:30, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> On 8/17/26 8:14 AM, Alexander Shiyan wrote:
> > Hello.
> >
> > Yes, everything works now.
> >
> > The only thing that's unclear is that kernel loading is interrupted
> > when using the open source TF-A
> > for the RK3568. The RK3588 doesn't have this problem.
> > However, this is most likely a problem with the TF-A implementation,
> > not the barebox.
>
> interrupted as in it hangs? Did you check if your reserved memory
> entries are correctly populated?
>
> Cheers,
> Ahmad
>
> >
> > Thanks!
> >
> > =D0=BF=D0=BD, 17 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:04,=
 Sascha Hauer <s.hauer@pengutronix.de>:
> >>
> >> On 2026-08-14 11:42, Alexander Shiyan wrote:
> >>> Update:
> >>>
> >>> Issue with RK3588 resolved by adding SPD=3Dopteed to the TF-A build c=
ommand line
> >>
> >> So is everything resolved now?
> >>
> >> Sascha
> >>
> >>>
> >>> =D0=BF=D1=82, 14 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:4=
9, Alexander Shiyan <eagle.alexander923@gmail.com>:
> >>>>
> >>>> Hello, Sascha.
> >>>>
> >>>> With CONFIG_SCRATCH_SIZE=3D0x100000 compiles fine.
> >>>>
> >>>> Now about the current errors, one build is used for two images for
> >>>> RK3568 and RK3588.
> >>>>
> >>>> RK3568, Rockchip BL31, tee.bin from OPTEE_OS:
> >>>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware v=
ersion 0x0
> >>>> optee: smc_abi: probing for conduit method.
> >>>> optee: smc_abi: revision 4.10 (5c827bf3bc358e9a)
> >>>> psci psci.of: detected version 1.1
> >>>>
> >>>> RK3588, open source TF-A, tee.bin from OPTEE_OS:
> >>>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware v=
ersion 0x0
> >>>> optee: smc_abi: probing for conduit method.
> >>>> WARNING: optee: smc_abi: api uid mismatch
> >>>> ERROR: optee firmware:optee.of: probe failed: Invalid argument
> >>>>
> >>>> Switching to a configuration using Rockchip BL31 with the TEE/OPTEE =
options
> >>>> currently enabled results in a constant restart of DDR init code, me=
aning the
> >>>> code never reaches BL31...
> >>>>
> >>>> What else can I watch?
> >>>>
> >>>> Thanks!
> >>>>
> >>>>
> >>>> =D1=87=D1=82, 13 =D0=B0=D0=B2=D0=B3. 2026=E2=80=AF=D0=B3. =D0=B2 09:=
42, Sascha Hauer <s.hauer@pengutronix.de>:
> >>>>>
> >>>>> On 2026-08-12 17:44, Alexander Shiyan wrote:
> >>>>>> Hello Sascha.
> >>>>>>
> >>>>>> After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=3Dy the following=
 build
> >>>>>> errors occur:
> >>>>>>
> >>>>>> CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
> >>>>>> In file included from include/linux/array_size.h:6,
> >>>>>> from include/linux/kernel.h:6,
> >>>>>> from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
> >>>>>> from include/mach/rockchip/bootrom.h:9,
> >>>>>> from arch/arm/mach-rockchip/bootrom.c:2:
> >>>>>> include/linux/build_bug.h:100:41: error: static assertion failed:
> >>>>>> "sizeof(structrockchip_scratch_space) <=3D CONFIG_SCRATCH_SIZE"
> >>>>>
> >>>>> Set CONFIG_SCRATCH_SIZE=3D0x100000
> >>>>>
> >>>>> Seems we have to look into it to get a sane default.
> >>>>>
> >>>>> Sascha
> >>>>>
> >>>>> --
> >>>>> Pengutronix e.K.                           |                       =
      |
> >>>>> Steuerwalder Str. 21                       | http://www.pengutronix=
.de/  |
> >>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917=
-0    |
> >>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917=
-5555 |
> >>>>>
> >>>>>
> >>
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >>
> >
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


