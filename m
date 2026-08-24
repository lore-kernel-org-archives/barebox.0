Delivery-date: Mon, 24 Aug 2026 10:12:44 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyPnQ-006dTw-0L
	for lore@lore.pengutronix.de;
	Mon, 24 Aug 2026 10:12:44 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D21DA2009FB
	for <lore@pengutronix.de>; Mon, 24 Aug 2026 10:12:43 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Al6v3REA;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Usotmol8p/pGw9dnqGmEpz2PMiYC0d1LTSHTbnwaHEk=; b=Al6v3REA/RA9V0N5Vd2qVs5Do9
	bbmqVoD9/9IDKwpWEilYeut9r6UH9NPajFx1KnDhqP+mVZozBRZzkVDTLipaV1PFunyi6qqtmTSkT
	vFortNceCZ9HQUnjSYioamblOn0RZGVXaBPy3yOtHMysVqnjqbHZFfrNufqeOz6Fkxv+Y/znN0VwJ
	itWqJJgnwmrDzWFRKi+qKm80gOfD/NQ/wEo+ppPxxKK/mPRySx/gJwMArSXdICgd8/a3ZdH1A+UED
	Elw9LNdBxmgU1V55h3BTbkFJdGPpeEDyupfPtFIQLtiV/eut4wvk+gdhItWQhB2dwoiu2VyGPW7eN
	xRnA99gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPm3-0000000GBOm-2O5H;
	Mon, 24 Aug 2026 08:11:19 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyPlz-0000000GBOM-1zZa
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 08:11:18 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3CB11200F4F;
	Mon, 24 Aug 2026 10:11:13 +0200 (CEST)
Message-ID: <713c23b4-9089-43c3-bb14-fef649849943@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v4 05/14] drivers: fan: add fan subsystem, core API and
 G76x fan controller driver
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260813-rn102-rn104-series-v4-5-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
 <20260813-rn102-rn104-series-v4-5-f932ac63efa0@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Aug 2026 08:11:12 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_011115_691398_D17FBE92 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Luca, On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
    > + > +struct fan_ops { > + int (*get_fan_startv)(struct device *dev, char
    *buf); > + int (*set_fan_startv)(struct device *dev, unsigned long val);
   [...] 
 
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
X-Stat-Signature: sxyctgggq86gg3zpcjarubd44y4z5rnh
X-Spamd-Result: default: False [-3.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
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
X-Rspamd-Queue-Id: D21DA2009FB

Hi Luca,

On 2026-08-13 17:26, Luca Lauro via B4 Relay wrote:
> +
> +struct fan_ops {
> +	int (*get_fan_startv)(struct device *dev, char *buf);
> +	int (*set_fan_startv)(struct device *dev, unsigned long val);
> +
> +	int (*get_gear_multiplier)(struct device *dev, char *buf);
> +	int (*set_gear_multiplier)(struct device *dev, unsigned long val);
> +
> +	int (*get_fan_ppr)(struct device *dev, char *buf);
> +	int (*set_fan_ppr)(struct device *dev, unsigned long val);
> +
> +	int (*get_pwm_polarity)(struct device *dev, char *buf);
> +	int (*set_pwm_polarity)(struct device *dev, unsigned long val);
> +
> +	int (*get_clk_freq)(struct device *dev, char *buf);
> +	int (*set_clk_freq)(struct device *dev, unsigned long val);
> +
> +	int (*get_clk_div)(struct device *dev, char *buf);
> +	int (*set_clk_div)(struct device *dev, unsigned long val);
> +
> +	int (*get_control_mode)(struct device *dev, char *buf);
> +	int (*set_control_mode)(struct device *dev, unsigned long val);
> +
> +	int (*get_output_mode)(struct device *dev, char *buf);
> +	int (*set_output_mode)(struct device *dev, unsigned long val);
> +
> +	int (*get_ooc_detection)(struct device *dev, char *buf);
> +	int (*set_ooc_detection)(struct device *dev, unsigned long val);
> +
> +	int (*get_failure_detection)(struct device *dev, char *buf);
> +	int (*set_failure_detection)(struct device *dev, unsigned long val);
> +
> +	int (*get_failure_state)(struct device *dev, char *buf);
> +	int (*get_ooc_state)(struct device *dev, char *buf);
> +
> +	int (*get_fan_speed)(struct device *dev, char *buf);
> +	int (*set_fan_speed)(struct device *dev, unsigned long val);
> +
> +	int (*get_fan_rpm)(struct device *dev, char *buf);
> +	int (*set_fan_rpm)(struct device *dev, unsigned long val);
> +
> +	int (*get_fan_level)(struct device *dev, char *buf);
> +	int (*set_fan_level)(struct device *dev, unsigned long val);

Converting the integer value to a string shouldn't be delegated to the
drivers. When the fan level can be expressed as unsigned long, then
get_fan_level() should take a unsigned long * as argument as well.

Also the user facing interface you could use device parameters which
makes the fan command almost go away.

Reworking the parameters above along the lines:

        dev_add_param_uint32(&fan->dev, "rpm", fan_rpm_set, fan_rpm_get, &f=
an->rpm, "%u", fan);

Will give you scriptable access to the parameters without an additional
command.

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



