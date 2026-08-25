Delivery-date: Wed, 26 Aug 2026 01:38:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz0ix-007Ekg-2t
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 01:38:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DD3C420248F
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 01:38:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=k9AbUGXK;
	dkim=fail ("headers rsa verify failed") header.d=gmail.com header.s=20251104 header.b=VOkAgDrc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7CKJJTGfG8O6fERE4ctaAa9aa7NBZ0XxvxhfbmwDl0=; b=k9AbUGXKqKn1zL
	I+kCxzsdU2q07PqxEYxh38TYx/j38fJDPbv5ds0CnpPNXuQRKk35D8zGhZ0oQOKXqS7iE6EqKji0m
	a1n273X1Lnpni9Adyw0FtC1iKz/1kkANk7AYjdOQYjFn2D8YQG7OyyKoIq+O3JanPpLaW1WzPsyB2
	NBoPdbaY7mUdgXrnH7xUA/7K7Ovm/jlkHEGrqfOsqjw2xSWoSe53c+68LsCC6+/ot4ZbaA1M96PFU
	sDWWtYaHeZilfoohv9WbarA39HiVXT05qLrcHmHIM5bhmbtxN7FKARvHjdk3oWz1wrJqmotjBGQi+
	3RimqwACmRKG1amo6iEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0ha-00000001gU4-1R0b;
	Tue, 25 Aug 2026 23:37:10 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz0hX-00000001gTi-1J9O
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 23:37:08 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2d6f9e2f681so4143885ad.3
        for <barebox@lists.infradead.org>; Tue, 25 Aug 2026 16:37:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1787701026; cv=none;
        d=google.com; s=arc-20260327;
        b=SBs2Apo+fySEJWyzB+pydKkcGcEcvUDZJYkQ8rBZA+AmC+zXGQDp9raWJp4jFCPLbw
         Gwwk81TnviGOod++D57MPAS2vE/R2yv+E1+la9nFFSDllNaf4GB6ad4e6usVNEZe7Fq5
         Fo3S3MPNVmeOc6/2eUIlBlfd3Gv3bKlikv1qavzHSTtd4QMDwC0G9m0mZDWjDNLe6hbE
         AIhL7x1zIiKlTihCM9QzrfwCz38GpxLOLLrDfSnT8prcFGKCbnJ5uhjPJDlw2t9QXpPI
         9cgPMbFBC3m31jB80YlZ6AKiFJSbgVcIwAUE/t7m3MpJJlXLA7xRN1DH1baVfn9n8KWQ
         +9Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=z7CKJJTGfG8O6fERE4ctaAa9aa7NBZ0XxvxhfbmwDl0=;
        fh=2JRNdWmmo/F5o/PY//pgdzrdG/v7TEhv6PAJgKmGUT0=;
        b=EiTBk43LTr8MLg6h45p3YkRJWT1KpRwT9LyU8QV00y6I/7hu+9Yq/hDdqL1k0GGNwP
         4RRq1rXQqc5BuM0CvOD5SWg22WSOeCqes9iXXRLHgNUN+hM7qNRQjYuZmPyfiBnqfThJ
         XrntHJMFoZ+rTQkXYqoNLXvWU9rS6vpiogzrLq9YjZUMUmuWWd2evR8z30fVKPBxdsA9
         zHXWGLC1JK7uY8p0zhCKyprqDZW2eNBoY3QA86oHltRKH0Iku4UVqlokLk/IovItSJgK
         vQgb5n0wSAF5LUhSkf0rHu6vRFW3/sOHCnAJ4rhai6EpaGLQnCXpNLFvYPfb1RQN4+yt
         jeZQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787701026; x=1788305826; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=z7CKJJTGfG8O6fERE4ctaAa9aa7NBZ0XxvxhfbmwDl0=;
        b=VOkAgDrcdjAbbSm7t6sRALlcJ3y8S/SzdS+tqG0e3rLb1vH7zN5/Hx9wbwjy7twyE7
         jeRJm5ZghdOFBcN+0vvQ1suiTcVEZCFkED1eJIo2OxO3r6BgHQuKn/BzYQEJfRJ4+nHF
         y+SEcaRo1zE65WvABwwliJooSrJHzMe5PAcsvBXCZAukUnnaiE7z1bwQqGqbmiD3Barw
         3SBnOB9lUv3NvgQ6f6e/9/EVrqwCbg9LpQOVt2dFkvxv/Yv+Hx2Jexz0wMFHxQ8VYGPE
         Hcv2p0fAbVfgZkSoBNlchkvyeeFJvxoFF/p+wRW7Wt2lJETMmsJgpjCjwkcqvLD++tqF
         AhFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787701026; x=1788305826;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z7CKJJTGfG8O6fERE4ctaAa9aa7NBZ0XxvxhfbmwDl0=;
        b=kLaaWloHe1QjWa8lG5yUStPqHJqIuHfNMYKuUsixFLsvzU57VQIiGW2olwk6pdFDzj
         X/491Se3uXVqY1U3vCV+aYFvLeqbBjJwtAHMcrucckExQ+ta9WkPk8S7OYUO5IzjscaA
         yt6+Kr4mKQMufrV3JuDJgkfbyXjEQT+FjBKVp/OJCQEtpe73ss34gyYCjGojTc7+8Zdk
         uBdAKP+Ahsh/ifKWq7YuDY/al6puMAsOawOuGjHc7GTSKBZNIe6HMvmXxEs/Qg8J9rz0
         oK25jylRrdqEbUjMHpnA8uLtgywmtq/o0JFT2DDlGLAcKBF9Flu/s67hkCofyuRonIUj
         4Rmg==
