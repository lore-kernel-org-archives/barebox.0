Delivery-date: Wed, 02 Sep 2026 09:10:42 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x1f7J-009vNE-1E
	for lore@lore.pengutronix.de;
	Wed, 02 Sep 2026 09:10:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id EACC820585C
	for <lore@pengutronix.de>; Wed, 02 Sep 2026 09:10:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hPGxHMMi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjvcX922TESZjEO/Z8dshTsgVwZhiE72LR6zToNs72Y=; b=hPGxHMMiLVGgCth6TjrbQaP4EZ
	9OX+xy0T/R64lippY9VkWSaL3WlOjU1Kq5WrBX5Cgi9nxz91t+ykZ+jc6NNDuujL2jFO1/uG2+Dvu
	0FQn5E2OID6pLQMnKJELaM31jVS6DCUQ22GKumf+4mFQ+cu48jCnPOwdzc5C6tnN16JauuL1vUSWo
	dhpAZkluYSCttT5/Yn90anAFxRALSNDoYxtiRQ87a7ka+78resZDJN+p2I4HEnR4fgnjBJp7Ib7F1
	7lK0wbRj3lMTS+mzffeFBVOleTVOQkHKK2Mv0DWvOk0GBSHyJpDw6yMv58X8wUtL5iIoGimBgIqLm
	s0vOE4pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f6A-0000000DuJC-03sG;
	Wed, 02 Sep 2026 07:09:30 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1f66-0000000DuID-0qSj
	for barebox@lists.infradead.org;
	Wed, 02 Sep 2026 07:09:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6898C201AAE;
	Wed, 02 Sep 2026 09:09:24 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1f64-004YLZ-17;
	Wed, 02 Sep 2026 09:09:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x1f64-000000017AK-1AFY;
	Wed, 02 Sep 2026 09:09:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
References: <20260831-usb-device-lifetime-v1-0-6adf4054b909@pengutronix.de>
Subject: Re: [PATCH 00/13] USB: Make USB devices removable
Message-Id: <178833296427.265807.12649360474471802094.b4-ty@pengutronix.de>
Date: Wed, 02 Sep 2026 09:09:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_000926_491567_CC1F0A66 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Mon, 31 Aug 2026 15:20:07 +0200, Sascha Hauer wrote: >
    So far we assumed that USB devices are not disconnected during barebox >
   lifetime, so we would only ever add to the list of devices. This ser [...]
    
 
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
X-Rspamd-Queue-Id: EACC820585C
X-Spamd-Result: default: False [-57.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::28:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_ALL(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 43f54rjyq45youyu9objr3uddo1dka3g
X-Rspamd-Server: mx1


On Mon, 31 Aug 2026 15:20:07 +0200, Sascha Hauer wrote:
> So far we assumed that USB devices are not disconnected during barebox
> lifetime, so we would only ever add to the list of devices. This series
> relaxes this assumption. USB storage devices can now be disconnected at
> runtime and the disk devices associated with them properly unregister
> and filesystems are unmounted. Accesses to files on dead devices are
> caught and return an error. Re-plugging USB storage devices works as
> well. We still don't detect changes to the USB topology automatically,
> but a subsequent "usb" command will bring the barebox topology up to
> date with the hardware state.
> 
> [...]

Applied, thanks!

[01/13] usb: don't report device removal after the device name is gone
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a3a32e30619 (link may not be stable)
[02/13] fs: devfs: count an open partition as an open device
        https://git.pengutronix.de/cgit/barebox/commit/?id=ab0c932dd010 (link may not be stable)
[03/13] block: propagate errors from blockdevice_unregister()
        https://git.pengutronix.de/cgit/barebox/commit/?id=1edfb7837469 (link may not be stable)
[04/13] fs: add cdev_umount_all()
        https://git.pengutronix.de/cgit/barebox/commit/?id=7a119d2b8b0d (link may not be stable)
[05/13] block: add blockdevice_unregister_removed()
        https://git.pengutronix.de/cgit/barebox/commit/?id=98316b89f396 (link may not be stable)
[06/13] usb: storage: tear the disk down properly on disconnect
        https://git.pengutronix.de/cgit/barebox/commit/?id=5c91d53ed7f0 (link may not be stable)
[07/13] usb: hub: cancel pending port scans of a removed device
        https://git.pengutronix.de/cgit/barebox/commit/?id=d147d245288d (link may not be stable)
[08/13] usb: reuse the addresses of removed devices
        https://git.pengutronix.de/cgit/barebox/commit/?id=c6f7d39f4130 (link may not be stable)
[09/13] usb: hub: detect disconnected devices
        https://git.pengutronix.de/cgit/barebox/commit/?id=74a489a0b2c1 (link may not be stable)
[10/13] usb: don't keep a dangling root device on enumeration failure
        https://git.pengutronix.de/cgit/barebox/commit/?id=b942752b6cac (link may not be stable)
[11/13] usb: hub: limit the number of ports to USB_MAXCHILDREN
        https://git.pengutronix.de/cgit/barebox/commit/?id=03ec8992741f (link may not be stable)
[12/13] usb: detect unplugged devices on transfer errors
        https://git.pengutronix.de/cgit/barebox/commit/?id=d0bbc92c2d4f (link may not be stable)
[13/13] usb: storage: stop talking to a device that is gone
        https://git.pengutronix.de/cgit/barebox/commit/?id=d143876e10ba (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



