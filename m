Delivery-date: Wed, 26 Aug 2026 01:38:18 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz0ig-007Ek1-0M
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 01:38:18 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 51124202454
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 01:38:14 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1c3LhPTZ;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=C7ehdJdz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYXjkdczH6fjpCkLKUQjMaM4fpzXJlS6RJvcGbWOBXU=; b=1c3LhPTZIkT2+C
	ozVLP/cLdKXVA+gmqCvVRcJXcvPixCjUYWz5xES9ObtQAead0RC+vowpzKMms9SgF71qdKmksqEGj
	qSiPsGXMbWKhxN/4CldrkY3VwM+nrUzOepIEsT433erKQJYzhMAVKo59IXCC/XZm4o2WxiO3L8gnf
	w8D/lIQ4+rjdeNeDjvw4Uu7H+60iiVxv+fqGtuWU55JDAmL4OQL0XbSxt4DntzBC9bSoBviNLxzWs
	prFGzKE23+j/+Cg7q8q5XMRN1HnlXK2jgZbzoYAtKWGt8gdh94/HD4peTz3deLoybScLGRCOKWnou
	26ZcSfkP/AVKs8PcLWGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0fr-00000001gPC-0F2F;
	Tue, 25 Aug 2026 23:35:23 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0ff-00000001gOi-3GtC
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 23:35:21 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-3964e76d0f4so518690a91.3
        for <barebox@lists.infradead.org>; Tue, 25 Aug 2026 16:35:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787700910; cv=none;
        d=google.com; s=arc-20260327;
        b=FEsXOWq4XkUT6tOMHuwuUZETFLIkdlQzaHwQcbR3bDqjQ2BuYbmOvncT+EHG3gc43G
         zAWnw3LnZI/wG4OGGpzrzEpPuezRi9JHPE/b6FK3lnOvTC8PcXLuACJ+mN053vYZGvI8
         r4qrDWzha3Xm8Yw2HIWMEmDUXwotcqI9Z7BidRDBZN5FpQLBqPyNQGDarwJZKmdFw/qw
         MDShJB5LDD3nLLx/Yeh6hbI9+I+VPiCfKUGdNoHj8rZ1Wgh/mT7201dkw7lIaZqLdnvd
         Bo2doAoNRYxoYcLPon30/QvCyXB2ovWhNyr9dy3AHIOcGVJUaNUAKvNmP3Lz8aoO6QUq
         1eXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qYXjkdczH6fjpCkLKUQjMaM4fpzXJlS6RJvcGbWOBXU=;
        fh=tyWVnuywhN3oSl7XFw8QsMG7UtV5Ge3hox5N14ziy94=;
        b=IAvcU9q9K1DVXZUQYU93apTlyfnLDXdk6cbykLDKI7oWltjLFZeWl8uHqYMua2uWcb
         HKzu+8vw+Gn/UYCi+ZM0MWyBQKs3K/K0EVjAiZnoX7MipFGP7QK57nHNIAkxVMHqgKfl
         sheAV59IyUpk59/2Jfr0hGNOTUs37+8x4gy4vGVjXss3quOq/sA4DCuss37rcfCfeAav
         ipkDox55mvpE11U8CWC2qgPeE+D9DbXa+lNhFPeu8N1OTIzWRvM+MtcsmZA2TPnSH89q
         jqTMP0Al7zRa7eYXI8eE56DhM+CEZCs7rXzZBFYsVzeHPTKBxvGm10xqLBWxtaiLTfOm
         P4Pw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787700910; x=1788305710; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=qYXjkdczH6fjpCkLKUQjMaM4fpzXJlS6RJvcGbWOBXU=;
        b=C7ehdJdzysCCRSpzc7LB3+ut49uMgplK5lQC0lxKhuLwmuWsB4R6aQ1HzTJTjwRiwv
         itQI7gf/2sNlPVMjdqtfitSn0DshrQKONJXihs/zsMBeevGTzDg0JwJl+UmMvQsE4sR1
         VJIvty3QwsaZrtc7gQvXa3p6ljOM81UV6+Rjk/hLuSW7i/FNfG0Zjn4cFK83R70kT5QR
         A2/8g0cTZuxOtQQ1TXGKre5MVxm48QROi2HDEXLChJP8Jh5SRD83uRKCI0Z1FhbFK/N0
         yYeB0Pl3F3aSzevetBresc3LwZmPpArL7e/42yTckDTIpCl3rxNaDCV5gF45zRMzfM9l
         pdVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787700910; x=1788305710;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=qYXjkdczH6fjpCkLKUQjMaM4fpzXJlS6RJvcGbWOBXU=;
        b=gha2kD0r223arjAIRiti3JBfiDv9I8ui01C/ysSku4uMPUaRxyemDRviSDU3j5Zgvj
         8jRHzc2t5Ff6WqTe7tNGiJNVYqZK9/iVGXygtiayniKGke2B6n1YcUNYu2KTU91dyWxm
         B9yzfrzbuQKa7UpV94E23yAVUg87e3+7VLunk4kATpPjcJjRHOkNfCAicoIe5Uiv3jo3
         5fPNkRRUupw3aVEGil4uIID/gHamFKdvQFsrw/xMK6vGCGDdy0t0jYFn0tiVZ1W7RtvJ
         GKOTiRAMuYdksFaQvx0kzhFNqPtDSlInhB8alD9LggFIVRY1EGqWxpntstnxF4EEcnEy
         tuhg==
