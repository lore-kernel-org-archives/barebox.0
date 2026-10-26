Delivery-date: Mon, 26 Oct 2026 10:09:49 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLGiC-003Rq9-30
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 10:09:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 97EF52008F0
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 10:09:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DodaWBDT;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=A2ACPmd2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793005788; a=rsa-sha256;
	cv=pass;
	b=YMPl/kZUYLfn9TdJ5C8XgKQD+TZgtdH+UowiqkF79FjgEv1GtMe6869UcYCoNxObIh5OZC
	EVP0WKT2fSqWtreaI8Yh954eiQXqNeJ0JViZl4z0PDhyUgZVAW2XRfaJEtDEOMtCP/ZqFA
	0MDVT3JEKIZ4i4+e55tDy2zuhRjgixBsUUtvsCtwfrgDcCFObaqd7kC8QHbk7sZtX5cyu5
	UeHc7b54LOFkNszE2ZO6Xhi1c1wCsSjyJeFGg59Wck2vB7B0aYzZvJNMjDh5VCxbJEzBBI
	mEaSf409cpYqaMm5kW8DYJpBwQuKrNwyO7lGGsTshk+mu6Fi+5Tc3k63Mz9WFw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DodaWBDT;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=A2ACPmd2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793005788;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=pAgYL59CQTWm0WEgzWXesJJigfujoKcAy/0pQWa2mAo=;
	b=NynTAAQSKUoNWj24LPOTU2IXiYAvlCZoF2NGJlCcSkhRTHURW795GaMVxzR4cnS+QrI7MT
	o8TdBtZzuWupThKGgMUIkjX+GUdZnpaFNYlBBvPAccUyCjhtJKBItv7KVPX1rTL7YUv5qK
	9pcNsuh5NH3GZYuVEm36eHgOINtsMTA9QlqrboUoWJfJzRilxN4DsaqNv82pWGjiYeG2Tv
	tgJYQPFpfOXgMjF/SDuCy70zow2pssVQNOv5KHPIPycY+aprQ4mNLXY7xaG8jPY0fiFfvE
	aj5wICBSoyiLdz0GyV+QIvuh7EIgZDTrL0gitXUvWI2xNEkQT51MmJyNM9VPIA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pAgYL59CQTWm0WEgzWXesJJigfujoKcAy/0pQWa2mAo=; b=DodaWBDTCmYlCDiatbQDEyHtoN
	rPb47/AyTqCrAosTMF/4TKTDjGnQc7SRX+5uQMCz4eTyglA/gHEg06wR+nN3sPxl3D79WCpfb3A3t
	5+rZgXMaSYjqpte4lrDznM/hWeHFa+VAkZAOKhUpLI/BoFjva8QSFZuOan4lydkaL8SUnNMOPfpH+
	TRFKBkoBqEIqn7Ilj/O0Wvn59jBeN01zEZv1Ho8km33NqMapcmeFoON3h9wtZxB7PYeG45+Fhy67y
	5YKWoLLDoMYt9K5boSqab6oc7cYwk+gaB3jJ59VdK5ipCI5vJdLT1aRvjpu9vW6KNOnDZeKHjPpQX
	UUr1n+Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLGHL-00000001xxY-3ZBz;
	Mon, 26 Oct 2026 08:42:03 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLGHI-00000001xxD-2u9C
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 08:42:02 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-6b1afcd2d23so3819151a12.1
        for <barebox@lists.infradead.org>; Mon, 26 Oct 2026 01:41:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793004118; cv=none;
        d=google.com; s=arc-20260327;
        b=FYkrxPvVmM7UY6I4GeDjaFYAN7V06lsJcC3zPFbiO/tV4SGgGHOr9c1f7GWb+qvIgK
         pJ4GW2Cpq0K8re9vA3fqYeCJofKN6UH06xFjbx/YV3hBQxo6S3mGpyOgumB3BBM1GFG4
         CUJ2H2hopEqC52E1eurlSoV8xfsIVY/3ip3sOWOJ4iIuHRCBKzXwxIf8t46oMGIMkmfB
         B2cLBb/Pu+AkuuuUvozCwpeYzXCnBhw1zbr75dxp35OqTJcNQzKIln0oyjMpFD3I0HD1
         E53fRmd5oYddZ22/9GWuBm+HMCG7M0d2e9kc36XalHA691U9UVqKQ1FN4XZvC5hWXE2m
         0AUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pAgYL59CQTWm0WEgzWXesJJigfujoKcAy/0pQWa2mAo=;
        fh=nDWr/NGBxypLRpXDDzp3G+TPW5FTTeYIsyMzIh7BKA8=;
        b=fXsID13iQtVk/P1GtR+BNrqxd//8TKC8/jFHQ8izdgFADbRIyhaN/dWAzjsa9QeP28
         1iAOmHqITgDnMiYXwN/EDmIZ0j27VYU0azzLJ+FL3gMiOoGRRu6LnJ3b4frrLW6+RBKd
         hMYAvVuH4I61eemP/HiJ8qdmBnRWhnNTE6AFCfNzQOkCVqlvxnXIpVwXwpmUCa/wj2oB
         srq8A32ND1V+mDqrCr8HkWztx4weUg/w6GobRXsKNRbXE/nNEHT/XxXSNPw60wbr2CwP
         E4rckqm3fGAm2YTWj2xyBnJ9F9TMlqGzRwcwZ0aUfm5NJTPoVuTDm3Pltwm9LExZCc5v
         gcFA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1793004118; x=1793608918; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pAgYL59CQTWm0WEgzWXesJJigfujoKcAy/0pQWa2mAo=;
        b=A2ACPmd2TD7/8wQy1uf1iHssk58f2Ea5YxccqYbX8oYjieTMgo1jhfdFg34iRTkGQ3
         xnTJYOL46OjcGRM3IOHUF+J5HzBKaX+iVnhPPMFBA3SmAoV/Z0ouC9XI0Z8SghpAOFrd
         fwiDIIgdBko2YlUziiREJ/IMABCRoelS7KPxwkhHpSxAVqu+6U2cYPuBvHYo6nkd68yR
         ER8EFtAdN5A1emS497ZUQg0wYYishKrEufVJvQSYcZJt8IbcDAdwwLBeUAkmMqBj5MnB
         7TF9LFSGcAuDLpp1QiqtxAPmGXlIKlyhscq4OV+C4/rIvl5hwkXrQdRT0YJBGiaIHLtH
         KzTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793004118; x=1793608918;
        h=content-transfer-encoding:content-type:to:subject:message-id:date
         :from:in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pAgYL59CQTWm0WEgzWXesJJigfujoKcAy/0pQWa2mAo=;
        b=kmHelJoVGkF7aOGwXkF1dqP26rb5KGC74gtQqNRlV7tLStvI6etoOFwcyXntNBsWnz
         M+kPevGggOsJtHsqy1t6IJY7WkR7kB+s+tlDG2Drv0pC5MntFeQdI7oMwN4kHUtTE7ha
         bUAWTC1iUp54QymbzJZiBOg8NSHwMuQKCYgOJBtzhgLBrb1FwmLXXfhvTSxFXlTFK3Di
         7yBOYu4tpBzTkP+oAPEQTYrdKrkqHHuGrjssI/wynApRO2gRHdmbbUIeDyr0YcBS2NHx
         RswK5V5OxaULgwEk2NYL1NXSxHbaOGFq+LAII2Rj8uqxQYfVgSguZKTNhxY2XvoVeywu
         bU1g==
