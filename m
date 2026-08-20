Delivery-date: Thu, 20 Aug 2026 20:01:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wx75S-005Iq3-1q
	for lore@lore.pengutronix.de;
	Thu, 20 Aug 2026 20:01:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id AFE51201D0E
	for <lore@pengutronix.de>; Thu, 20 Aug 2026 20:01:54 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0PIt977h;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=hWEsUpJM;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sEvX8LRYaTci1+Yw2VgOZaWFEHJcPwIIfxKvSRMy2KA=; b=0PIt977hVt2DsK6R+xl1RvMShB
	82Zok0VuRtYJWcBDAsALyhVwFJw+HH13XPCSlDzv6cRE3B+BeQoUEfUe9x+6sQ5cyqyL9C6rDE3Bd
	lBe7tAXWcaLlMs1QbH4qO0JkniYKcLlZXTEerZQx5WSiC+895NY/vZf0esHkDE3n4PuHr7kMkC7F1
	PvylsPYrc/SUgcLRtmpc93zUR1zk18dWbAdSH60GHRUpfZugmiQl3PxVje42Z6/Rptxx7iq2TJ+l4
	hhrupG317yRtHB56WBS+Em9kNa6BlsiXMaS897ijOjW8qeBxo5PxTPvMA4Z2rlNudz9CG58Dld7g+
	9iigSe6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx73q-0000000C0bk-247P;
	Thu, 20 Aug 2026 18:00:18 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx73n-0000000C0bQ-1bYP
	for barebox@lists.infradead.org;
	Thu, 20 Aug 2026 18:00:17 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c2020421077so17861666b.3
        for <barebox@lists.infradead.org>; Thu, 20 Aug 2026 11:00:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787248813; cv=none;
        d=google.com; s=arc-20260327;
        b=haQgJs6ELkUBysH2f0+Ka4doTW3BR2u4ss46YYPaWUL/uOn4JkHFu1UPTTxCZxRV9s
         5fXUsJtfMxwX8MmvJJEhCwea6lO7w4eD04f8qSbJ9s9L8m7gTfmHGJk0g6eus/SuEN0m
         LBOaCtN8XWjvYkqiiY7S4ghW51jYzPfLkk5p6X9XoQrsIzffitBsjrKpQw4Zo7/YcbTg
         D0zD7XFXQ1B9GG4cueNTpoC6gfLZLooyoS5QczP2dVNuGDhHJo9yeblH4lFBJr+XW9pB
         OWvEpxIvmT6bmsreSrj5J1y+fVVdz0otoYFTQkUnBpYOHH+1ISchDDkNRsQrC/pE6CC1
         BCzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sEvX8LRYaTci1+Yw2VgOZaWFEHJcPwIIfxKvSRMy2KA=;
        fh=gj9HfKjP5RuDk46nS9ZpVVPccHbZOMoo4Hptptqcx+E=;
        b=X7bYQpf8nmPiUkZTu0QRzpwy/4iTswrep20sjVxzWvKhQQa++Z31Z4IKJ6dZ48IKQ1
         D3xqnFwWQKS1ylcX+iTu/6Tih5Ad49TUPJvglpE9LotVM0NZ+iRCvlt82XQSP3MbXutN
         Dn9VZOLNZQ/Iv+ejc4Oh7xchGnT5Jwh+QXMuUcpYe1qz9pjBq8rmqDzum5Foc3rJt2o9
         XSMD137+nxZ7jTR816azawgteG7sLkh8t7/qShnWxOtQ3YHI8eDi5L/RdQqJ3xg7jYYJ
         3ooXKiffcE0SwHP145cZSdR++Dj9CvRb9hFMxfMrfvrFqUvL9brNV1OOVab4UED9lMhK
         mgCA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787248813; x=1787853613; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=sEvX8LRYaTci1+Yw2VgOZaWFEHJcPwIIfxKvSRMy2KA=;
        b=hWEsUpJMYrAJiclKc2Pl0LYNZX2KpIIW75wjaTSvFfXKXF8F8xdu4KK0iHMInWSShe
         BClhMHiZpWlAEEKMY6boJcbHSbJgl2JoNJSSLxgbFMfAUPDAvjZQGdb0TmmyocVsFwB2
         gBnsZfFCowkSXb1nIQ4cMfNMje09D36KBq6/FrPk3gjv1l+FBbix4dd3IZxSgyX3/TWs
         xB2/DopKrTc3BeVbesVrlJaGBbi5XCvE8wqoY8izs9fZrM8Iigfb9ZhigoTDsmbSm7gw
         zFNZygxZyS1IMNEmoN8cgpMJ4Kig0UWGhAOHq9aypyphPyTrFwQ8haVB/K8g8tnBIAfm
         wlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787248813; x=1787853613;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sEvX8LRYaTci1+Yw2VgOZaWFEHJcPwIIfxKvSRMy2KA=;
        b=dPp9QaP5E3bzUR7d3MDMh3cId6hTRCSdDLNOl9l9fnPg53FjSIrUiknSBCO+St/y3l
         ZvuTjmFJgLYLUAGGaPaYTQVcShwKm+vZDZgBhETaMhDCfz/Di6fURm0FvY9QJS35om5u
         h+nxAcfoyvtmBeZpLTeFGJmp94iHDCZPtW84ZD/cqGX9HtBtYkSU4t5beX8u3su/YDCU
         vkoxpYhMPSxPFN1BEK/JDWYhV8hlrtZi2T2oEb0UTsHUZcMycrfBPRnUFZW6CP8K8PdG
         qbw4PazEctaNgYjczMX0Voy6Ufq0RS5Acg/OxLnXvrn3YCvlYlsOt3CPu8aOPHDhivO8
         WlIQ==
