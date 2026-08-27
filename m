Delivery-date: Thu, 27 Aug 2026 09:33:33 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzUc8-007iuC-21
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 09:33:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5BFA2202052
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 09:33:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="a1Hb6//2";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eA/dEYMlLyRbmVHavl/GrK/iHtHDhcRPDJ2pf9uWNXI=; b=a1Hb6//2cJE7WNrrpmbAIcXMYY
	H33XTqTO78YtLOLId3qo4PW1P4A3GcK8EnivWZCqumwjOj+6kbab+8rX7QYRVxuecQKd2Av9sioON
	UppEDSeXwHXfhotAIDHk4dMSnpIo4lvVL599cxEc8gYq5MQc+jUahp88W5O17ojVYyDkyaEblmWhl
	3LO2vNBv2spnx0Js0mHhctid2sXTDHfJS77yS0t0VH8rQ3U7RmtPa0y7qgMzOXw+1J60xZnCIaTnw
	oXBXStIS9RTEq/tqcphAFmMHa++qpc5YC3ed+1kVPEZxkB3V5X/IWNuvqeSAO3ACADIw+MBa1wu31
	MheHebug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzUaf-00000003Ysw-1p2Q;
	Thu, 27 Aug 2026 07:32:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzUab-00000003YsP-2bqX
	for barebox@lists.infradead.org;
	Thu, 27 Aug 2026 07:31:59 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E4881202031;
	Thu, 27 Aug 2026 09:31:54 +0200 (CEST)
Message-ID: <71bd2269-c1fc-424a-bf18-950e6359c32f@pengutronix.de>
Date: Thu, 27 Aug 2026 09:31:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT 0/4] efi: payload: allow extension via fragments
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
 <178778497813.821008.831123108674904992.b4-reply@b4>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <178778497813.821008.831123108674904992.b4-reply@b4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_003157_837633_9E643B65 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Anis, On 8/27/26 12:56 AM, chalianis1@gmail.com wrote:
    > On 2026-08-26 14:15 +0200, Ahmad Fatoum wrote: > does this work for using
    state fragment on arm platforms? > I tried quickly to compile with a dtsi
    f [...] 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: yorketnhde9jyub3ux1jnf7zjyp7t7p7
X-Rspamd-Queue-Id: 5BFA2202052

Hello Anis,

On 8/27/26 12:56 AM, chalianis1@gmail.com wrote:
> On 2026-08-26 14:15 +0200, Ahmad Fatoum wrote:
> does this work for using state fragment on arm platforms?
> I tried quickly to compile with a dtsi for RPi4 and get an error
> because the emmc label is not known for RPi3.

The fragment is appended to all device trees that are being built. If
you want to customize it per device tree, use the preprocessor

#ifdef bcm2711_rpi_4_dts
	backend = <&emmc2>;
#endif

There are similar macros defined for every DT, so you can have one
fragment that covers multiple boards or multiple fragments that each has
an ifdef to cover only a single board.

The alternative would be disabling other boards. I see now though that
this wouldn't fully work because empty.dts is built always, so I should
probably limit its build to only the EFI payload case for now.

Will do so in a later revision until I get more feedback.

Having a compile error when there is a mismatch is one reason why this
might be preferable to overlays. There's work underway for device tree
addons, which looks really interesting. Perhaps when that's widely
available, it would be a better fit for providing the state snippet as
boards could define an API of sorts to make it easy to plug addons into
them.

Thanks for giving this a try!
Ahmad

> ./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> make[4]: *** [scripts/Makefile.dtbs:100: arch/arm/dts/fallback.dtb] Error 2
> make[4]: *** Waiting for unfinished jobs....
>   ENV     defaultenv/defaultenv-2-base.bbenv
> ./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> make[4]: *** [scripts/Makefile.dtbs:95: arch/arm/dts/bcm2837-rpi-cm3.dtb] Error 2
>   CC      common/version.o
> ./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"
> 
> ERROR: Input tree has errors, aborting (use -f to force output)
> make[4]: *** [scripts/Makefile.dtbs:95: arch/arm/dts/bcm2837-rpi-3.dtb] Error 2
> make[3]: *** [scripts/Makefile.build:468: arch/arm/dts] Error 2
> make[2]: *** [scripts/Makefile.build:468: arch/arm] Error 2
> make[2]: *** Waiting for unfinished jobs....
>   AR      common/built-in.pbl.a
>   AR      common/built-in.a
> make[1]: *** [/home/anicha1/sources/barebox-intern/Makefile:1801: .] Error 2
> make: *** [Makefile:200: __sub-make] Error 2
> 
> best regards.
> Anis
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



