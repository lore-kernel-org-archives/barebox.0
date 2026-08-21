Delivery-date: Fri, 21 Aug 2026 13:58:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxNtL-005ZNk-07
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 13:58:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1F606201ACD
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 13:58:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sdsdkcoi;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Vf4MIEfb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJz4BnE6X7MZP/hwHpB+DUWXoj5DzyTIEc78BcQmMCg=; b=sdsdkcoiQ3ETdPFYSuhlPlQmLN
	qMQ5/jqdTmmnkGCmv8Pp/1PSVLd2vy9GCdTe8+G2/peQ8yd76/H4v6p/g2YFeHtHF7u9Lmt3U4h9l
	3ZFtd3AkrVjIjLiZGzBVZSTzKtSUUfIMftNYU/G256haLxKw8w/WmsTc5kaAOVWhBZx7R3R1mamEp
	LPN8DxbWNnRg5a6JHyNy8nX1gUlLf4abmaSPyEgLMTc2upyj141Mxlsxo67EyKZX5k2G3Ei8SHE5O
	iJUHBla0qv1UcCL+NM4KM6dWm9xL/0C/ZXo4E7YzK0PiIxADETmHOBc1b+PbJHEjpkGYajTIcmOCq
	vXYnP6PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNrz-0000000DFXf-0Hws;
	Fri, 21 Aug 2026 11:57:11 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxNrw-0000000DFWt-2SaC
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 11:57:10 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6a17cb94b26so1947501a12.3
        for <barebox@lists.infradead.org>; Fri, 21 Aug 2026 04:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787313426; cv=none;
        d=google.com; s=arc-20260327;
        b=q2hEGbUho3/TmyCOjA+qM3pGq7HRf2h1BudQRVko6eaNGniL2cVunBMfJIEa/iWyBS
         cJJ7nEurEG6eEvwwGo7kRoc7Dm4zT3Tt+sknYXE7vZ95xq7xAvcU4TqIXV+LirqkE5PP
         YlNdpiJhOpes7DKeTfmTJieHwGEABZfBxDxiZNT+tO9PfZGw8w9GbOFcoNpaHHpxWeux
         WABdTPYaRi9vyQN+eSIFwWNINdrO57Jt7WIQi4XO0s1EEe9bPWIgFKnb2D4vicyd7LGp
         0PuDJlVYOG6XvZ+CWLiXYmfivEUgS0Wr5axTZAAnhI1ckpKV+FMgN6A2raC6HauYrQ3y
         8/Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TJz4BnE6X7MZP/hwHpB+DUWXoj5DzyTIEc78BcQmMCg=;
        fh=4jgKTJHsMb/clsuFT7ELSyfTxhs84cK3t3iM81hpMnY=;
        b=DPp33Ga9TI7inpqgqAGaKCjoWRT1LjOoaZ/QvzDBY1efuDiUoT77WvJXtfCeUqetfr
         66TV6JlfpqK/d1y1PnE4+QmF1u/JSb0lJXKjMsFlB/F1AvVmf+2RvCTatM7PtjA0i9L1
         zlFQBnVVVCD+qfR4ivJznNcg4S4VoWILliLiTGaRIuIERIXphuohr5mXLdrX2u5atcJA
         nQRBu7CCtjWXLznAH3pYTLo3H3H3UlxS5UhdrImokyujRIpsANKy9PvuKIvosPnf5Hkm
         vOcWp1t/rXWI3Xm3gvg3x7ihoz3G4bTfM4XmBM3T3t7OUsYwt/Y4yU/Tn/S2n2N5gW3V
         2I9Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787313426; x=1787918226; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=TJz4BnE6X7MZP/hwHpB+DUWXoj5DzyTIEc78BcQmMCg=;
        b=Vf4MIEfb8K4aSN6IaqdR87Ma1TCLqbvQ7TqXk1byBM6OHi8NxpBej/Z3vl2JnaCo7U
         Q629GSe+fNQ5OH+7iRNCez+lPX+rwzjCgqG1ZT+H6sgelIN68lbyIfQTs3iz+QhWdu6B
         cxDmSvz+h9bbPXlBi7HOuC8UqLlKJJtP9HLnG6J06NHAzpje2DV4H39OsAyyFinqee8/
         NFRhG9BHXqU88qDxEjD9rrlokX6Rs09sTSK0dxh0hos6BARPJuYMogHcTYanQ/dv8RP7
         ZpeNP0h04DxVUZHAGHDeapMiXxnWFNWwVTxoIy+bwNuSV/sibw4d254TGOnnVwagBJus
         BFRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787313426; x=1787918226;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TJz4BnE6X7MZP/hwHpB+DUWXoj5DzyTIEc78BcQmMCg=;
        b=VmLLcXYpqBqw1nbTeyUdyd6ZMh4sXc5QfdkjjuX3DvpvjNFLxoEsLnXWvd2PA39Dnd
         zfNJBEcfENsmGZyxJUPPcVLzF388dG4oQ3QCtj8NSCJFRV3HiO/qbjMpvSv7iSbzuCXA
         Pma4wPw4uNln4We/wXWo5onqZrM2abXoW9jlPxO2x28+PjJIAh/cPp5MmV2l6H3XV6oD
         pRIatlQeuSkj4O0bbTkQOgstDOsU8abW4YxW9pAYNpLodXkQPNa/b2YPuAmTaxkgjwJo
         vvdZFeTdHg261WZ8M3erIZd/np4diFbNOOB0DbaMkhSbuMoxeIBH/3YdSaqF8k4Bpdlw
         QA9Q==