X-Forwarded-Encrypted: i=1; AHgh+RqFvJxDAo4r8QeHEPtEgLpfLvLdhMOprJgIbfKOE/tZbH/3B5A53RDT1jm0j8soDWci59BWb3up@lists.infradead.org
X-Gm-Message-State: AOJu0YyYxQK3E2sfalx7n5vU1iIcSIE3ipk0loy8leRBl3EKJoNQuTy4
	NlFisQ+TAO0QFGiBcdH/o0ndxeWn6r8EERbnqQNyKsuYoWj00RtcBezQDG0S8aRzDVtdW/6Wvfg
	5q0gA625X1sXrihCbmepkCR46IwFA0qo=
X-Gm-Gg: AR+sD102WsCWiGSyOolh0OwYyagR6wuX101nNy/4UjVy38IjzDjD/DUtWGNVdngS/GB
	0WkZvvttqMo7UuOMKBFjLJVB5AFcczp8qAWDl4kgQGum1yGU/bWTqhNAULvL2GER4mUdshUAlNb
	JebIPyjo0+H2WWYVxWV81sZSPZOFFo9AQIr7zGneh78tO4Kp5ZMFbStMv/jklxX/DrdEq2+xCJi
	VumYWj1U7GISZdCoBsh2wJTgQOYvd0eGDrZShBWe05dZmYV+Revd1dlwPUeRzxU3p6CBec/TcDP
	oyxCOkZAlsKTes+w5X1YB2RiAJG7SFoU8n+tpTYc7A==
X-Received: by 2002:a17:907:6b0d:b0:c24:6505:8f66 with SMTP id
 a640c23a62f3a-c246a693337mr28001866b.13.1787248813317; Thu, 20 Aug 2026
 11:00:13 -0700 (PDT)
