Delivery-date: Mon, 31 Aug 2026 13:54:48 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x10b9-009GHi-1a
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 13:54:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8FC2202475
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 13:54:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OojsBs9V;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=aWdBKDEX;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YTfzUUsCs+h20w3jll8+pItSlVnq+B8mZQu5/YzS9Ng=; b=OojsBs9VHhxvAcGo/+xPCKljXl
	7+6h7O2kY5LcCi0PNdlfv1pTMI/mHT09O5o7Mzra/UVeLjgpaWFXuPZES/qSDV8jVGUi3jO+F4l/T
	ZvAqWFVaqgzOFAaX26qwb95cn0YnrMnht+WEJW5Ky0v9mwW14rs+9jkrZFXowzbptpDuhd43d1PBv
	y3ailf4bxfTznsV+VNx1UPCJRZMFUPBNClLWwu16DKgrvUUM1OxNFDpKo2FzQUb7w6DJoEaW2rSwX
	ADKeeaAuvcpKR5Y97MeBALSmuAAZuug097+XNF/RiWz8iMEUFEcI4m3oZQ8LUpKPG+kG4qjWgTeCT
	10w540Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10Zy-00000009FLi-0CEm;
	Mon, 31 Aug 2026 11:53:34 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10Zv-00000009FKo-2jhB
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 11:53:33 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-c25344a8c6cso443179466b.0
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 04:53:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788177209; cv=none;
        d=google.com; s=arc-20260327;
        b=Pa8Fj4Xcaqon/1TtuuEA2jkXl/rr2AvEqRKnxvTqTC3qAxJ2i5VnZsw6U77g4n6/LV
         EHGoYsvWlKiGe9QbwjYf/NPGIrmSKB1RV2bXl8I2IUYOLq/af9rAqks00wj4rC5tlncd
         raJWvz74cRGCfNOyAfsK6NktikV7EzJCwQcCe2541BhW8H6monpc6noIfWZ5bcJnaWO6
         yWu9XiyqFU/YbIx1YzzSwyL4voYbTPjgv2BTrD9Kz/KeJOFhFEp6cVjgf7QLZODQZPfK
         INz33RN73VZvQytNCAvVgpj6CCFPBeEe2SfqYUw780fa3H0yx93YoPNpibAvavbuTij+
         KOWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YTfzUUsCs+h20w3jll8+pItSlVnq+B8mZQu5/YzS9Ng=;
        fh=FJPqWWw+xQJ6cwVkD4yNXB5T4SU0Brnzwp0T5z5Kexk=;
        b=CoQ6AO2VYnQ4HKCp/0kdJy07fqlLkd173xYSajeZtq7IQfa0mYeNTpTZ1b4aaVTBFo
         VX2GkTA+2ejc2Dci0Pe6a3QTpLxr8YkHfcvdjMU1GeIjyzjkP9OSUvH7WYY5j3bKC2TF
         Qse491djV2kG8Ga3TTjVOIm88rtjp3NRebcD/x0lqy1/OE613NOb6OY+bwqMCzDli+YN
         nNwFbIGE3T1sErl3ymayDiCByXIgJ0oZVE2OrGy8HP0PK5n+VKyF2AyPG7IVNcn3T/r+
         zhhG7DDrHJLMzgDgt76P2VC4joFNjupB9cqXh4ZG+WWLdEKMZZTQJarZYeemt7QPNI71
         AnPg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788177209; x=1788782009; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=YTfzUUsCs+h20w3jll8+pItSlVnq+B8mZQu5/YzS9Ng=;
        b=aWdBKDEXUeutNmoZwnueZNwVhesH2V22y5+tnbIUzK9f5uo5OeBvEr7H9CgzCWNqPS
         aifMYNM5IJZvI3Wqm4QOmHxvF/ACt4MlWqUphzMxb9jUT4hjVLZAdWumFAWaE3ND2J5u
         qW3/BcYFMeL36ptYTBZ8uFJ6kz7bTbDp37YP76Jw4XAXEv+EM3z6VkhLErxJe5QXwyk+
         J2CmP00c2DwgdRalCOdvZc/WW9orp6CnbnXmKxqx0LssCN/WtaKqKvCL3a6nMhUME4hk
         eQvD/XUNQnEpHOGQoxITpOJ0N1AiFJrn/0xnYf1hzadGq1KLKkmM5LPZfZBt1KwtKTz8
         GBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788177209; x=1788782009;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YTfzUUsCs+h20w3jll8+pItSlVnq+B8mZQu5/YzS9Ng=;
        b=Fo3edHeyTGMosKmQDkMy1MdmCTI/ngXDcTHygOKoF7cGgw39GOim4s+/SmI3g1GogA
         j6TJzr1d3uagCPtmU02ZuZ+MJHWJuBN6lumTxaBimm2mbXvZWXBUPluG7uQLQQTKXf5T
         +OMhJaiG6ajj3lYXHD55LiMde3kEzNM3s+NP4GSHok/qNcbxnokRPmXk5okvqA2vh37k
         kRDOhM8WS/L3PR2l40r7uQBw8UmOxZ6FWJrduVC4AG5ir3lc0TujAu0rngFsXkaBmOgV
         ytlII4i16BZq3y3jVqGxVyQOOvca1sBx9QyljoVCJKbsQXY9922FkMnEGqkQplqDP4Sx
         48GA==
X-Gm-Message-State: AFuF++mbp6WfI4tnAPlupeX7H8H40YSg/bCpRtHSfL2yofwsniYbCgm9
	rytZNTdDxFFzduH8uaKzx7B4RrFFPkGZANk5cpZCuHe7YUjiNSDLJknvWQnP0f/nJZLH9uTq3Lj
	KRC+aAJ14uSXVCXKR8jfy/Eh1MpnZBU2Il349RyY=
