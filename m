Delivery-date: Fri, 11 Sep 2026 11:54:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x4xxx-000u9I-03
	for lore@lore.pengutronix.de;
	Fri, 11 Sep 2026 11:54:41 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=LBi6Dglz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id CF19B20100D
	for <lore@pengutronix.de>; Fri, 11 Sep 2026 11:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MLUQFvF5IP+OSZyKzGtZm7LamvsJGjmEqeis02iFZFc=; b=LBi6DglzSYucpf9nMutymqip4e
	Ve106MVut5ruwt9jKsiJSLjBZhPtssp2kc56whJA1p8Bwxa262aNBxQ/nug4Ec3e3qbg1fW2MSkDb
	3eyeitJBzIXC1oYlBIovOQ0UOFX/DbeBd3ieN3yJl4qGC7SKZPoXPdji5zgjgllX6ZJ9H9qdv32pH
	a2hBUf/Y0TV/4eOvjWh/J4Sqm7jftu4afE02Alz49s7CcwOIBoi2/H0izq0QjMUKjkTHrHTgYaZXG
	aUvRewuilLfwJ/ZSyhKHkOL69PNL8a1v91ejtSW2ZjONNxKfppKNba557CU0VrorDkalBIEyU7FFw
	nEijBd5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xwU-0000000GJEb-0hVn;
	Fri, 11 Sep 2026 09:53:10 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4xwQ-0000000GJD6-2X3U
	for barebox@lists.infradead.org;
	Fri, 11 Sep 2026 09:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8F8C5202043;
	Fri, 11 Sep 2026 11:53:02 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x4xwM-000OmV-1c;
	Fri, 11 Sep 2026 11:53:02 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x4xwM-00000009y5X-1pCh;
	Fri, 11 Sep 2026 11:53:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260904-v2026-06-0-topic-efi_usb-v4-0-6f3a59d8e338@pengutronix.de>
References: <20260904-v2026-06-0-topic-efi_usb-v4-0-6f3a59d8e338@pengutronix.de>
Subject: Re: [PATCH v4 0/6] Add support for USB-EFI devices in EFI Playload
Message-Id: <178912038242.2375914.4172477345692748667.b4-ty@pengutronix.de>
Date: Fri, 11 Sep 2026 11:53:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_025306_799702_9DCCCB09 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 04 Sep 2026 15:58:24 +0200, Fabian Pflug wrote: >
    When running as EFI payload, barebox does not have control over the USB >
    bus, but instead the BIOS will have enumerated and set up devices. [...] 
 
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
X-Rspamd-Server: mx1
X-Stat-Signature: 1htcmejoh7kkjqhmabctkehgyckk4tsm
X-Rspamd-Queue-Id: CF19B20100D
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


On Fri, 04 Sep 2026 15:58:24 +0200, Fabian Pflug wrote:
> When running as EFI payload, barebox does not have control over the USB
> bus, but instead the BIOS will have enumerated and set up devices.
> 
> The UEFI will also expose an API to access the devices, with one handle
> per USB interface.
> This driver will create an USB-Host per device and initialize the device
> and pass it onto barebox for driver initialization, allowing all
> usb-devices to be used.
> 
> [...]

Applied, thanks!

[1/6] efi: usb: add header for usb-efi
      https://git.pengutronix.de/cgit/barebox/commit/?id=a618c8160eb0 (link may not be stable)
[2/6] usb: core: make usb_set_maxpacket_ep public
      https://git.pengutronix.de/cgit/barebox/commit/?id=299cca8451f1 (link may not be stable)
[3/6] drivers: usb: host: efi: add efi io driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=a2d1fdffed5e (link may not be stable)
[4/6] efi: guid: add guid for usb host controller 2
      https://git.pengutronix.de/cgit/barebox/commit/?id=a47545ab783d (link may not be stable)
[5/6] test: x86: add test for uefi usb io
      https://git.pengutronix.de/cgit/barebox/commit/?id=b31adcfd28bc (link may not be stable)
[6/6] drivers: usb: add usb_add_device to add a device
      https://git.pengutronix.de/cgit/barebox/commit/?id=352e731edd61 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