X-Forwarded-Encrypted: i=1; AHgh+Ro238JZy8dxsIWRwZuKrmTZFAKg/iSqR5IAIrOAat0PT6nhsE7M/utuR6EfFKQ51W3hVhwMNmHj@lists.infradead.org
X-Gm-Message-State: AFuF++nZQmFGMa/4zvCy+iOXhiFfOXuefgMyQD/EKDQJnOucYLW57IO+
	qb2OElLCc2uvbbnr0vqQdRsgwqutvKX3Glu+6960d1x99UbHkNog/01tzhQepixNzCsICYssbY7
	EbS2xX2zOjW/ZKrIpvxLjHG6AdPCQIvGD1Q==
X-Gm-Gg: AR+sD12KT78hf6TlpWqOVzb88KhXRAeIZfFmVYwCsX6ZoudqqbkywIwskGjZhuxSaLz
	qXbznfrxLthMpI4FdnI3ES8/VPIcBJUymvw4KctiNqha/Vyy6C/tMVisdJtnA0qpneR6lDos2lA
	Eed8tFCuog31JcA/0ssdfESGC4PKF/+oJoW/PO+rMoe1Q2/FHq3ggQU7FgUPKdcrygTUbifmtMD
	amQEaY821ksPhLreRsHr9108UEsPDPpkOq4BOV7ulJbjMuxHVp8qqEOcgwynqRmOvKVeE8Iw1rl
	TuRnfDi+DNNdANExs6Y93IQ2t9pCxQoDYzZ1bJDrJg6Dkx6upx6zMUMByMTDO/PDWvr0iUehgNG
	cNtpdl1VAPoSmgVKPwgjCdu+1a66fmmZyjAQVcjH4v2QydNT/ieNHPljulG7HJg==
X-Received: by 2002:a17:902:d581:b0:2d1:134:b86e with SMTP id
 d9443c01a7336-2d707a0190cmr36046375ad.2.1787701026149; Tue, 25 Aug 2026
 16:37:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260825030548.473672-1-chalianis1@gmail.com> <20260825030548.473672-3-chalianis1@gmail.com>
 <f71d0ca7-0339-412b-a932-7070feefe28d@pengutronix.de>