X-Forwarded-Encrypted: i=1; AHgh+Rq/HsxBZqsn2zV5L1bogpKOzPHVpLiX+y0AfSCGvYaPK8NMbNWPe+yZzwk3pvNGQCE9PVJf3n/p@lists.infradead.org
X-Gm-Message-State: AFuF++n8LRG6zG3eWTUNu8M9KAjChheidjPwJrNb9aKvjjcggyTXI7/z
	atAiJD5XsD9/lX3b/qhwN4Oo+abkCY5RqktRzC9IoHbUPFLTDQNBTlEZfTy3r8rARJFDgnAcHvU
	upwgha07mBeLqy+1v5Bgu2E1xt9v/Jhc=
X-Gm-Gg: AR+sD10PMFV/h8CviAoEmi8ITQTDALo40k1Me1IlUmqRlthzzyt7TlMda75wjblkQ5j
	c41okwPsem2/k3oPmCtqaItcfh//881jcx2OuVmFUpwzudEEQcfId8T+lqqohqPfGiwRyOUfdZ2
	h9o98HQ4FoyLvhgWFYXub+e4YmtNJ4Vt6f6cf4NkWqXZbRZeWqkR2Qle3zTN9M1q3tZEMgHcUWI
	tJJojkiqW0l+R1fCeCoYMHO85RRSa9K/Rhr+72NmogwLG5jgVmQgxxGW5WYp5ADyNWIbh0tCKvP
	kopNG75vGHkvNbXkt4plSFJCdfdXnedzfW7GjG6EhQ==
X-Received: by 2002:a05:6402:2b91:b0:6a1:fd13:48a2 with SMTP id
 4fb4d7f45d1cf-6a42f238138mr6685970a12.15.1787313426220; Fri, 21 Aug 2026
 04:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <aoQYLq5MTUbqzQCg@monoceros> <6a85585d.5770c427.2e0747.7f3dSMTPIN_ADDED_MISSING@mx.google.com>
 <CANRe2WJY2P7u03Luwmt1_uk+wU8Ct-v=8nCShTfMJedYXQE=eQ@mail.gmail.com> <7edf91af-0fa0-4f9d-945f-b50e2fa62948@pengutronix.de>