X-Gm-Message-State: AFq9FYIv9Y8JGQs7w6gYFAVNwxQRjsj7RUAomg9TGd2+LKwNQVkhRUbm
	WKThckeh+La/NI6PT4ZLMx5ZClDJ/raCbcKBLXhPom+NkmsQE7MDcjjV0QFEjFy/h+W1xEKhmqa
	LBBb2gyMyay/ScmoicvSUomGKIjpecZMQHw==
X-Gm-Gg: AYBFou15OxPJZtGDZo/BSynu5mcgc8kk/sBuYQKMfflD3wQGr5yJbf9lHxk3T4HUey0
	LwzrnLefGP6pEqWbG0zOSHcuEzzbhUSi+rbJmuJCNKnKWjQRDQSp4c1QZI/MeXmMSbfVm6IQwCE
	/fjbGUufaAS3RNYoKDquIJu0j1+BgreAMhYblw9sUOFYkX6a6+6Hvs3mEvV1/dmJquqNVDLMb2l
	oL1oITVQtRNsLacTaWuwdHVbvrgVALpZcJ63E+mShmZn8THRNoilJ1V3fS52SsytFRUKrAo0o3r
	Y4Jjxd7byxseIvlz+kZuyEhp2BGxFYRfV3DJHziFmmEl5qLmDh9PPRx/7Vzz7PPId7tH1CJijlt
	z/+1fXFbXgymSJtqY6YbxXrP6drdmIDR/ErI7NpM=
