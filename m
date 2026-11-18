Delivery-date: Wed, 18 Nov 2026 12:55:42 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTeGL-000krQ-0O
	for lore@lore.pengutronix.de;
	Wed, 18 Nov 2026 12:55:42 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4ABC4205AD3
	for <lore@pengutronix.de>; Wed, 18 Nov 2026 12:55:41 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ShmUXCS+;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=ayfgpJHB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VeoNZy4T;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795002941;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=QcHXerSnB6ncfsUITz6YpJj/u0veJy5vpFSJcTJji3A=;
	b=BmWGlUOjsRczqpK3MZa2Murn4Zz02Ea8c08jwcOIdTLmMAgtK8IGKVDgxDGMlD6JssDxX7
	xQSWmo2Oe1hC4AMgr/cXW+oInulEbUjArnmwgKN0eFLKcWWIqoTNbrVW/u5v3nMW3VbF3R
	CzTIFdsDgROKl0jew6YuTlqh7a+dCbNswapc4k0ibdhvy5VwdqfP8lW7OC+JbaiutkL5ri
	ueL34PY0Xpp/VTxsb1ZtRdLO8pHnbloB22Nuf6p74f8SfJ1Ym7l1G4hwMy01Vj+UGm1hdy
	tg8mUmnOUMoYMQ4IqOR2YmG0koG2EVr9XeZF1/WvrUwkOeKQ1bYvCHwZ9afKjw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795002941; a=rsa-sha256;
	cv=pass;
	b=cZfNLPUNvL1BMSSyXh5FglpFzIzNkp9RK37XkUGhURvsDQ7sZ5QQLBJtVV0unUmOutfvgT
	04bU612jUcJxGn1uh+zSVdBYt0mmDD0AcQPbyA5PNFBdK/dV1AMebHj019A/p6AO41cF3Q
	FDvQT1z6fVzNgnadOhFdn4h4JIhAq1pWM3DL4zlmkK9L80qp11Kye9Qiissk4zL4qifQdQ
	T2SxY+xqQm+CevitN8AGvNpuTQtN/UawBfwV/YRiuS4uZV282iaMrQK9b4pcBw6BX3mk6o
	LAnZef1mLGmZFEP7/UpumYe1yU8bypsn0TgIwJL61lyQCywiKlEe5XXS0R/kIg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ShmUXCS+;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=ayfgpJHB;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=VeoNZy4T;
	arc=pass ("pengutronix.de:s=20260414:i=1");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=QcHXerSnB6ncfsUITz6YpJj/u0veJy5vpFSJcTJji3A=; b=ShmUXCS+Ai2QoYJ0oTsai5/29R
	cGD0n7Ma4RiQABk4yTrabmkYbAincFfvyE9/uUdoRMixOZaRtGI93N/RGCPUTSgvWrExYuvBwYSGo
	GNWUg9FWPmH46v/wJA/v6SUE3lWlVZqZBNFU+XijlK5noyWoJLEkOvyLk2vclxhD3mfXVO2diOVW3
	3mJXA58eceOz8RQlHYdLWauaOwq6XTc23H5Ql2IDmmEWrK9Nb8gvJuxPU1UcyikZhNDWhfnMVAnco
	+NOYpNE2YiDSPeagdLl1zRHbjL6GBXmHyMctAxhjPRiL1j4VAfwc3M2huT2/gn3PBb5R69ydSDZoc
	enzpudoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTd3d-00000008aRh-1tHT;
	Wed, 18 Nov 2026 10:38:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTd3b-00000008aR0-0WMl
	for barebox@bombadil.infradead.org;
	Wed, 18 Nov 2026 10:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=QcHXerSnB6ncfsUITz6YpJj/u0veJy5vpFSJcTJji3A=; b=ayfgpJHBolJGQkq1Ejt38VVe8s
	hzX7VC8Vdph5o4c0fL0p+O/GOVrwS5KvOjnAt78m+arHIIe7D0fqOVNrcKI8usMUyoU+QR74SD+Vd
	h6rI4lM6hccVaudsgUA3o3KtLAT2rf27mLkqhe2Yp46FpxOwWJ7cTilG+hwkJTAE8nD94N5rHDrpW
	MOodinvapZztlAxep+XjNaJ13VfSDLnGX0BI4U+msvzRr+My6iAoQM0PCv5kh0VL+JoretRJoWr5c
	42V6JRDVpSYWSVflQrhytOTVkGbCTsf8rp2uQ8zZwdg2ENZFA2rQ0SkFvh7DVHuSZ0YoLKja4DORr
	9CUELzpQ==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTd3Y-0000000Fvgn-0RLQ
	for barebox@lists.infradead.org;
	Wed, 18 Nov 2026 10:38:25 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 557D5201CD2;
	Wed, 18 Nov 2026 11:38:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794998301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QcHXerSnB6ncfsUITz6YpJj/u0veJy5vpFSJcTJji3A=;
	b=VeoNZy4TNgO+z7MSTwANacpWPpI1LB6ZU1izSarIM/x1so0cS/HyqaxQssvPxonSjqnMUU
	4Xmg3D06+YcQjOMzbIlekgG7KkVCiU82zUf0ZmMf8YcTTZO6lf8Df6fOZ9++qnEDyK+3fX
	8jKJIuqZq6UOm3Jt33+fP8jrLvD84EsZy9XYMoWcFz+hKDmc/3etr8++uuqOEVU6GQVh9i
	VIlEXXPp5WDNDDAPXBg8mLUHQKFYpikQGg3vEeUWOrGXZJ/CUa/ol1yjhig3vr7bkEBtMY
	5wgtkMbGWBA08zhO6nTt8ArOlLHmmGPkmQDH50uS2jopieo7G5ljZkXDxw2ebg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794998301;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QcHXerSnB6ncfsUITz6YpJj/u0veJy5vpFSJcTJji3A=;
	b=f4X61yeXrHWwl8rNTh5KOkc4dXVeWJkEPN+coLK5pM04qwYH5dGv5ACgC5WrT5HrNphj3w
	OApkwbYsWHAVdSgsWhRglHZlKhB3rez4DZNXngDQXrMS+WnewVTuUdGdRN+9SBU/4SH3Eo
	CRAUuhYpjglIknOpDgQw+VSww6p6tsTOwSCaa/yoDUKXJzJebS5aNkoqmv05c2fVIIMaup
	o+FkAiDiqBCEq0EfJ7Wc2/DGAgSZRnbdO7bCD3+vOx5hJrjdIHJG7rVM/HqqDmRGMqLAYw
	+xCVknnQmKhe4a1bpi6trOH65U/bimhKscNiW1l4r2/6d9b7apz8YCklC6Vf/g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794998301; a=rsa-sha256;
	cv=none;
	b=BLxBAU/H/OYHygpIIUOEiwFKsXeEhWXFwfMFoB+9zeTFxHIJHdQCjdNzeJUaGb2bzto0oq
	A1N1cuuvccHNImawBVVMS8QwTo9R4eGsSP1aRL7Yo8TvG36Hefp7LPOR0odUlMQokzSyux
	kzpyyzl5noJETWURpkqEmePb5d9g7KudiAIMBPGRtNqyXgj6jklDZZxnDI1vS78StZHqDc
	vX7cLWQAQz9+VUGzOCfi2MFwIEVudHsv351jKDk3ym0yha+WqDO5sZ+WCpSG46vE5l4B1F
	5bsg/NWZWRaiubULetVGtUuqRCP3rRdUqdFVOL++M7+R0++H4gTKeAM3QElVYQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1056)
	id 368941BF88A; Wed, 18 Nov 2026 11:38:21 +0100 (CET)