MIME-Version: 1.0
References: <aoQYLq5MTUbqzQCg@monoceros> <6a85585d.5770c427.2e0747.7f3dSMTPIN_ADDED_MISSING@mx.google.com>
In-Reply-To: <6a85585d.5770c427.2e0747.7f3dSMTPIN_ADDED_MISSING@mx.google.com>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Thu, 20 Aug 2026 19:59:49 +0200
X-Gm-Features: AcwNN1XGaIaTg8ttwhTzs4RC-q30OyR5-AV6f4BPwCETa6_N13B8Gf_aFwwMWk4
Message-ID: <CANRe2WJY2P7u03Luwmt1_uk+wU8Ct-v=8nCShTfMJedYXQE=eQ@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	"open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_110015_474088_4CE90AC5 
X-CRM114-Status: GOOD (  33.90  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Il giorno mer 19 ago 2026 alle ore 09:16 Sascha Hauer ha scritto:
    > > Hi Uwe, > > On 2026-08-18 10:44, Uwe Kleine-König wrote: > > > > > >
    The only difference I can spot here between this function [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:631 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [famlauro93l(at)gmail.com]
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
X-Stat-Signature: uaworu49imw3untxoyhfhio4rzjjdh3z
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::631:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: AFE51201D0E

Il giorno mer 19 ago 2026 alle ore 09:16 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> Hi Uwe,
>
> On 2026-08-18 10:44, Uwe Kleine-K=C3=B6nig wrote:
> > >
> > > The only difference I can spot here between this function and the
> > > existing variant in arch/arm/mach-mvebu/common.c is:
> > >
> > > #define  DDR_SIZE_MASK                       0xff000000
> > >
> > > whereas the common.c variant uses:
> > >
> > > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> >
> > Apart from the different value, the latter name is the better one B-)
> >
> > > The latter goes down to this:
> > >
> > > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > > >
> > > >     ARM: mvebu: fix size mask for RAM window
> > > >
> > > >     The size field in the window control register occupies bits 31:=
16. So
> > > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes detec=
tion of
> > > >     RAM chips smaller than 32 MiB and so probably doesn't affect an=
y
> > > >     supported machine.
> > > >
> > > >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutron=
ix.de>
> > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > >
> > > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu/com=
mon.c
> > > > index 06bfb72615..fa971da11e 100644
> > > > --- a/arch/arm/mach-mvebu/common.c
> > > > +++ b/arch/arm/mach-mvebu/common.c
> > > > @@ -47,7 +47,7 @@
> > > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_REG_=
BASE) + 0x20000)
> > > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > > >
> > > >  /*
> > > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > >
> > > @Uwe, Where did you get that information from. Could it be that we
> > > should just revert this one given that it seems to be untested on you=
r
> > > side?
> >
> > 0xffff0000 is in line with
> > https://datasheet.datasheetarchive.com/originals/crawler/marvell.com/00=
2fa441a27967d992f905776d519926.pdf
> > (page 630). So I'd expect that 0xffff0000 is correct, but I don't care
> > much.
>
> Page 630 describes the register at offset 0x20000. I think the correct
> page to look at is 626 which describes 0x20184 aka ARMADA_370_XP_DDR_SIZE=
_CSn(0).
>
> That one has the window size in the upper 8 bit. Looks like we should
> just revert 7351b6b5c59c. @Luca, does the SDRAM size detection work for
> you with that patch reverted?

Hi Sascha,

I tested with kwboot on my RN102...
SDRAM detection:
With the generic lowlevel path (armada_370_xp_barebox_entry) the board
does not reach the banner at all; independently from
ARMADA_370_XP_DDR_SIZE_MASK value. With the previous
workaround-based lowlevel code restored, the board boots reliably and
reports the correct 512 MiB of DRAM. So at the moment I cannot verify
the generic SDRAM detection on RN102 because the board does not boot
with that path.

GPIO / LED blink:
Even with deep-probe enabled and with explicit
of_device_ensure_probed_by_alias("gpio0"), "gpio1" and "gpio2", the
GPIO blink logic cannot access the controller registers:

    WARNING: gpio0 regmap not available

The mvebu GPIO controller is not a syscon device, so
syscon_node_to_regmap() always returns an error. As a result, the blink
logic cannot use regmap to access the GPIO registers, and the LEDs are
not initialized in time during early disk power-on.

The previous implementation used direct MMIO access to the GPIO
registers, which worked correctly on RN102/RN104, but was removed during
the cleanup. Without either restoring that path or providing a regmap
backend for the mvebu GPIO controller, the LED blink feature cannot
function.

Let me know which direction you prefer. I can restore the direct MMIO
access for the blink logic if that is acceptable.

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


