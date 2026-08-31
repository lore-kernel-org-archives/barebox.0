Delivery-date: Mon, 31 Aug 2026 15:46:01 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x12Km-009IRE-3B
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 15:46:01 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 35B11201ED7
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 15:45:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ekhu995S;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/63XkiuRziDiBiCAntG6LaIVIQcFK2ec16np16XAtE=; b=ekhu995S47c58P7E2x0VsILVDX
	pNUtvCaS6AP4vCFnC+DdxgO4fQOvTGv5GuUs3s7OtQHaGmPxq69uat3YbEfby/CWfA2DaRtozgXxx
	JXpO3hc4wed7VrlusJquL7y1FWaRWfDq7qvpFAitmiJ5C39ABBpOdFgOz6O2xW4WZ1BNyYV60kURa
	wmEWcVrsWcqtopjUWaXiZRPpea89hKk/AoLzBaSIAxc4ZYJNeJuz61JTWrbZpm0wj8fhUlxUWRMxA
	i8j+MT3ZFD4DyHpf84mOgmEnnhcT021bvFE0dATgnnDE1wCj9IX/Q6utciXISn0nouW5lkBTO8Trf
	RAXdee8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11kX-00000009MfF-3NJO;
	Mon, 31 Aug 2026 13:08:33 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x11kT-00000009Me9-2ddV
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 13:08:32 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 96C64201BCA;
	Mon, 31 Aug 2026 15:08:23 +0200 (CEST)
Message-ID: <6ec6ad6e-05d4-4d1b-b3ac-49a702ae6ab5@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 05/14] drivers: fan: add fan subsystem, core API and
 G76x fan controller driver
To: "Luca Lauro" <famlauro93l@gmail.com>
In-Reply-To: <CANRe2WKLBADaD7z3HqmQ2LVEFa46VQrC=rYwcNdB1wmvxDN-QA@mail.gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
 <20260813-rn102-rn104-series-v4-5-f932ac63efa0@gmail.com>
 <713c23b4-9089-43c3-bb14-fef649849943@pengutronix.de>
 <CANRe2WKLBADaD7z3HqmQ2LVEFa46VQrC=rYwcNdB1wmvxDN-QA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 31 Aug 2026 13:08:23 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_060829_823395_CB54A1C8 
X-CRM114-Status: GOOD (  29.66  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-31 13:53, Luca Lauro wrote: > Il giorno lun 24
   ago 2026 alle ore 10:11 Sascha Hauer > <s.hauer@pengutronix.de> ha scritto:
    > > > > Hi Luca, > > > > On 2026-08-13 17:26, Luca Lauro via B4 Re [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Stat-Signature: wacg7rpkku1mfz8zgh1k8p5dba1d1zfi
X-Rspamd-Queue-Id: 35B11201ED7
X-Spamd-Result: default: False [-53.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	CC_EXCESS_BASE64(1.50)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:famlauro93l@gmail.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

On 2026-08-31 13:53, Luca Lauro wrote:
> Il giorno lun 24 ago 2026 alle ore 10:11 Sascha Hauer
> <s.hauer@pengutronix.de> ha scritto:
> >
> > Hi Luca,
> >
> > On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> > > +
> > > +struct fan_ops {
> > > +     int (*get_fan_startv)(struct device *dev, char *buf);
> > > +     int (*set_fan_startv)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_gear_multiplier)(struct device *dev, char *buf);
> > > +     int (*set_gear_multiplier)(struct device *dev, unsigned long va=
l);
> > > +
> > > +     int (*get_fan_ppr)(struct device *dev, char *buf);
> > > +     int (*set_fan_ppr)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_pwm_polarity)(struct device *dev, char *buf);
> > > +     int (*set_pwm_polarity)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_clk_freq)(struct device *dev, char *buf);
> > > +     int (*set_clk_freq)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_clk_div)(struct device *dev, char *buf);
> > > +     int (*set_clk_div)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_control_mode)(struct device *dev, char *buf);
> > > +     int (*set_control_mode)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_output_mode)(struct device *dev, char *buf);
> > > +     int (*set_output_mode)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_ooc_detection)(struct device *dev, char *buf);
> > > +     int (*set_ooc_detection)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_failure_detection)(struct device *dev, char *buf);
> > > +     int (*set_failure_detection)(struct device *dev, unsigned long =
val);
> > > +
> > > +     int (*get_failure_state)(struct device *dev, char *buf);
> > > +     int (*get_ooc_state)(struct device *dev, char *buf);
> > > +
> > > +     int (*get_fan_speed)(struct device *dev, char *buf);
> > > +     int (*set_fan_speed)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_fan_rpm)(struct device *dev, char *buf);
> > > +     int (*set_fan_rpm)(struct device *dev, unsigned long val);
> > > +
> > > +     int (*get_fan_level)(struct device *dev, char *buf);
> > > +     int (*set_fan_level)(struct device *dev, unsigned long val);
> >
> > Converting the integer value to a string shouldn't be delegated to the
> > drivers. When the fan level can be expressed as unsigned long, then
> > get_fan_level() should take a unsigned long * as argument as well.
> >
> > Also the user facing interface you could use device parameters which
> > makes the fan command almost go away.
> >
> > Reworking the parameters above along the lines:
> >
> >         dev_add_param_uint32(&fan->dev, "rpm", fan_rpm_set, fan_rpm_get=
, &fan->rpm, "%u", fan);
> >
> > Will give you scriptable access to the parameters without an additional
> > command.
>=20
> Thanks for the feedback.
>=20
> Just to give some context:: the fan subsystem (fan.c / fan.h) is meant to
> be the hardware abstraction layer for the various fan controller
> hardware-specific
> drivers adapted from the Linux kernel.
> The =E2=80=9Cfan=E2=80=9D command was only intended as a thin user-facing=
 frontend on top
> of that HAL, similar in spirit to how barebox exposes unified interfaces
> for GPIO, LEDs, etc.
>=20
> I agree that device parameters provide a more compact interface in barebo=
x,
> and they already cover most of the use cases that the command was meant to
> address.
>=20
> Before I rework the series, I would like to understand your preference for
> the user-facing layer: should the fan subsystem rely entirely on device
> parameters, or do you see value in keeping a small generic command on top
> of the HAL? I can follow either direction; just let me know which one fits
> better into barebox.

A command might be useful for more complex operations that can't be
expressed by device parameters, but for the bulk of the operations which
1:1 map onto a variable I would prefer device parameters over a command.

Note that using device parameters also allows you to provide defaults
via the environment.

But generally I question the ABI you have chosen. My first search didn't
reveal it because there is no g76x in the Kernel, but then I found the g762
driver which has a fairly complete device tree binding:

        g762@3e {
                compatible =3D "gmt,g762";
                reg =3D <0x3e>;
                clocks =3D <&g762_clk>;
                fan_gear_mode =3D <0>;
                fan_startv =3D <1>;
                pwm_polarity =3D <0>;
        };

The above things should just be configurable via device tree and not
even adjustable from the command line, as there's no point in doing so.

Also this fan subsytems looks as if it is written specifically for the
chip you are trying to handle, not as a generic subsystem.

I think you should have a closer look at how Linux does it, this might
give you some more guidance how this thing could be implemented.

Another thing: Please separate the subsystem patch from the driver(s),
it makes it easier to review the border between both.

I think you should send the fan stuff as an extra series, otherwise it
becomes the blocker for this series which as a whole already looks ok.

Sascha

--=20
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



