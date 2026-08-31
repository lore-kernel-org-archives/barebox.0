Delivery-date: Mon, 31 Aug 2026 13:18:48 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x102J-009Fqe-0d
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 13:18:48 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3DD0B201552
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 13:18:47 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=2QqPhwBm;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Aaq1RDoV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:
	In-Reply-To:Cc:To:From:Subject:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CDf6X+RpM1P7Tl68Zhdn0vbqa98bUzhb6qp7+tDv7v0=; b=2QqPhwBmhNUeo3FFn3JmjV+DKs
	vW0gfS45mXhZxj2UOm4nN6XV8Ma1/w0kOOYRldHRKjWnWkht6kYjUeRQrcj4ri+5FtYMwgRugHot0
	xQQw0Sn97jgdAzvFmN7poSBK6VAf26w/G7tlvsoL2Tx4vmzNar88K+2lCsuTquPQNiVIv9hRXpr/A
	HDP+6BUh1w2YLGzyS0rb5t6xNkzzj8D88kCukn/hLmeOVojOU4UwzDEc2EZAq1bGaU2KJwSY1blMY
	UeqLsJQ5PR9SfSVBHPUt1NSRXgqkoGLhdAEohwa8j/8bvKkHlDfMPYrqvYn3aKFGobMxEQSDe8S3o
	m1ilFK+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1012-00000009A3D-0NLk;
	Mon, 31 Aug 2026 11:17:28 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x100z-00000009A2c-18p7
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 11:17:26 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4957eefd361so26800105e9.1
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 04:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788175043; x=1788779843; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=CDf6X+RpM1P7Tl68Zhdn0vbqa98bUzhb6qp7+tDv7v0=;
        b=Aaq1RDoVdUyhA7deJgsyjGWolRXjHnHgPbaEG4H8whDrAMISd9epaQQs931dwTp+SM
         r0by5vssuEkTOiVBYHdTYRI6JpFWc3rNc0GjNKOvmhYmY5xR+7fq8yThDRGaPh3SXeVr
         OTt+mgxw9gaoHi6KvU1DaSIuYKCCHRJm6Vl0liiPij5XIY1UiuRcDkpzIWgY8C8YACpM
         7D3pbjUYnw9vGvUag6zHzLUs4k/NYguU1jmMtGo5muAiNXbwkFgEWCWgEJxzVaxsrCBT
         gSZDJ9BAKiUUj36hSDyxNw8txCwZK08HFB/eb9Vdjn+7JytRRxjjgsSYPYpdRDXCK6OK
         yiSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788175043; x=1788779843;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CDf6X+RpM1P7Tl68Zhdn0vbqa98bUzhb6qp7+tDv7v0=;
        b=qlPYf4EkuR4fX/oKhHmsnwWIb9eYhvcrARKHjHuLStEwYplso0r5YeD0vKiZwuF6br
         dfBI7BE7dbSGKiaY+kqv0hg1GTdsqfa9DO5v1avWEtWeTcoLRgOsFQ8rGXw65azPqvCa
         Hd/yFUIfyZYFpPpkKJr4rmhe/g3rQ2c/RY6DX0crxwnLWDNiLigJ/a9Rnz5JtdutvYok
         FdRBUu8v1Kiu/LkPby4s/7bfpTE1ZvAmLPeU+5KSzO24Gqj5sVfHW4hiB5kbSwBBIPxT
         lmO4lA0Rr14mLhA771vBQJeiSb3PrEBvV4YYQlyqhL4Q+l3LBIcMfnrnrFHKNsEc1VSo
         l84w==
X-Forwarded-Encrypted: i=1; AHgh+RoOAIEQPrrpIrYDrzLo+zh3sgihRQPdHj/eiqecc45+iVPryeDqqWJvVBr4Ri8fGKfWv6I7BUoG@lists.infradead.org
X-Gm-Message-State: AFuF++lTdzOnNAtpYlQfdACfC8usgKo1rDWU8Sda0+YdPhLzlg6VdrCW
	VorZ3gjREzUGqHspAijEFZ5dybe6cgz64Adw1S3aK4GXHgB1K89g2c43xf8ujA==
X-Gm-Gg: AR+sD13nS7vdH1KlfLofgzUyU9m/VNSTJ8u+AGkRsTyOGo+DR9KIo8P/BzRwC2Jyi5Y
	8RxLR80zkjNEu0//6zl4B07M1nOhWDL5G6HYwsZnKe4/W/vJcraiB2xKYsaHVu6qhEpiV61JZ9r
	5AIy+sesU9/FTXl9EAHCnAsx/9D4rF78VzP+jN2iXSaTCxpbxZnDst8cP8ejAq9yVSUkC/0ozv1
	4SjdC5qmyDgWTsyVNeeR9VLcv2qH49loYQoeFO14h23G/TP7kyJcA9xDAzuK0Pxc8RzudGpvubm
	0T/YrhxdSDg4gdDAx/9PkP7F8vUTjUq9PNDddrw3RsonisRx8E8rW0weULMV/ZXH/x9WT/sFvri
	1/CMugbBlWe6SyK0XpDfUyaDljpowFJf5F4MQeb/Succ7p30f99xAS5NA4tFTbcgGmzzlBDkufG
	wzwwCzzgLkPwSwwnwVInmFpHywfRVYi0ooNMwIWGR7EmieKHHAker/kZzGeVK0/LJ5bpT/R21Xy
	1HzB7wg9jzVcGV3E0YrPK4CvY2iMiw1q8+MDHSJg2ciN9sJN4FrtDNKtdlyT2VHuOlCDpKY8GFc
	ZHfyA4mEb/i8p0XwFYlTdgL9iDxGmrek4Jt2sonm1KpOl+PyUHHK
