Delivery-date: Thu, 27 Aug 2026 14:56:53 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzZf2-007ne0-1L
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 14:56:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 03CAB200F45
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 14:56:53 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="eajT9/cI";
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r7xYQI1JKcSjK5eZZ/tpu0/3pUmSzlfm0miNO50XuuU=; b=eajT9/cIXgwI6YOtpLdnN7UbeU
	ZhSZt69Bz+z85DcMq+YI6zEUsrPB08CQwgVqd8L4hYutvN9x/Jyi9QC+tfm9XFUsqLUiVlz1xbiAS
	6eOJmb+mjcM5qSgxoCip9U08g4bGsjt8KVwiaw8Favw1YqbyLalnYTsaQt8pTy0fGpQSvwYrpUATI
	ocI0adNpjQxciAg4+L59VLRYn18mAYlMIInfjjxmcZBGw8m/ThCT1t7GR73yxNjmb8/XdsHq9B3v0
	jgnLmCfcsquZ9fUa1pYRa8N8QTNDx3EHhHp07rVcuj/CZlakOOK3CLsW7RIvk8TdIoIRKonT8g3rw
	LTydNPPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZds-000000040DG-3D7W;
	Thu, 27 Aug 2026 12:55:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzZdo-000000040Az-1s7L
	for barebox@lists.infradead.org;
	Thu, 27 Aug 2026 12:55:39 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 230C0200F45;
	Thu, 27 Aug 2026 14:55:30 +0200 (CEST)
Message-ID: <dbce59c4-cafd-4000-96d5-12939a9de217@pengutronix.de>
Date: Thu, 27 Aug 2026 14:55:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] spi: rockchip: initialize bus_num to -1
To: barebox@lists.infradead.org, support <support@armdesigner.com>
References: <202608272006258002394@armdesigner.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <202608272006258002394@armdesigner.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_055536_707406_FE1184E6 
X-CRM114-Status: GOOD (  19.74  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/27/26 2:06 PM, support wrote: > Applied, thanks!
   I have no idea what this is. 
 
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xni1u4eazg34qas4p17ihfk5eomfafz3
X-Rspamd-Queue-Id: 03CAB200F45

Hi,

On 8/27/26 2:06 PM, support wrote:
> Applied, thanks!  

I have no idea what this is.

Before pointing a bot that can send email at the mailing list, please
start a (human) discussion about what you are think this accomplishes.

Also generally this style of mails is not acceptable. It confuses users
to say you apply patches (apply where?) and the formatting is broken.

Ahmad

> 
> 
> 
> 
> Thanks for the quick turnaround on this one. This bug class is more common than the MNT report suggests — any RK3588/RK3568 board 
> 
> 
> 
> design with a PMIC on one SPI controller and peripherals on another (which is the standard topology for RK806-based designs, 
> 
> 
> 
> e.g. our own boards with the PMIC on SPI2) hits the same bus_num=0 collision the moment a second controller is enabled. 
> 
> 
> 
> So far most of these designs simply never enabled two controllers in barebox, which is probably why it stayed latent this long. 
> 
> 
> 
> 
> One observation on the failure mode itself: the XFM_RO while(1) hang in rockchip_spi_pio is a separate latent hazard. Even with bus routing now correct, 
> 
> 
> 
> any future misrouted or wrong-device read can still wedge the bootloader with no timeout and no diagnostic output. 
> 
> 
> 
> Might be worth a follow-up hardening patch — a transfer timeout in the PIO loop would turn a silent hang into a loud error at the cost of a few lines.
> 
> 
> 
> We're tracking this fix for our RK35xx barebox evaluation (secure boot path for industrial designs), so it's on the regression checklist for the next release.
> 
> 
> 
>  --Boardcon Embedded Design — Rockchip-based industrial SBCs & SoMs
> 
> 
> 
> https://www.boardcon.com
> 
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