In-Reply-To: <7edf91af-0fa0-4f9d-945f-b50e2fa62948@pengutronix.de>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Fri, 21 Aug 2026 13:57:36 +0200
X-Gm-Features: AcwNN1UgB7Ttv4jAS8R_1WI9geqtFLaBtintp6HCodRntVZ-CyyX4wK9hf_1t3Q
Message-ID: <CANRe2W+WARQ7Srn-70=zJ0oC3JXhD8vE1aAZJWnw74+g8KtALQ@mail.gmail.com>
Subject: Re: [PATCH v4 01/14] ARM: mvebu: add Netgear RN102 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	"open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_045708_701150_98DCD948 
X-CRM114-Status: GOOD (  56.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Il giorno ven 21 ago 2026 alle ore 12:07 Sascha Hauer ha scritto:
    > > Hi Luca, > > On 2026-08-20 19:59, Luca Lauro wrote: > > Il giorno mer
    19 ago 2026 alle ore 09:16 Sascha Hauer > > ha scritto: [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:530 listed in]
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
X-Stat-Signature: x5nsdj7bgdmkieusw4g7qm1ozo7uqypx
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
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::530:received];
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
X-Rspamd-Queue-Id: 1F606201ACD

Il giorno ven 21 ago 2026 alle ore 12:07 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> Hi Luca,
>
> On 2026-08-20 19:59, Luca Lauro wrote:
> > Il giorno mer 19 ago 2026 alle ore 09:16 Sascha Hauer
> > <s.hauer@pengutronix.de> ha scritto:
> > >
> > > Hi Uwe,
> > >
> > > On 2026-08-18 10:44, Uwe Kleine-K=C3=B6nig wrote:
> > > > >
> > > > > The only difference I can spot here between this function and the
> > > > > existing variant in arch/arm/mach-mvebu/common.c is:
> > > > >
> > > > > #define  DDR_SIZE_MASK                       0xff000000
> > > > >
> > > > > whereas the common.c variant uses:
> > > > >
> > > > > #define ARMADA_370_XP_DDR_SIZE_MASK     0xffff0000
> > > >
> > > > Apart from the different value, the latter name is the better one B=
-)
> > > >
> > > > > The latter goes down to this:
> > > > >
> > > > > > commit 7351b6b5c59c7a280787998006f39a5cd3a2f18b
> > > > > > Author: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> > > > > > Date:   Tue Jun 13 00:37:49 2017 +0200
> > > > > >
> > > > > >     ARM: mvebu: fix size mask for RAM window
> > > > > >
> > > > > >     The size field in the window control register occupies bits=
 31:16. So