X-Received: by 2002:a05:6402:2403:b0:6b3:f094:8ced with SMTP id
 4fb4d7f45d1cf-6b442fd682dmr6185419a12.21.1793004118404; Mon, 26 Oct 2026
 01:41:58 -0700 (PDT)
MIME-Version: 1.0
References: <CANH4o6M1zvtGcz6fDyWoj5wi3OLzgFJYL1BB52qb-DoCUsWcnw@mail.gmail.com>
 <982f3816-cac3-49d3-837b-88cc25095dcf@pengutronix.de>
In-Reply-To: <982f3816-cac3-49d3-837b-88cc25095dcf@pengutronix.de>
From: Martin Wege <martin.l.wege@gmail.com>
Date: Mon, 26 Oct 2026 09:41:21 +0100
X-Gm-Features: AclHuK8HWGTEcvxDoBBz9YZa-PevajCI7t8RfqPgNGzUxXj6TP4vJugQeyAOGgY
Message-ID: <CANH4o6OSuDrwo5EYYtKL=W-96j9U1WtZ5XkHtJkgiQZriiegsA@mail.gmail.com>
Subject: Re: Mount NFSv4.1/NFSv4.2 filesystem in barebox?
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_014200_771241_85621C1B 
X-CRM114-Status: GOOD (  22.07  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, Oct 26, 2026 at 8:57 AM Ahmad Fatoum wrote: > > Hello
    Martin, > > On 10/25/26 22:07, Martin Wege wrote: > > Hello! > > > > Does
    barebox have support to mount a NFSv4.1/NFSv.2 filesystem? > > [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:52e listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [martin.l.wege(at)gmail.com]
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 97EF52008F0
X-Spamd-Result: default: False [-6.33 / 15.00];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	BAYES_HAM(-0.62)[82.09%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	SUBJECT_ENDS_QUESTION(0.20)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::52e:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinlwege@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Action: no action
X-Stat-Signature: udo74uysb8uxbg14hbo9qcy11fp8wza7

On Mon, Oct 26, 2026 at 8:57=E2=80=AFAM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:
>
> Hello Martin,
>
> On 10/25/26 22:07, Martin Wege wrote:
> > Hello!
> >
> > Does barebox have support to mount a NFSv4.1/NFSv.2 filesystem?
>
> No, the barebox support is for NFSv3 over UDP. This does not prevent you
> from using NFSv4/TCP during kernel boot up for the rootfs however.
>
> We would like to support NFSv4 eventually, but given that the we had
> to fix a fair share of security issues with the current network stack
> and NFSv3 implementation, we should to try to avoid repeating this
> in future.
>
> Incidentally, I just created a PR for rust support in barebox:
> https://github.com/barebox/barebox/pull/96
>
> The goal is to add smoltcp as TCP/IP stack on top of it.
>
> Then we can look towards supporting TCP protocols like HTTP and NFSv4,
> but it will take a while.
>
> This may be the third time that someone asked for NFSv4 support on the
> mailing list and it would be useful to know how are you going to use it
> and where NFSv3/UDP falls short. Is this because you are using Linux
> kernel-nfs-server and NFSv3/UDP is not enabled by your distro or is it
> because of something else?

Four issues:
1. NIST2 requirements basically EXCLUDE NFSv2/NFSv3 over UDP
2. NFSv2 and to some extent NFSv3+NFSv4.0 are declared as "obsolete"
by IETF, which again is an issue for NIST2. The whole thing has been
"red flagged" by certification authorities now several times.
3. NFSv2/NFSv3 over UDP is FRAGILE like frozen glass in a volcano
4. NFSv4.1 has much better performance and features which would make
starting through a bigger initramfs faster. Example: You would prefer
that your glass cockpit in a plan reboots a bit faster if something
went wrong (power outage) mid-flight.

Thanks,
Martin


