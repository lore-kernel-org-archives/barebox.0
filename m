Delivery-date: Fri, 28 Aug 2026 18:30:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzzT2-008DQd-2d
	for lore@lore.pengutronix.de;
	Fri, 28 Aug 2026 18:30:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 01E512017D4
	for <lore@pengutronix.de>; Fri, 28 Aug 2026 18:30:09 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C8ZgMdsT;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=NRZEs3mQ;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:
	In-Reply-To:Cc:To:From:Subject:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RNEQ9AuV2KsSeFBfcZGhBouXx+1g94b3VyUgIEnyYtY=; b=C8ZgMdsTnIjxNzmtM0Ehby1lFt
	u+5tPwzhTInMeDyG6anpuQFWFD52H3GOi/sCr4V2XNGuXQaPYogfSGo+/aJTSRaYlULbMGpvsuFzS
	PGPNKucSmlPY88/2T7Xz9/LW4nBvDQ+0QFLN6wMSZ8sCbfzRzjamxMtvqUcOyKSSBXN4JjSjhGABG
	Q0W37K55az2IMGz+EuBxoyQU9VX+Yye4/5aFfuMKeFyrIlXkxkeWlulOhq4+MtPbnyPxRUcoVlx3i
	pkmENdReC1a0llNwzZLoDmy8pjmQP3jdBe9PRSC+RLZ1EYHXdICD7eN9dVzktBtnMy/Vtr084NGsN
	d9H4yPvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzzRM-00000006Cmx-0OJK;
	Fri, 28 Aug 2026 16:28:28 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzzRI-00000006Cma-3zRR
	for barebox@lists.infradead.org;
	Fri, 28 Aug 2026 16:28:26 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4998b5a63e2so11449145e9.1
        for <barebox@lists.infradead.org>; Fri, 28 Aug 2026 09:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787934503; x=1788539303; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=RNEQ9AuV2KsSeFBfcZGhBouXx+1g94b3VyUgIEnyYtY=;
        b=NRZEs3mQtvMMx6Um/YdrZItuWhtZIV4bM/pUe58vPqWzh9dZYR30+T58i+JgtboJmp
         OZCB6ol1wTZilC2rpGvTNCpYsCb0hH/dgQ1laIsDZdA0+HbF8ipjc22sTqPlYE3Q036k
         aqEs2zmQY0xEcGPnc9w8TJsq4asbF02HFV3ac87VvgatXetWVMb0lDfJQ9XNZvQbCwI1
         EgkTb7EbAgEDuVO9gPNHcbIe0M6+JUURQ4VVFYQuJ7rAUxgO/nKI1dO0ciGMHlDvFAPj
         bgMtiLOeSpyTb7ujG9xGwDmXDKaVMCZZWtyNK6h6BsJOGeR2SOkfOCgpR/E6CdXr7AP8
         u5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787934503; x=1788539303;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=RNEQ9AuV2KsSeFBfcZGhBouXx+1g94b3VyUgIEnyYtY=;
        b=TiWtzKjnKlylsMbPj8ylKjpw1jsZ5sk3q6XoSuqOvmmvQMNPncF86kQsVbvhhRc3PF
         2pi8B9BrA3kOX1AXryEavx4MIGhUXYJe4sIZgqXe8OJLN2uUfrf4iHaJaPdn5KoUOyxk
         i2bwdjjzXCwKGu2FxAPPjQISxj3nwXRp5nKA3Pmpr7LW8cK2h14NmtqgK5nZUV0BpLqi
         zZuJPpiVsfdSg78Jqo8+FrPjlIZxtqq+05x/fmb9L1I5JfsNsB8ZnZuKKYASdQly0caI
         koc2lhz9iz1x774fMc3ls/eBjwxyApQhNkstwaLMhsg8BzBKIMrJJumdwVZTIvMAWSay
         qc0w==
X-Forwarded-Encrypted: i=1; AHgh+RpPdWxAkcpt8SoE/tt4lbA4HCUC34f4SVjfwcH1Pwe+saiiAsx9JhvIGupbnqxzdI2hwWNRDm86@lists.infradead.org
X-Gm-Message-State: AFuF++kbiODqDNHhpFRUV5o2XTSERPW5VbVqDZGZTtc4OrQKocv0VTe+
	5E0iDpxPS18kTyxWgWhd/HWiOGev/bOxZ0fnvl2H+Ot3zcCJuiRFAizW
