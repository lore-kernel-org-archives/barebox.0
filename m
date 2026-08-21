Delivery-date: Fri, 21 Aug 2026 14:27:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxOLV-005ZxY-2e
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 14:27:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 13ED420245D
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 14:27:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VNyiETL9;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NiNdgiMZ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=je0PzQlooPBDhQ8mbzRGP7B6aRdro6/ZhFoVdEevbdA=; b=VNyiETL9uS0oKaiuHj2HhKRGgT
	BnEeaPf+UmGMLm1VifBQqSH94PN0NbbGCnMJg/S+5GRGGIrpmfC8TdZa6ZWQaS8Fn0Ud0WDfWPtse
	OQuAs5GfFR7QpIDOsjAYM3WC5de/gyCXA5BDE/BrhF7+G2MFek95EUtfw//AH4BitmsgtnmXS9XXj
	sZ3ah3rUlX1+7v/wNSUgg1xW9jNC13oxXtmYYU+3mCxJPVAGoj94MhINmrQBPnUOcpxbvWyn/F5ef
	XXkmq5hQjEreMneVDjelcpQq0xv8bLcKJ91nkeRpPlltppzoOvJApCSDuXQswcLYDsMNigAbIW7hT
	vYNGyrcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxOKD-0000000DIQc-4463;
	Fri, 21 Aug 2026 12:26:21 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxOKA-0000000DIQG-2Xcl
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 12:26:20 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-c169ae1cb26so416524466b.1
        for <barebox@lists.infradead.org>; Fri, 21 Aug 2026 05:26:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787315177; cv=none;
        d=google.com; s=arc-20260327;
        b=mu6CyTgfjVE3cxBbJu4hMwyd7XuIwvmr5kwl1DbKnKJ3InuEMHXBpSSzweyvI6oc0z
         IRyhvwk3SZhPu0ktWkq/xPtYoQx7siDZKTUwjYx4pvMQC6KIUXHkhR8j1pac4Qz5j7kJ
         d6n/UG9PfqUms5/4UqZY8Yco4Q5NYJpVu/XBFP91kwFqSez8cZf5+5S1cFTQMs91dQow
         HeVoyg8bKEq8R4rU5++3bTSg1LVdFoF1RuGjBFyS9RRM1w8QM+uqarsKrklaZfShxYL9
         hL8378ncu0XEt5TTQmT+YPFVv8AszYNzL7xYOp1teiD4eMMbIXtcnlkwjezksGwgT/s/
         rTXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=je0PzQlooPBDhQ8mbzRGP7B6aRdro6/ZhFoVdEevbdA=;
        fh=FJPqWWw+xQJ6cwVkD4yNXB5T4SU0Brnzwp0T5z5Kexk=;
        b=LOuemxxLJhyLbeAIQ+Hkr/G6DUqp6I33eX/vQATmqsmYbOvwZVAILC+arRMMpJ/ap4
         iNMSgJZ3Wuo3k8m5kunvBihlTx6djhG1GLd6foxk5VnUvV/FUYsv6bS9n87XNtzpbVgA
         K27YqzqOoQb+BpfMwUGL1e0gtd/0rkH8rE1GlBucTmiSP7zYMSGz8CZICs3e3SDcBx0+
         Vlk2+1v8UXPAoMMKjGOJfaR/iooeXWLl/5X8l1f5ZGbzqUybEJ0+wpLlIISy/d72vE4Y
         4vgf9BIs4YIUK52d5SDOttS29YHk2+8ltFSV3aXsrD/Ebd5zByd08NtFPzJ7B7cSkIif
         PM+g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787315177; x=1787919977; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=je0PzQlooPBDhQ8mbzRGP7B6aRdro6/ZhFoVdEevbdA=;
        b=NiNdgiMZScaUOxDj0THGtLlrnw/dBAbDciNFw/p5/mvKrV0Blct8ykBfn85djrhTnp
         Bm06gmHuPdA6h34QiF2rhfEruBe6YEUUq/4u2T/EVr5uKZSktEg5zVM7QEcRK3JuMMqZ
         DsxrDn83yf2T952U/NL7sWRlxEUAfDJ8ZS7vuaZnx5jjBNq3e8nQ9Ant6Sy97EXB0tL4
         +L9MLCdt2TmhZsCuFtARLENz44okr10P/ywSNV2zTFlhvYUjDT+VJPCp2dvITAPds28B
         3DsbZ1D7Fav9eR6n6JqdTAxt2gSPJtEOEXm3JQ2+MHe6N0bNnZ3jH4YW62Gm9mCnfSMR
         8ZuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787315177; x=1787919977;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=je0PzQlooPBDhQ8mbzRGP7B6aRdro6/ZhFoVdEevbdA=;
        b=HGvcxpC9HpfoPYq4xhHYHr2i8MZgg82BTve7OWV8zCnY9MHILhPT3Wzjkg1v0KwuMU
         cRTf7JtEgB0xbvJRWBiQ3hic1dzDa78g8+aTLo/Q3BGn28mEgEKIsVe89BFOmtMhP1dS
         MS8Q4PFpFY359K9GAV/bCWqZ7MvDNFOtLw+dAxWVTNMlkP3cpLfIyzVja3BKPDaqHZL9
         1dKtHNndxoTJgefvCnKZPFYAvob3RyfXyYiy2LpV+UGJIYBKRJyGeqYLa4rVvIm7kmKc
         ONqmRC/3RlLOXhWAyzFyCUgQqIj3XPtNOuRu0X5pEYg7SMFhTBObx1io/NE6rh2OpMPa
         zurw==