In-Reply-To: <f71d0ca7-0339-412b-a932-7070feefe28d@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Wed, 26 Aug 2026 01:36:53 +0200
X-Gm-Features: AcwNN1V7EuRI5Aci2Wqb7V9sDqorsi0TUkbFa4jBx1IgPbgSjzPB33TtNBPqi9w
Message-ID: <CAL+1fyBP2i=b1nwiZRzo9sr=E6UV+MF6_9DLJDMN+sXQFSeXTg@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] state: add CONFIG_STATE_OVERLAY to inject a state
 node via devicetree overlay
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_163707_370083_F2564C9A 
X-CRM114-Status: GOOD (  46.60  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Le mar. 25 août 2026 à 18:57, Ahmad Fatoum a écrit
   : > > Hi, > > On 8/25/26 5:05 AM, > > From: Chali Anis > > > > Until now,
   a "barebox,state" node had to be part of a board's own, > > static [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:632 listed in]
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
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::632:received];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: DD3C420248F
X-Rspamd-Server: mx1
X-Stat-Signature: cfhzhdndawetgxts3rgdfxcuu9hu1gt9

Hi,

Le mar. 25 ao=C3=BBt 2026 =C3=A0 18:57, Ahmad Fatoum <a.fatoum@pengutronix.=
de> a =C3=A9crit :
>
> Hi,
>
> On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > Until now, a "barebox,state" node had to be part of a board's own,
> > statically compiled-in devicetree source. That's a hard requirement
> > for external build systems (Yocto, buildroot, ...) that want to add a
> > state layout without carrying a board-specific dts patch.
>
> or externally in the ESP.
>
> > Add CONFIG_STATE_OVERLAY, which compiles an externally supplied
> > devicetree overlay (.dtso, pointed to by CONFIG_STATE_OVERLAY_DTS)
>
> Why two options?
it could be one option.

> > into the barebox binary and applies it to barebox's own live
> > devicetree at postcore_initcall time, mirroring how
> > CONFIG_EXTERNAL_DTS_FRAGMENTS already lets an external build system
> > inject plain dts fragments. Once applied, the resulting node is
> > picked up by the regular state probing like any statically defined
> > one. This selects CONFIG_OF_OVERLAY_LIVE, required so &label
> > references in the overlay (e.g. to an existing backend partition)
> > resolve against the base devicetree's __symbols__ node.
>
> The cover letter mentions QEMU and board-dt-2nd as benefiting from this,
> but OF_OVERLAY_LIVE helps neither of them as the DT comes from outside
> barebox.
>
> > Not every target has a live devicetree by postcore_initcall time,
> > though, so guard against that explicitly and skip cleanly rather than
> > calling into the overlay code with a NULL root. Once applied, call
> > of_alias_scan() so the overlay's /aliases entry becomes visible the
> > same way a live overlay applied via the interactive of_overlay command
> > already does. Also select CONFIG_OFDEVICE: registering a live
> > devicetree root at all, on targets with no firmware-supplied one of
> > their own, depends on it.
>
> OFDEVICE is not really meant to be selected by generic features, rather
> generic features should depend on it if they need it. Architectures /
> Platforms are wgi should select OFDEVICE if they want to probe OF devices=
.
>
> >
> > Assisted-by: Claude Sonnet 5
> > Signed-off-by: Chali Anis <chalianis1@gmail.com>
> > ---
> >  .../bindings/barebox/barebox,state.rst        |  9 ++++
> >  Documentation/user/state.rst                  | 32 +++++++++++++++
> >  common/Kconfig                                | 41 +++++++++++++++++++
> >  common/state/Makefile                         | 20 +++++++++
> >  common/state/state_overlay.c                  | 29 +++++++++++++
> >  5 files changed, 131 insertions(+)
> >  create mode 100644 common/state/state_overlay.c
> >
> > diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rs=
t b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > index 390e148a2879..36b1d9acb038 100644
> > --- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > +++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
> > @@ -23,6 +23,15 @@ Required Properties
> >  * additionally a *state* node must have an alias in the ``/aliases`` n=
ode pointing
> >    to it.
> >
> > +.. note:: A *state* node does not have to be part of the board's stati=
c
> > +   devicetree source. It can instead be added at runtime via a devicet=
ree
> > +   overlay, see :ref:`CONFIG_STATE_OVERLAY <state_overlay>`. In that c=
ase,
> > +   the node referenced by ``backend`` must still exist in the board's =
own
> > +   devicetree source under a stable, well-known *label* (not merely an
> > +   ``/aliases`` entry), because overlay phandle resolution works by
> > +   resolving ``&label`` references against the base devicetree's
> > +   ``__symbols__`` node, which requires ``CONFIG_OF_OVERLAY_LIVE``.
>
> As mentioned above, this is not enough. If it's an external DT,
> CONFIG_OF_OVERLAY_LIVE won't help.
>
> > +
> >  .. _barebox,state_magic:
> >
> >  The ``magic`` property is a unique number which identifies the *state*=
 variable