X-Gm-Gg: AR+sD11hE2lVShp8nZyvM65BwPxMTatKaep08y1/Qxws/DFw/4GtLu3I4a/f0JNobfo
	EPKjEGL9wnxHI/B2i9eDZfVBot+zB4zxqqvs8vHXwgjjHjHNREXeuj3ytJUj29m4CCXGKa9WgYw
	MHgUvFlizqC/GDTrsP0Rdp0iq0QzbvQaJsDeCP6QGaztIIEcJIZAnWcXmFwYK09f5NS8DTW6JDg
	cE4zUecMUwuy0ii9gM45ScB6c0zcEROPaAbesMFeKq0fSu8mfB8RvV5yVAGXLnm0vd+vF1m05s3
	iPm2WmIbuXJYjRAUDwBEpu12Y57EavNMoLseQqZO
X-Received: by 2002:a17:907:9622:b0:c1f:29ce:76a1 with SMTP id
 a640c23a62f3a-c25571b1fa3mr1712977466b.19.1788177208508; Mon, 31 Aug 2026
 04:53:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
 <20260813-rn102-rn104-series-v4-5-f932ac63efa0@gmail.com> <713c23b4-9089-43c3-bb14-fef649849943@pengutronix.de>
In-Reply-To: <713c23b4-9089-43c3-bb14-fef649849943@pengutronix.de>
From: Luca Lauro <famlauro93l@gmail.com>
Date: Mon, 31 Aug 2026 13:53:17 +0200
X-Gm-Features: AcwNN1XGQttMmfEhX6kkVg_FGQvjuqa8HYTORL8zGYVVlY-6y7W8NHVnX-PYMpc
Message-ID: <CANRe2WKLBADaD7z3HqmQ2LVEFa46VQrC=rYwcNdB1wmvxDN-QA@mail.gmail.com>
Subject: Re: [PATCH v4 05/14] drivers: fan: add fan subsystem, core API and
 G76x fan controller driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_045331_743928_2E2F0CFE 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Il giorno lun 24 ago 2026 alle ore 10:11 Sascha Hauer ha scritto:
    > > Hi Luca, > > On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote: > >
   + > > +struct fan_ops { > > + int (*get_fan_startv)(struct [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:629 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Server: mx1
X-Stat-Signature: o5mx4cinrafhnipynuym33iowjy9rani
X-Rspamd-Queue-Id: B8FC2202475
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
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[famlauro93l@gmail.com,barebox-bounces@lists.infradead.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::629:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Il giorno lun 24 ago 2026 alle ore 10:11 Sascha Hauer
<s.hauer@pengutronix.de> ha scritto:
>
> Hi Luca,
>
> On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > +
> > +struct fan_ops {
> > +     int (*get_fan_startv)(struct device *dev, char *buf);
> > +     int (*set_fan_startv)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_gear_multiplier)(struct device *dev, char *buf);
> > +     int (*set_gear_multiplier)(struct device *dev, unsigned long val)=
;
> > +
> > +     int (*get_fan_ppr)(struct device *dev, char *buf);
> > +     int (*set_fan_ppr)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_pwm_polarity)(struct device *dev, char *buf);
> > +     int (*set_pwm_polarity)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_clk_freq)(struct device *dev, char *buf);
> > +     int (*set_clk_freq)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_clk_div)(struct device *dev, char *buf);
> > +     int (*set_clk_div)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_control_mode)(struct device *dev, char *buf);
> > +     int (*set_control_mode)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_output_mode)(struct device *dev, char *buf);
> > +     int (*set_output_mode)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_ooc_detection)(struct device *dev, char *buf);
> > +     int (*set_ooc_detection)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_failure_detection)(struct device *dev, char *buf);
> > +     int (*set_failure_detection)(struct device *dev, unsigned long va=
l);
> > +
> > +     int (*get_failure_state)(struct device *dev, char *buf);
> > +     int (*get_ooc_state)(struct device *dev, char *buf);
> > +
> > +     int (*get_fan_speed)(struct device *dev, char *buf);
> > +     int (*set_fan_speed)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_fan_rpm)(struct device *dev, char *buf);
> > +     int (*set_fan_rpm)(struct device *dev, unsigned long val);
> > +
> > +     int (*get_fan_level)(struct device *dev, char *buf);
> > +     int (*set_fan_level)(struct device *dev, unsigned long val);
>
> Converting the integer value to a string shouldn't be delegated to the
> drivers. When the fan level can be expressed as unsigned long, then
> get_fan_level() should take a unsigned long * as argument as well.
>
> Also the user facing interface you could use device parameters which
> makes the fan command almost go away.
>
> Reworking the parameters above along the lines:
>
>         dev_add_param_uint32(&fan->dev, "rpm", fan_rpm_set, fan_rpm_get, =
&fan->rpm, "%u", fan);
>
> Will give you scriptable access to the parameters without an additional
> command.

Thanks for the feedback.

Just to give some context:: the fan subsystem (fan.c / fan.h) is meant to
be the hardware abstraction layer for the various fan controller
hardware-specific
drivers adapted from the Linux kernel.
The =E2=80=9Cfan=E2=80=9D command was only intended as a thin user-facing f=
rontend on top
of that HAL, similar in spirit to how barebox exposes unified interfaces
for GPIO, LEDs, etc.

I agree that device parameters provide a more compact interface in barebox,
and they already cover most of the use cases that the command was meant to
address.

Before I rework the series, I would like to understand your preference for
the user-facing layer: should the fan subsystem rely entirely on device
parameters, or do you see value in keeping a small generic command on top
of the HAL? I can follow either direction; just let me know which one fits
better into barebox.

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