Date: Wed, 18 Nov 2026 11:38:21 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Subject: Re: [PATCH 2/2] arm: socfpga: agilex5: add SSBL verification
Message-ID: <av2AHZSRTa-gfZF3@pengutronix.de>
References: <20261021-socfpga-agilex5-verify-ssbl-v1-0-0463e94669ab@pengutronix.de>
 <20261021-socfpga-agilex5-verify-ssbl-v1-2-0463e94669ab@pengutronix.de>
 <15cbf71b-3da6-4993-98f9-0d5357fdbc54@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <15cbf71b-3da6-4993-98f9-0d5357fdbc54@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_103824_101880_BB843146 
X-CRM114-Status: GOOD (  46.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 26 Oct 2026 13:32:40 +0000, Sascha Hauer wrote: >
   On 2026-10-21 22:33, Michael Tretter wrote: > > Altera VAB usually uses a
   certificate that is appended to the SSBL image > > using the fcs_pre [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_MIXED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 4ABC4205AD3
X-Rspamd-Server: mx1
X-Stat-Signature: bbcg3zzfpt15q9u94a31akq8wu9ma3km

On Mon, 26 Oct 2026 13:32:40 +0000, Sascha Hauer wrote:
> On 2026-10-21 22:33, Michael Tretter wrote:
> > Altera VAB usually uses a certificate that is appended to the SSBL image
> > using the fcs_prepare [0] tool. The certificate contains a sha384
> > checksum and is signed using a key chain that ends with the root key
> > that is written to the hardware.
> > 
> > Assume that the certificate is appended to the SSBL image. Read the
> > certificate from the same flash partition as the SSBL, pass it to the
> > SDM firmware for verification and check against the root key, and
> > finally verify the contained checksum in barebox.
> > 
> > The SDM firmware returns success for the certificate verification if VAB
> > is disabled. Create a dummy certificate to check if VAB boot is disabled
> > and accept an unsigned SSBL in this case. If there is a valid
> > certificate attached, the checksum has to match, even if VAB is
> > disabled.
> > 
> > The implementation is a bit quirky, because
> > 
> > 1. it needs to deal with the broken SDM firmware behavior, which expects
> >    a 32 bit word with value 0 in front of the certificate,
> > 
> > 2. needs to walk and parse the (still untrusted) key chain to find the
> >    actual size of the certificate, and
> > 
> > 3. I haven't found a better way if VAB is enabled than to check a dummy
> >    certificate.
> > 
> > The VAB code could be moved to a separate module to make it available to
> > other SoCFPGA platforms or to barebox proper. Since it's only used for
> > SSBL verification for now and is mingled with the SSBL loading, I kept
> > it in the xload code.
> > 
> > [0] https://github.com/altera-fpga/libfcs
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/mach-socfpga/agilex5-xload.c | 157 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 157 insertions(+)
> > 
> > diff --git a/arch/arm/mach-socfpga/agilex5-xload.c b/arch/arm/mach-socfpga/agilex5-xload.c
> > index 9e55252c04cc..077f67014945 100644
> > --- a/arch/arm/mach-socfpga/agilex5-xload.c
> > +++ b/arch/arm/mach-socfpga/agilex5-xload.c
> > @@ -5,6 +5,11 @@
> >  #include <linux/sizes.h>
> >  #include <mach/socfpga/generic.h>
> >  #include <pbl/bio.h>
> > +#include <mach/socfpga/mailbox_s10.h>
> > +#include <mach/socfpga/soc64-system-manager.h>
> > +
> > +#include <crypto/pbl-sha.h>
> > +#include <crypto/sha.h>
> >  
> >  static inline u32 barebox_arm_size(const char *head)
> >  {
> > @@ -52,9 +57,128 @@ static ssize_t agilex5_bl33_read(struct pbl_bio *bio, void *bl33,
> >  	return size;
> >  }
> >  
> > +struct vab_certificate_data {
> > +	u32 magic;
> > +	u32 flags;
> > +	u32 reserved0;
> > +	u32 reserved1;
> > +	u8 hash[SHA384_DIGEST_SIZE];
> > +	u32 measurement;
> > +	u32 reserved2;
> > +};
> > +
> > +struct vab_certificate_int {
> > +	u32 magic;
> > +	u32 size;
> > +	u32 version;
> > +	u32 type;
> > +	struct vab_certificate_data d;
> > +	u32 keychain[0];
> > +};
> > +
> > +/*
> > + * Use a wrapper struct that starts with a zero word to be able to pass the
> > + * certificate to the SDM firmware as it. Let the code that reads the
> > + * certificate deal with it to avoid a copy of the certificate.
> > + */
> > +struct vab_certificate {
> > +	u32 zero;
> > +	struct vab_certificate_int cert;
> > +};
> > +
> > +static ssize_t vab_get_cert_size(struct vab_certificate_int *cert,
> > +				 size_t size)
> > +{
> > +	struct {
> > +		u32 magic;
> > +		u32 size;
> > +	} *header;
> > +	ssize_t offset = 0;
> > +
> > +	/*
> > +	 * Each element in the key chain has a header with some magic and the
> > +	 * size of the element. The length of the entire key chain is attached
> > +	 * to the end of the key chain. Walk the entire key chain to find the
> > +	 * actual size of the key chain.
> > +	 *
> > +	 * Note that the header is still untrusted!
> > +	 */
> > +	while (offset < size) {
> > +		header = ((void *)cert) + offset;
> > +		if (header->magic == offset)
> > +			break;
> > +		offset += header->size;
> > +		if (offset < 0 || offset > size)
> > +			return -EINVAL;
> > +	}
> > +
> > +	return offset;
> > +}
> > +
> > +static ssize_t agilex5_vab_read(struct pbl_bio *bio,
> > +				struct vab_certificate *cert,
> > +				off_t start, size_t size)
> > +{
> > +	ssize_t ret;
> > +	struct vab_certificate_int *tmp = &(cert->cert);
> > +	size_t tmp_size = size - sizeof(u32);
> > +
> > +	cert->zero = 0;
> > +	ret = pbl_bio_read(bio, start, tmp, tmp_size);
> > +	if (ret < 0)
> > +		return -EINVAL;
> > +
> > +	if (tmp->magic != 0x25d04e7f) {
> > +		pr_err("vab cert: invalid magic 0x%x\n", tmp->magic);
> > +		return -EINVAL;
> > +	}
> > +	if (tmp->size != sizeof(*tmp)) {
> > +		pr_err("vab cert: invalid size %u", tmp->size);
> > +		return -EINVAL;
> > +	}
> > +
> > +	ret = vab_get_cert_size(tmp, tmp_size);
> > +	if (ret <= 0) {
> > +		pr_err("vab cert: invalid certificate chain\n");
> > +		return -EINVAL;
> > +	}
> > +
> > +	pr_info("read vab cert to %p from %lx (%zu bytes)\n",
> > +		tmp, start, ret);
> > +
> > +	return ret + sizeof(u32);
> > +}
> > +
> > +static ssize_t agilex5_vab_dummy(struct vab_certificate *cert)
> > +{
> > +	struct vab_certificate_int *tmp = &(cert->cert);
> > +
> > +	tmp->magic = 0x25d04e7f;
> > +	tmp->size = sizeof(*tmp);
> > +	tmp->version = 1;
> > +	tmp->type = 6;
> > +
> > +	return tmp->size;
> > +}
> > +
> > +static int agilex5_vab_verify(const void *data, size_t size,
> > +			      struct vab_certificate *cert)
> > +{
> > +	char computed_hash[SHA384_DIGEST_SIZE];
> > +	char *hash = cert->cert.d.hash;
> > +
> > +	pbl_sha384(data, size, computed_hash);
> > +
> > +	return memcmp(hash, computed_hash, SHA384_DIGEST_SIZE);
> > +}
> > +
> >  int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
> >  {
> >  	ssize_t size;
> > +	off_t cert_offset;
> > +	ssize_t cert_size;
> > +	struct vab_certificate *cert;
> > +	int ret;
> >  
> >  	if (!bio) {
> >  		pr_warn("source device for SSBL is not configured\n");
> > @@ -70,5 +194,38 @@ int agilex5_xload_bl33(struct pbl_bio *bio, void *bl33)
> >  	if (size < 0)
> >  		return size;
> >  
> > +	/*
> > +	 * The certificate is 8 byte aligned and attached to the SSBL binary.
> > +	 * The certificate must not be larger than the partition and is
> > +	 * usually smaller than 4K.
> > +	 */
> > +	size = ALIGN(size, 8);
> > +	cert_offset = barebox_part->nor_offset + size;
> > +	cert_size = min_t(size_t, SZ_4K, barebox_part->nor_size - size);
> > +
> > +	/* Use the SDRAM behind the bl33 for the certificate */
> > +	cert = bl33 + size;
> > +	cert_size = agilex5_vab_read(bio, cert, cert_offset, cert_size);
> > +	if (cert_size < 0) {
> > +		/*
> > +		 * There is no valid certificate. Generate a dummy certificate
> > +		 * to ask the firmware if authentication bypass is allowed.
> > +		 */
> > +		cert_size = agilex5_vab_dummy(cert);
> > +	}
> > +
> > +	ret = mbox_vab_src_cert(cert, cert_size);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = agilex5_vab_verify(bl33, size, cert);
> > +	if (ret) {
> > +		if (cert_size != sizeof(*cert)) {
> > +			pr_err("SSBL hash mismatch\n");
> > +			return ret;
> > +		}
> 
> This is unnecessary hard to read. I assume cert_size != sizeof(*cert)
> means "This is not the dummy cert generated above", because a real cert
> must always have data besides the header, right?

Correct. A real cert has a certificate chain attached as data.

> 
> > +		pr_debug("SSBL hash mismatch: Bypass authentication\n");
> 
> The dummy cert never passes agilex5_vab_verify(), so it's not necessary
> to check its sha384 sum.
> 
> I think you should rather have a dummy_cert boolean and return
> successfully in the dummy case right after calling mbox_vab_src_cert().
> With this you would also not have to return successfully after a failed
> verification, which raises eyebrows.

I think I first wanted to accept images with an invalid signature on
devices that don't have VAB enabled, but warn the developer about it,
before I changed my mind to always reject signed images that have an
invalid signature.

I'll fix this and send a v2.

Michael