X-Forwarded-Encrypted: i=1; AHgh+RoDA8eN4jDvs5eOkNgv67tt69s8XYoewK6eAvUhCEFZztbYXEicCCZxCihtl51TwgI8zp6HUCvP@lists.infradead.org
X-Gm-Message-State: AFuF++mLEtQzYcM2BiwbDWl7yDBW2/Egvkmk8GaEMmlfnoLk4KwfnRjC
	On6YUVgTjmPFSQMne7yOCz3cXm9sAaIHhngtJbt8YPS3CAgzKwsmz3ZYcJrIni15Il++3zK1zuP
	UoAvuUd4QVNUVSaHzu//u3gJQNaRnnUpgGATL
X-Gm-Gg: AR+sD12zB7PTOqQMG/DvoKNIx/YyWLjgx5R/lXDicEe/m9G4N6z+wRdet6AuZnlIAqR
	PZfiHoH8y9bpbzyQFXYdDvFof0sBr1HY6Jww2ljTnt3kJmhqrUlf2qaIE/V+mOk2BnwI3wXUiEi
	ltowLuBaJVZjvGlwEHQF8X507mOs3PhUmvug4hX7D39V26oLds6c6TdQdnAroUtE20hV3EadXSA
	9B7WiigOQe8eR9t93M2/9cPG4vw38SHPY/n1qN2ffxtla5LC6V24w31vXWdo4gY32KIlLs8gtKb
	EjyiURJ7ln1OiLScLiOZW7NuX4dte36H3t9kdn4i1CtPqMStZl3GHtxVPZVy8cs+uohW2iHtmQ2
	nKd6wuYlIwuCpHJDbiLcceRvziGELI18Sev94zRO2YjM2x4mHT45pX7GJetfSbw==
X-Received: by 2002:a17:90b:4d84:b0:37f:c22a:c188 with SMTP id
 98e67ed59e1d1-3966d1af96bmr4940163a91.4.1787700910334; Tue, 25 Aug 2026
 16:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260825030548.473672-1-chalianis1@gmail.com> <20260825030548.473672-2-chalianis1@gmail.com>
 <ff91822d-aa0f-4afd-b94f-86a026ac230b@pengutronix.de>
In-Reply-To: <ff91822d-aa0f-4afd-b94f-86a026ac230b@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Wed, 26 Aug 2026 01:34:58 +0200
X-Gm-Features: AcwNN1VionQyMrIlfJVswNt4Gpkq1OXleCAJR1Ko6xWVD74vBkwIemSIhIWpmGI
Message-ID: <CAL+1fyDY+PV31_jEO33PoktrYtOfLhfQXmLas-d+yfAattB-yg@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] state: make of_state_fixup() usable outside common/state/
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_163511_825118_046806FF 
X-CRM114-Status: GOOD (  23.89  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Le mar. 25 août 2026 à 19:00, Ahmad Fatoum a écrit
   : > > Hi, > > On 8/25/26 5:05 AM, > > From: Chali Anis > > > > of_state_fixup()
    was static, callable only via of_register_fixup(). > > Expor [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:1029 listed in]
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
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-6.31 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
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
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWO(0.00)[2];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	R_DKIM_REJECT(0.00)[gmail.com:s=20251104];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::1029:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 51124202454
X-Rspamd-Server: mx1
X-Stat-Signature: 1dqes6o469rkxpahh9h1cofeq1pyxdrf

Hi,

Le mar. 25 ao=C3=BBt 2026 =C3=A0 19:00, Ahmad Fatoum <a.fatoum@pengutronix.=
de> a =C3=A9crit :
>
> Hi,
>
> On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > of_state_fixup() was static, callable only via of_register_fixup().
> > Export it so other subsystems can invoke it directly to render a
> > state instance's devicetree representation on demand, without going
> > through the global fixup-registration/of_fix_tree() machinery.
>
> I guess I will see later what this is needed for.
>
> >
> > While exporting it, teach it to resolve backend nodes that are
> > top-level "barebox,fixed-partitions" subnodes carrying a partuuid
> > property instead of being tied to a real, already-probed storage
> > device node in the tree - the same globally-resolvable-by-UUID
> > binding drivers/of/of_path.c's of_cdev_find() already supports for
> > EFI, where devices aren't instantiated from devicetree. Without this,
> > of_state_fixup() could only find a backend reachable by walking real
> > hardware nodes already present in root, which such a partuuid-only
> > declaration never is.
>
> of_fixup_partitions() already takes care of fixing up partitions into
> the kernel DT. If it doesn't work for your use case here, it should
> perhaps be adapted instead.
>
I'm not sure, I the of_fixup_partitions does not take care of partitions de=
fined
by their partuuid, the reproductible name does not find the partition
in the kernel
device tree as for a real mmc or spi memory where there reg and ranges to b=
uild
that string.
>
> I haven't reviewed the code, because I am unsure why this is needed and
> the commit message didn't really explain.
>
Maybe give it a try and see!
> Cheers,
> Ahmad

best regards.
Anis.
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


