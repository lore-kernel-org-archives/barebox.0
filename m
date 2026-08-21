Delivery-date: Fri, 21 Aug 2026 12:40:03 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wxMfK-005YAU-28
	for lore@lore.pengutronix.de;
	Fri, 21 Aug 2026 12:40:03 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 490B2202290
	for <lore@pengutronix.de>; Fri, 21 Aug 2026 12:40:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OP69j1Xp;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cFdeerGkW2MX5oYpm5kUhznZURrh87+jYWzU8B+JB6U=; b=OP69j1XpMA17fIaWTGX58kslbC
	Z397GMvIOnwR41qgjQOUwYJUQhDdTw4GHOACOaUojDCcO2c7yed0m6JtRooKwc8X2O+lstvIhM8J6
	1eWIMPQiN1elDP831K9xU6giD5nyflBaB6mSIwWK4D4SyTPaVgCNiP0VIkmp5DWednGlks67C3YxJ
	dNCeHOaoggMHFR8oAdQpCj2zlH3DAWoP+Fw+4QBanCX2Ub1WckCoThliIeCPMIYg4cUvkwjPZT5xK
	eN0WRO7qXVyEFHY5yRc0u1B2PKn+6jZuyyi1gwaxRByBY2EFpRxNUIbOc0q2hiAhh5L+cW/AkGFbr
	FwuH0eoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMe4-0000000D6Pu-356L;
	Fri, 21 Aug 2026 10:38:44 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxMe1-0000000D6P6-0AwP
	for barebox@lists.infradead.org;
	Fri, 21 Aug 2026 10:38:43 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 018182016A0;
	Fri, 21 Aug 2026 12:38:38 +0200 (CEST)
Message-ID: <2e8bdbc7-5a4f-4dcf-8703-a0683424d418@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 04/14] ARM: mvebu: rename PUTC_LL to MVEBU_PUTC_LL
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260813-rn102-rn104-series-v4-4-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
 <20260813-rn102-rn104-series-v4-4-f932ac63efa0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 21 Aug 2026 10:38:37 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_033841_229369_E7614149 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > The name PUTC_LL is used by multiple
    architectures in barebox for their > early low-level UART output [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: u1zqc17dpz994rseiacnddboz7x31hdk
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 490B2202290

On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> The name PUTC_LL is used by multiple architectures in barebox for their
> early low-level UART output helpers. Since these functions differ between
> SoCs and are defined in architecture-specific debug_ll headers, using the
> same global name can lead to collisions or accidental overrides when
> including multiple debug_ll headers.
>=20
> To avoid such namespace conflicts and to make the origin of the function
> explicit, rename the mvebu-specific PUTC_LL to MVEBU_PUTC_LL.

This patch is wrong. The idea of PUTC_LL is that the implementations are
all included exclusively. See arch/arm/include/asm/debug_ll.h which
includes exactly one SoC header file. You shouldn't include
mach/mvebu/debug_ll.h directly, but instead only indirectly via
include/debug_ll.h.

Did you see any specific link failures/duplicate definitions that
motivated you to this patch?

Sascha

>
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  include/mach/mvebu/debug_ll.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/include/mach/mvebu/debug_ll.h b/include/mach/mvebu/debug_ll.h
> index cf08776d4f..cd81b27e39 100644
> --- a/include/mach/mvebu/debug_ll.h
> +++ b/include/mach/mvebu/debug_ll.h
> @@ -15,7 +15,7 @@
> =20
>  #define EARLY_UART	UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)
> =20
> -static inline void PUTC_LL(char c)
> +static inline void MVEBU_PUTC_LL(char c)
>  {
>  	/* Wait until there is space in the FIFO */
>  	while (!(readl(EARLY_UART + UART_LSR) & LSR_THRE))
>=20
> --=20
> 2.47.3
>=20
>=20

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