> > diff --git a/Documentation/user/state.rst b/Documentation/user/state.rs=
t
> > index d97ba4e9f157..a03670dfa68e 100644
> > --- a/Documentation/user/state.rst
> > +++ b/Documentation/user/state.rst
> > @@ -759,6 +759,38 @@ content, its backend-type and *state* variable lay=
out.
> >               };
> >       };
> >
> > +.. _state_overlay:
> > +
> > +Devicetree Overlay based State Node
> > +------------------------------------
> > +
> > +Normally the *state* node is part of the board's own, statically compi=
led-in
> > +devicetree source. ``CONFIG_STATE_OVERLAY`` allows a *state* node to i=
nstead
> > +be added at runtime, via a devicetree overlay that is compiled into th=
e
> > +barebox binary and applied to barebox's own live devicetree during boo=
t.
> > +Once applied, the resulting node is picked up by the regular *state* p=
robing
> > +just like a statically defined one, and is fixed up into whatever devi=
cetree
> > +barebox eventually boots (internal or external), without requiring any
> > +board-specific code.
> > +
> > +This is primarily meant for use by an external build system (Yocto,
> > +buildroot, ...) that wants to inject a state layout without patching t=
he
> > +board's dts: set ``CONFIG_STATE_OVERLAY=3Dy`` and point
> > +``CONFIG_STATE_OVERLAY_DTS`` at the ``.dtso`` overlay file's path, sim=
ilar to
> > +how ``CONFIG_EXTERNAL_DTS_FRAGMENTS`` works for regular dts fragments.=
 As