X-Gm-Gg: AR+sD12sTm8jTbF6XKIMCM4dAHHzozBQd+H+T2sUeIZGDkmDs52NBQ5EAM7d7fKydrI
	G+8siWWNBnqbCILEk3GbUcdjVF24Cjiv5JV2FXynHC2aFByqfEJ3NCDaquFuHlwJrLQSAOb80X0
	a/h2GxOo63g/m6sZiJroRgiOGNTRUnqrUQMRNtQrviZ4UEKDyqZS+TrqacDAzPBpzpyypPeewon
	04WFMlvZOaG7xcPQlYj/LOIcB/MyuUFYhXlHSliCHnHiF5ptWBfJG3GdIgYcMGdUf1utD44SRNG
	yxfKUXIQJdt/wANLpG3ULRceeTcaEZpTudsCA4QF5hsVgATI5jvFz1f545eChu6RdTlobAVb8wa
	LX+JnRITW28czpcRg4dsfBkz4FbU0axHtnm3jQOROqyywhxqRs9gdpi17mSXLEj4U2djmgqFAqD
	SVa1DjAUwwll+YeKYXQvAtIMsdi2ePefl09DN0MoM+SjoObIDRE528ZUaOA+e2suwJO8BdrdlZt
	ibqzztiWKt7MJoa1Y++UYn70YoyCTyIKaPDzGD3T/4Px178m6G4zZcBIOcpYSKZjqY0wQcrAbC2
	LoexRw0Oqg==
X-Received: by 2002:a05:600c:3546:b0:499:dbc0:370d with SMTP id 5b1f17b1804b1-49b91c1dad9mr128534675e9.2.1787934502451;
        Fri, 28 Aug 2026 09:28:22 -0700 (PDT)
Received: from [192.168.1.130] ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b94dc103dsm59584905e9.1.2026.08.28.09.28.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 09:28:21 -0700 (PDT)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
From: chalianis1@gmail.com
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org, 
 Anis Chali <anis.chali@ro-main.com>
In-Reply-To: <dbb6842d-2ab6-4aca-bd2f-22777c0d5f99@pengutronix.de>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
 <178783210670.649267.1211412247901753676.b4-reply@b4>
 <dbb6842d-2ab6-4aca-bd2f-22777c0d5f99@pengutronix.de>
Date: Fri, 28 Aug 2026 18:28:19 +0200
Message-Id: <178793449978.1088451.1834449601249374666.b4-reply@b4>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787934499; l=1726;
 i=chalianis1@gmail.com; s=20260827; h=from:subject:message-id;
 bh=Ed78zL4ICMdpq4Bo/dTTZLTrB0kDz6qCmXVQNb6RXKQ=;
 b=E6jNIL3riEcXkW2lCZRvCerXSsAoiKZPHivu88iUN0UN5hG+FaQUl2YqYqhNoZSrQ/D6wkEw9
 gVg2V7ipbE+AouiKkA+fyLAg7EwNqaZVzeO7UMnNbqH7LJoOzYV26BM
X-Developer-Key: i=chalianis1@gmail.com; a=ed25519;
 pk=7vDhWf/izlmKbS9RoSS+5VOvMVGJA/TfcB3BIAylLdE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_092825_035163_C0320D49 
X-CRM114-Status: GOOD (  25.40  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-28 14:39 +0000, Sascha Hauer wrote: > On 2026-08-27
    14:01, chalianis1 wrote: > > On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
    > > > Hi, > > > > > > On 2026-06-23 10:26, chalianis1 wrote: [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32e listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
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
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,ro-main.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32e:received];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: gersqtbs9e95p59rnhdcpuxfop3igaqz
X-Rspamd-Queue-Id: 01E512017D4

On 2026-08-28 14:39 +0000, Sascha Hauer wrote:
> On 2026-08-27 14:01, chalianis1 wrote:
> > On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
> > > Hi,
> > > 
> > > On 2026-06-23 10:26, chalianis1 wrote:
> > > > From: Anis Chali <anis.chali@ro-main.com>
> > > > 
> > > > Add USBDISK_NAME string option to allow customizing the USB storage
> > > > device name, defaulting to "disk" to preserve existing behaviour.
> > > 
> > > I just sent a patch which registers USB storage devices with usbdiskx
> > > which doesn't require compile time changes. I hope that suits your needs
> > > as well.
> > > 
> > > Sascha
> > >
> > Hi,
> > 
> > In my side I am migrating to master so removed my patch for this and
> > I noticed that alias is not mounted to be used as /mnt/usbdiskX, I am
> > just asking to know if it the expected behaviour in which case I will
> > for an other way to get it mounted as /mnt/usbdisk0
> 
> But it still is automounted via /mnt/disk0, right? I just had a look
> into it and yes, my patch doesn't add the automount for the aliases.
Yes exact it is mounted as /mnt/diskX
> I'll look into it next week. I hope we get away to just create a
> symbolic link from the alias to the real cdev, i.e. from /mnt/usbdisk0 to
> /mnt/disk0. That would have to be done in
> cdev_create_default_automount().
Thank you
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
> 

Best regards

Anis