X-Received: by 2002:a05:600c:1f91:b0:499:bf8c:cfd1 with SMTP id 5b1f17b1804b1-49b91c1c784mr361694055e9.2.1788175042697;
        Mon, 31 Aug 2026 04:17:22 -0700 (PDT)
Received: from [192.168.1.118] (175.red-81-38-78.dynamicip.rima-tde.net. [81.38.78.175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ccea6b814sm169771885e9.0.2026.08.31.04.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 04:17:22 -0700 (PDT)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
From: chalianis1@gmail.com
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org, 
 Anis Chali <anis.chali@ro-main.com>
In-Reply-To: <af5454bb-e9d0-4f75-af99-e0f95c4a1ecb@pengutronix.de>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
 <178783210670.649267.1211412247901753676.b4-reply@b4>
 <dbb6842d-2ab6-4aca-bd2f-22777c0d5f99@pengutronix.de>
 <178793449978.1088451.1834449601249374666.b4-reply@b4>
 <af5454bb-e9d0-4f75-af99-e0f95c4a1ecb@pengutronix.de>
Date: Mon, 31 Aug 2026 13:17:19 +0200
Message-Id: <178817503923.502311.1123595435606782619.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788175040; l=2061;
 i=anis.chali@ro-main.com; s=20260826; h=from:subject:message-id;
 bh=4Dv0sBch/lgMtDg0vJj5t5N2uXfQVq7b2K0JA+S3FII=;
 b=5qlEaVVZvPaKjlhaMMLYHaw8jAZ7egtcGdREzrNSlWP24+USoWAi81Sq0jlsokA5PLBSwHdr+
 Py4XXokSQ/mB3PdOW332vRO6DmGDc8nNPhpVGuvkBka0OJm7BM3Mw5j
X-Developer-Key: i=anis.chali@ro-main.com; a=ed25519;
 pk=TqnEtud6Lz6n/ejHxgJEbC95QoqQs4Xs4Wl2TbjIVTk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_041725_337815_1A1D401A 
X-CRM114-Status: GOOD (  28.13  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-31 11:04 +0000, Sascha Hauer wrote: > On 2026-08-28
    18:28, chalianis1 wrote: > > On 2026-08-28 14:39 +0000, Sascha Hauer wrote:
    > > > On 2026-08-27 14:01, chalianis1 wrote: > > > > On 2026- [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32d listed in]
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Server: mx1
X-Stat-Signature: saqxhtkke93r8z8niciftytar8kw8f9o
X-Rspamd-Queue-Id: 3DD0B201552
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_SPAMHAUS_PBL(0.00)[81.38.78.175:received];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,ro-main.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32d:received];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de]
X-Rspamd-Action: no action

On 2026-08-31 11:04 +0000, Sascha Hauer wrote:
> On 2026-08-28 18:28, chalianis1 wrote:
> > On 2026-08-28 14:39 +0000, Sascha Hauer wrote:
> > > On 2026-08-27 14:01, chalianis1 wrote:
> > > > On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
> > > > > Hi,
> > > > > 
> > > > > On 2026-06-23 10:26, chalianis1 wrote:
> > > > > > From: Anis Chali <anis.chali@ro-main.com>
> > > > > > 
> > > > > > Add USBDISK_NAME string option to allow customizing the USB storage
> > > > > > device name, defaulting to "disk" to preserve existing behaviour.
> > > > > 
> > > > > I just sent a patch which registers USB storage devices with usbdiskx
> > > > > which doesn't require compile time changes. I hope that suits your needs
> > > > > as well.
> > > > > 
> > > > > Sascha
> > > > >
> > > > Hi,
> > > > 
> > > > In my side I am migrating to master so removed my patch for this and
> > > > I noticed that alias is not mounted to be used as /mnt/usbdiskX, I am
> > > > just asking to know if it the expected behaviour in which case I will
> > > > for an other way to get it mounted as /mnt/usbdisk0
> > > 
> > > But it still is automounted via /mnt/disk0, right? I just had a look
> > > into it and yes, my patch doesn't add the automount for the aliases.
> > Yes exact it is mounted as /mnt/diskX
> > > I'll look into it next week. I hope we get away to just create a
> > > symbolic link from the alias to the real cdev, i.e. from /mnt/usbdisk0 to
> > > /mnt/disk0. That would have to be done in
> > > cdev_create_default_automount().
> > Thank you
> 
> See https://lore.barebox.org/barebox/20260831-usbdisk-aliases-v1-0-0a2e40a35f3d@pengutronix.de/T/#t
> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 
> 
Thank's


best regards,
Anis