> > > > > >     adapt ARMADA_370_XP_DDR_SIZE_MASK accordingly. This fixes d=
etection of
> > > > > >     RAM chips smaller than 32 MiB and so probably doesn't affec=
t any
> > > > > >     supported machine.
> > > > > >
> > > > > >     Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengu=
tronix.de>
> > > > > >     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > > >
> > > > > > diff --git a/arch/arm/mach-mvebu/common.c b/arch/arm/mach-mvebu=
/common.c
> > > > > > index 06bfb72615..fa971da11e 100644
> > > > > > --- a/arch/arm/mach-mvebu/common.c
> > > > > > +++ b/arch/arm/mach-mvebu/common.c
> > > > > > @@ -47,7 +47,7 @@
> > > > > >  #define ARMADA_370_XP_SDRAM_BASE       (IOMEM(MVEBU_REMAP_INT_=
REG_BASE) + 0x20000)
> > > > > >  #define ARMADA_370_XP_DDR_SIZE_CSn(n)  (0x184 + ((n) * 0x8))
> > > > > >  #define ARMADA_370_XP_DDR_SIZE_ENABLED BIT(0)
> > > > > > -#define ARMADA_370_XP_DDR_SIZE_MASK    0xff000000
> > > > > > +#define ARMADA_370_XP_DDR_SIZE_MASK    0xffff0000
> > > > > >
> > > > > >  /*
> > > > > >   * Marvell MVEBU SoC id and revision can be read from any PCIe
> > > > >
> > > > > @Uwe, Where did you get that information from. Could it be that w=
e
> > > > > should just revert this one given that it seems to be untested on=
 your
> > > > > side?
> > > >
> > > > 0xffff0000 is in line with
> > > > https://datasheet.datasheetarchive.com/originals/crawler/marvell.co=
m/002fa441a27967d992f905776d519926.pdf
> > > > (page 630). So I'd expect that 0xffff0000 is correct, but I don't c=
are
> > > > much.
> > >
> > > Page 630 describes the register at offset 0x20000. I think the correc=
t
> > > page to look at is 626 which describes 0x20184 aka ARMADA_370_XP_DDR_=
SIZE_CSn(0).
> > >
> > > That one has the window size in the upper 8 bit. Looks like we should
> > > just revert 7351b6b5c59c. @Luca, does the SDRAM size detection work f=
or
> > > you with that patch reverted?
> >
> > Hi Sascha,
> >
> > I tested with kwboot on my RN102...
> > SDRAM detection:
> > With the generic lowlevel path (armada_370_xp_barebox_entry) the board
> > does not reach the banner at all; independently from
> > ARMADA_370_XP_DDR_SIZE_MASK value. With the previous
> > workaround-based lowlevel code restored, the board boots reliably and
> > reports the correct 512 MiB of DRAM. So at the moment I cannot verify
> > the generic SDRAM detection on RN102 because the board does not boot
> > with that path.
>
> I believe ARMADA_370_XP_DDR_SIZE_MASK 0xff000000 is correct and we
> should revert Uwes patch. This however doesn't seem to be your problem.
>
> Could you experiment with the placing of mvebu_remap_registers()? You
> may call this only once. First of all, when using
> armada_370_xp_barebox_entry(), have you removed the call from
> mvebu_remap_registers() from your board code? Otherwise it won't work.
>
> Then, could you remove the call to mvebu_remap_registers() from
> armada_370_xp_barebox_entry() and do it in your board code instead?
>
> There's something going on and the memory detection itself doesn't seem
> to make the difference.
>

Thanks for the detailed hints. I can confirm that ARMADA_370_XP_DDR_SIZE_MA=
SK
=3D 0xff000000 matches the register layout on RN102/RN104, and I agree that
reverting 7351b6b5c59c is the correct direction.

Regarding the generic lowlevel path: yes, when testing
armada_370_xp_barebox_entry() I removed the mvebu_remap_registers() call
from my board code, so the function was only invoked once.

I will experiment with the placement of mvebu_remap_registers() as you
suggested: first by removing the call inside armada_370_xp_barebox_entry()
and invoking it only from the board code, and then by testing the opposite
placement. As you noted, the SDRAM mask itself does not seem to be the
root cause, so I will focus on the remapping sequence and its timing.

I will report back with results.

> >
> > GPIO / LED blink:
> > Even with deep-probe enabled and with explicit
> > of_device_ensure_probed_by_alias("gpio0"), "gpio1" and "gpio2", the
> > GPIO blink logic cannot access the controller registers:
> >
> >     WARNING: gpio0 regmap not available
> >
> > The mvebu GPIO controller is not a syscon device, so
> > syscon_node_to_regmap() always returns an error. As a result, the blink
> > logic cannot use regmap to access the GPIO registers, and the LEDs are
> > not initialized in time during early disk power-on.
> >
> > The previous implementation used direct MMIO access to the GPIO
> > registers, which worked correctly on RN102/RN104, but was removed durin=
g
> > the cleanup. Without either restoring that path or providing a regmap
> > backend for the mvebu GPIO controller, the LED blink feature cannot
> > function.
> >
> > Let me know which direction you prefer. I can restore the direct MMIO
> > access for the blink logic if that is acceptable.
>
> When I first looked at it I didn't realize that the whole GPIO code in th=
e
> board code was to enable a hardware blinking feature that is not
> available through the GPIO API.
>
> Linux provides an extra PWM driver for this purpose and doing the same
> would be my preferred solution. You might consider this overkill and not
> worth the additional work, so I won't insist on it. My second best
> solution would be some marvell_orion_gpio_blink() function that takes
> the Controller's base address and some other parameters to let the GPIO
> blink. That would allow us to share it between boards.

Thanks for the clarification, that helps a lot.

I agree with your assessment: the hardware blink engine on the mvebu GPIO
controller is not exposed through the standard GPIO API, and the regmap
approach cannot work because the controller is not a syscon device. This
explains why the cleaned-up version cannot access the blink registers
in time during early disk power-on.

Given this, I will follow your preferred (and cleaner) solution and
try to implement a dedicated
PWM driver for the Marvell/Orion GPIO blink engine, based on the
Linux driver.

I will update the series accordingly.

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


