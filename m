Delivery-date: Thu, 13 Aug 2026 08:43:27 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuP9z-002awd-0D
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 08:43:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A310420128B
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 08:43:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=tSbfxMUe;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=anCo4s6rqBuQNq3Clu4+ueo8neTAJIob7A406ZFnbY8=; b=tSbfxMUeeQdkpZ
	76KEuEqt5OWgJxC8cOoUwaX9IhFg4xPlX56aNNZfhXvu8G6yB5/bX0If5vEAxAbxUib5ivjCWH5gu
	ftXMDP6cuGeHdgwWrFtdvU1lCNX+DeS/CN0q9EyGfjzZOpDmf16W0oCtrkGBgUY9Ckp/ow1lV//mq
	3NkoT4Mo2BZ4FkdmLVeydj7kenZUnpiWtwFGA09Ytpn1h0RauYUhZteQ6HKKHEKOdmc/KfgdkrBXB
	jkM52MoT3REbTYkX8h8CMhj1B66bcU1mv/ayYdovc3lee6VFUg6e1/7n7JBvMqD9qPMoC3needh48
	bf+DFpzQl60Ql0E4il7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuP8e-0000000HUxz-0LaY;
	Thu, 13 Aug 2026 06:42:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuP8a-0000000HUwu-0voh
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 06:42:02 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c58:8900:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C8BFF20128B;
	Thu, 13 Aug 2026 08:41:55 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: RK3588 optee question
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <CAP1tNvRw3xWZCs3KUFMH7=9f7s8Op8-5hQUCFiFE8LY+mcp+VQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Thu, 13 Aug 2026 06:41:55 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260812_234200_419328_12B6656F 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-12 17:44, Alexander Shiyan wrote: > Hello Sascha.
    > > After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=y the following build
    > errors occur: > > CC [P] arch/arm/mach-rockchip/rk3588.pbl.o > [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: cii38zhaoc3f5ho54e7rfix1eu13jn4d
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	MISSING_MID(2.50)[];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:eagle.alexander923@gmail.com,m:barebox@lists.infradead.org,m:eaglealexander923@gmail.com,s:lore@pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: A310420128B
Message-ID: <20260813064155.TaLuwgpeK6L0RQyT2kUY1bcP9b56R7SHE2RYtABI6cg@z>

On 2026-08-12 17:44, Alexander Shiyan wrote:
> Hello Sascha.
> 
> After enabling CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT=y the following build
> errors occur:
> 
> CC [P]  arch/arm/mach-rockchip/rk3588.pbl.o
> In file included from include/linux/array_size.h:6,
> from include/linux/kernel.h:6,
> from /home/ARM64/barebox/arch/arm/include/asm/barebox-arm.h:17,
> from include/mach/rockchip/bootrom.h:9,
> from arch/arm/mach-rockchip/bootrom.c:2:
> include/linux/build_bug.h:100:41: error: static assertion failed:
> "sizeof(structrockchip_scratch_space) <= CONFIG_SCRATCH_SIZE"

Set CONFIG_SCRATCH_SIZE=0x100000

Seems we have to look into it to get a sane default.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



