Delivery-date: Fri, 28 Aug 2026 16:40:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzxkj-008BjF-1z
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 16:40:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 353DB200C95
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 16:40:22 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TFr5l6M2;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6zxVG2stSeOU2wldDzm4AKqrQyR9LGyjr5SfOXdrTfU=; b=TFr5l6M28T4yUzLkFbPIHq9DHI
	eaUljHoSkkcAm4Vk3CCHxIJGYlKcllNcFYnP1DZrzZQ5xlyzrp0pw0Ax+D5lp0611AKOYxMc9hqtf
	W04U9tPVc3lRrZKmZdJTxcsXUOctTxsBXgTInduxgDHI6BvaHsChkZhRqFQZMD42TtlU1fTGWC3dz
	8xrQpSfg9nB0Vi6LGU4VVO8TGVrofC6f6250n36w9lnlYsmUiUUL4b2C92WughfS35yxDU9/GvbzR
	JPxjGLCmq7r4M8UklOz6XYN43/HjsfLDhhlXfG+uHho4AhYrxL5HDpSlFDFKj2V3OVZQkN0dVQYbP
	QjRGUqKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxjc-000000060NR-0NOm;
	Fri, 28 Aug 2026 14:39:12 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzxjY-000000060Mz-1Kvv
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 14:39:10 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9743B202055;
	Fri, 28 Aug 2026 16:39:05 +0200 (CEST)
Message-ID: <dbb6842d-2ab6-4aca-bd2f-22777c0d5f99@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
To: chalianis1@gmail.com
In-Reply-To: <178783210670.649267.1211412247901753676.b4-reply@b4>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
 <178783210670.649267.1211412247901753676.b4-reply@b4>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 28 Aug 2026 14:39:05 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_073908_508409_DCD7D315 
X-CRM114-Status: GOOD (  18.99  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-27 14:01, chalianis1 wrote: > On 2026-06-30 12:41
    +0000, Sascha Hauer wrote: > > Hi, > > > > On 2026-06-23 10:26, chalianis1
    wrote: > > > From: Anis Chali <anis.chali@ro-main.com> > > > > > [...] 
 
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
Cc: chalianis1@gmail.com, barebox@lists.infradead.org, Anis
 Chali <anis.chali@ro-main.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-55.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:chalianis1@gmail.com,m:barebox@lists.infradead.org,m:anis.chali@ro-main.com,s:lore@pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,ro-main.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qrkazxx9438ut3tmgozzja995nr6d5zk
X-Rspamd-Queue-Id: 353DB200C95

On 2026-08-27 14:01, chalianis1 wrote:
> On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
> > Hi,
> >=20
> > On 2026-06-23 10:26, chalianis1 wrote:
> > > From: Anis Chali <anis.chali@ro-main.com>
> > >=20
> > > Add USBDISK_NAME string option to allow customizing the USB storage
> > > device name, defaulting to "disk" to preserve existing behaviour.
> >=20
> > I just sent a patch which registers USB storage devices with usbdiskx
> > which doesn't require compile time changes. I hope that suits your needs
> > as well.
> >=20
> > Sascha
> >
> Hi,
>=20
> In my side I am migrating to master so removed my patch for this and
> I noticed that alias is not mounted to be used as /mnt/usbdiskX, I am
> just asking to know if it the expected behaviour in which case I will
> for an other way to get it mounted as /mnt/usbdisk0

But it still is automounted via /mnt/disk0, right? I just had a look
into it and yes, my patch doesn't add the automount for the aliases.

I'll look into it next week. I hope we get away to just create a
symbolic link from the alias to the real cdev, i.e. from /mnt/usbdisk0 to
/mnt/disk0. That would have to be done in
cdev_create_default_automount().

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