X-Gm-Message-State: AFuF++kRx9fqmJg0aYDzt59qgt0reNwH/O+VLp0mgehzqUmOdhv2QbIe
	4f4IW4EP7zOyP1l8QH7dmk0xtiFrAiZD+YVOasWGBPb5vlTT7VgDa+djtlPLakMct7rGgkqJFjd
	dk9UoYUQpOG3SjY63lk+z8Zfbv4gW6yc=
X-Gm-Gg: AR+sD11tQ2LzP4KfvClqIvLSAuVpWu74f/ZRkkX8AAlnScFXCTIb/pRV6FyqSr2uNyh
	LP2yHFZpxbzyiSBvmYMF+CEbfNJtn5m0PWpt3wPoztmSenNYDOP+ILF0lAfT5HAeYt1pb17MgJl
	QNyXEHjYEez9aXQj/s9XIkGFwjiXqZgprKltvDypso/mSx6dQWoCIb2OmQX18CpFdGWGZzvHREU
	BQZvRgLmiZqa+DARgkTvIl/dxOcZwXXHCTiBwrxzdb1+AJYysX3vW3Io8ao0vhNCWEC4gn568NW
	QFt+/sfosGLDd7XhnFeZd0HB+leQGKKR9EogWVwOBcBRD5w=
X-Received: by 2002:a17:907:c30f:b0:c20:367d:f8b8 with SMTP id
 a640c23a62f3a-c244d4f05efmr1138414966b.4.1787315176310; Fri, 21 Aug 2026
 05:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
 <20260813-rn102-rn104-series-v4-4-f932ac63efa0@gmail.com> <2e8bdbc7-5a4f-4dcf-8703-a0683424d418@pengutronix.de>
In-Reply-To: <2e8bdbc7-5a4f-4dcf-8703-a0683424d418@pengutronix.de>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Fri, 21 Aug 2026 14:26:46 +0200
X-Gm-Features: AcwNN1Xplw8ZUMS-6qZEWW6B6h7DcnpTtaYiJvl2ZH94OAGxyQMJt8aQevQbBuA
Message-ID: <CANRe2WJxX36cST2_rmZu2pD0k-AO5fPMedcJdmyddYo0W4xXmw@mail.gmail.com>
Subject: Re: [PATCH v4 04/14] ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_052618_689517_B15A30E5 
X-CRM114-Status: GOOD (  27.96  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Il giorno ven 21 ago 2026 alle ore 12:38 Sascha Hauer ha scritto:
    > > On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote: > > From: Luca Lauro
    > > > > The name PUTC_LL is used by multiple architec [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:62c listed in]
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
X-Stat-Signature: sneyeycrbz9m5mwphpnwstrpeuueqcyt
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
	FORGED_SENDER(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
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
	FROM_NEQ_ENVFROM(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::62c:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 13ED420245D

Il giorno ven 21 ago 2026 alle ore 12:38 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > From: Luca Lauro <famlauro93l@gmail.com>
> >
> > The name PUTC_LL is used by multiple architectures in barebox for their
> > early low-level UART output helpers. Since these functions differ betwe=
en
> > SoCs and are defined in architecture-specific debug_ll headers, using t=
he
> > same global name can lead to collisions or accidental overrides when
> > including multiple debug_ll headers.
> >
> > To avoid such namespace conflicts and to make the origin of the functio=
n
> > explicit, rename the mvebu-specific PUTC_LL to MVEBU_PUTC_LL.
>
> This patch is wrong. The idea of PUTC_LL is that the implementations are
> all included exclusively. See arch/arm/include/asm/debug_ll.h which
> includes exactly one SoC header file. You shouldn't include
> mach/mvebu/debug_ll.h directly, but instead only indirectly via
> include/debug_ll.h.
>
> Did you see any specific link failures/duplicate definitions that
> motivated you to this patch?

You=E2=80=99re right, the rename was not motivated by link failures, but by=
 the
fact that PUTC_LL wasn=E2=80=99t working on RN102/RN104 at the time. The bo=
ard
was not yet selecting the correct mvebu debug_ll implementation, so the
generic PUTC_LL variant was being used, which resulted in no UART output
during lowlevel init.

Renaming the function and calling it directly from the board code was a
workaround to ensure early UART output while the board support was still
in progress.

Now that RN102/RN104 correctly select the mvebu debug_ll path, the
standard PUTC_LL implementation works as intended, and the workaround is
no longer necessary. I will drop this patch in v5.

>
> Sascha
>
> >
> > Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> > ---
> >  include/mach/mvebu/debug_ll.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/include/mach/mvebu/debug_ll.h b/include/mach/mvebu/debug_l=
l.h
> > index cf08776d4f..cd81b27e39 100644
> > --- a/include/mach/mvebu/debug_ll.h
> > +++ b/include/mach/mvebu/debug_ll.h
> > @@ -15,7 +15,7 @@
> >
> >  #define EARLY_UART   UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
> >
> > -static inline void PUTC_LL(char c)
> > +static inline void MVEBU_PUTC_LL(char c)
> >  {
> >       /* Wait until there is space in the FIFO */
> >       while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))
> >
> > --
> > 2.47.3
> >
> >
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