> > +with that option, it's not intended to be set in barebox's own defconf=
ig
> > +files.
> > +
> > +Because the overlay is applied to barebox's *live* devicetree, its
> > +``backend`` phandle can only resolve references to nodes that already =
exist
> > +in the board's own devicetree source, and only if that devicetree carr=
ies a
> > +``__symbols__`` node - i.e. ``CONFIG_OF_OVERLAY_LIVE`` must be enabled
> > +(``CONFIG_STATE_OVERLAY`` selects it automatically). This means the
> > +referenced backend node needs a stable, well-known *label* defined in =
the
> > +board's own devicetree source, not merely an ``/aliases`` entry - the
> > +overlay itself then only needs to add the *state* node and its alias,
> > +referencing that existing label.
>
> Thanks for including docs.
>
> > +
> >  Frontend
> >  --------
> >
> > diff --git a/common/Kconfig b/common/Kconfig
> > index 85df7f7daec6..abe7d100150c 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1351,6 +1351,47 @@ config STATE_BACKWARD_COMPATIBLE
> >         compatibility with the state framework of barebox <=3D v2016.08=
.0. Newer
> >         revisions expect an additional 'meta header' and fail otherwise=
.
> >
> > +config STATE_OVERLAY
> > +     bool "apply an external devicetree overlay to add a state node"
> > +     depends on STATE
> > +     select OF_OVERLAY
> > +     select OF_OVERLAY_LIVE
> > +     select OFDEVICE
> > +     help
> > +       Compile an externally supplied devicetree overlay (.dtso) into =
the
> > +       barebox binary and apply it to barebox's own live devicetree at
> > +       boot, in order to add a "barebox,state" node (and its /aliases
> > +       entry) that isn't part of the board's own compiled-in devicetre=
e.
> > +
> > +       This selects CONFIG_OF_OVERLAY_LIVE, required so the board's ow=
n
> > +       built-in devicetree carries a __symbols__ node, needed to resol=
ve
> > +       &label references from the overlay back into the base devicetre=
e
> > +       (e.g. a reference to a backend partition already defined in the
> > +       board's static dts).
> > +
> > +       This also selects CONFIG_OFDEVICE: registering a live devicetre=
e
> > +       root at all, on targets with no firmware-supplied one of their
> > +       own, depends on it.
> > +
> > +       See CONFIG_STATE_OVERLAY_DTS to specify the overlay source file=
.
>
> As mentioned above, unclear to me why we need two options.
>
> > +
> > +config STATE_OVERLAY_DTS
> > +     string "external state overlay .dtso file"
> > +     depends on STATE_OVERLAY
> > +     help
> > +       Path to a devicetree overlay source file (.dtso) that will be
> > +       compiled and linked into the barebox image and applied to the
> > +       live devicetree at boot to add a "barebox,state" node.
> > +
> > +       As with CONFIG_EXTERNAL_DTS_FRAGMENTS, this is not intended to =
be
> > +       put into Barebox's defconfig files. It's an external build
> > +       system's job, like Yocto or buildroot, to inject a state overla=
y
> > +       file from outside the Barebox source tree.
> > +
> > +       Any backend node referenced from the overlay via &label must
> > +       already exist in the board's own devicetree source, under a
> > +       stable, well-known label (not merely an /aliases entry).
>
>
>
> > +
> >  config BOOTCHOOSER
> >       bool "bootchooser infrastructure"
> >       select BOOT
> > diff --git a/common/state/Makefile b/common/state/Makefile
> > index 93215dd06921..a906c66a0747 100644
> > --- a/common/state/Makefile
> > +++ b/common/state/Makefile
> > @@ -7,3 +7,23 @@ obj-y +=3D backend_format_raw.o
> >  obj-y +=3D backend_storage.o
> >  obj-y +=3D backend_bucket_direct.o
> >  obj-$(CONFIG_MTD) +=3D backend_bucket_circular.o
> > +
> > +# External state devicetree overlay
> > +# --------------------------------------------------------------------=
-------
> > +state-overlay-dts :=3D $(call remove_quotes,$(CONFIG_STATE_OVERLAY_DTS=
))
> > +
> > +ifdef CONFIG_STATE_OVERLAY
> > +ifeq ($(state-overlay-dts),)
> > +$(error CONFIG_STATE_OVERLAY is enabled but CONFIG_STATE_OVERLAY_DTS i=
s empty)
> > +endif
> > +ifeq ($(wildcard $(state-overlay-dts)),)
> > +$(error CONFIG_STATE_OVERLAY_DTS=3D"$(state-overlay-dts)" does not exi=
st)
> > +endif
> > +
> > +obj-y +=3D state_overlay.o state-overlay.dtbo.o
> > +
> > +$(obj)/state-overlay.dtbo: $(state-overlay-dts) $(DTC) FORCE
> > +     $(call if_changed_dep,dtc)
> > +endif
> > +
> > +clean-files +=3D *.dtbo *.dtbo.S .*.dtso
> > diff --git a/common/state/state_overlay.c b/common/state/state_overlay.=
c
> > new file mode 100644
> > index 000000000000..b3f68eaea4b2
> > --- /dev/null
> > +++ b/common/state/state_overlay.c
> > @@ -0,0 +1,29 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +#include <common.h>
> > +#include <init.h>
> > +#include <of.h>
> > +#include <linux/err.h>
> > +
> > +extern char __dtbo_state_overlay_start[];
> > +
> > +static int state_overlay_apply(void)
> > +{
> > +     struct device_node *root =3D of_get_root_node();
> > +     int ret;
> > +
> > +     if (!root) {
> > +             pr_err("no live devicetree yet, skipping state overlay\n"=
);
> > +             return 0;
> > +     }
> > +
> > +     ret =3D of_overlay_apply_dtbo(root, __dtbo_state_overlay_start);
> > +     if (ret) {
> > +             pr_err("failed to apply state overlay: %pe\n", ERR_PTR(re=
t));
> > +             return ret;
> > +     }
> > +
> > +     of_alias_scan();
> > +
> > +     return 0;
> > +}
> > +postcore_initcall(state_overlay_apply);
>
> This can be used to apply arbitrary overlay content, so the option name
> should probably not be state specific.
>
> Cheers,
> Ahmad
>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>

Best regards,
Anis


