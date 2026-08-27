Delivery-date: Thu, 27 Aug 2026 14:03:32 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzYpP-007mna-0Z
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 14:03:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2DAC3201AAE
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 14:03:31 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TWSMxDS8;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=W36uCdPM;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:
	In-Reply-To:Cc:To:From:Subject:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KQQc+NhEuZu2sN5D5hiiS6v68mhG3cj8RwwipezVegM=; b=TWSMxDS8aM7+3s+6QGBPSIdYQ7
	MtqA5HiEwUZPS+4P5E/2VHjF6gudfbelKq0p8KqYrPHGnlyCNIIPYzvDud8xtlVLpukA4qY3wzcm+
	IKbKTQYeT+Ptc9PLQg3Ioh6qWYrMF+bhME6Lrq/Hq/MTzyUm8NXWlTguxTJYtPaadpA4EVxVR5cyS
	2qzlkMH+mIirjKGcgYKrLHE7tOMV+5toDhDNiLOL3NQvsQ8Yfn2Naackon+2wPr4UcBX0/sPpC/8+
	IuAaPoSDEdjMl8A8Z2bUwRz8pGlGh9DQqMrPrnQg69mwWYe+DB/GiN+E/TxYQHn5k5JWP/n6jMxaq
	G9b07wvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzYnt-00000003vFq-2jAt;
	Thu, 27 Aug 2026 12:01:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzYnp-00000003vFS-1HW5
	for barebox@lists.infradead.org;
	Thu, 27 Aug 2026 12:01:55 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-482f2ee53e7so319934f8f.1
        for <barebox@lists.infradead.org>; Thu, 27 Aug 2026 05:01:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787832110; x=1788436910; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=KQQc+NhEuZu2sN5D5hiiS6v68mhG3cj8RwwipezVegM=;
        b=W36uCdPMJxsidvOX+1EG8cRW0AfwTnBkLMJnnv+t5ZHm0Crrhh09I89uzNHDlqLTAe
         Tt3Z+YCQxslJDRnYvd5Plb3jarhH66MJgCQ2nUBPM3tTKvFE9uZkomz4anvv12mweEpg
         AyAkKkf57kKjkzrSVPqv68zv3rXe1RFlWVuD8xOjyH7sXSeo1StBFcCe33wumjqcgEDL
         f0fKj1rahxJG3K76pvcQLZ8eN5cQHreRaYvF5s+1C/xIWlXGEC6MQdm8fD2vRTpKi4/A
         CTVy3GSyZ9QBdQq7Qw3CNYSb+N+zfpSF2G2/6iOZiwbETmr7orMPqazKAijMXzBcvS3P
         zRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787832110; x=1788436910;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KQQc+NhEuZu2sN5D5hiiS6v68mhG3cj8RwwipezVegM=;
        b=EIZviZtKyrPWMaTA0UewUi2wE1EfpyQM262MDgl95O+NfEV01De1xD+fU58b3xqgpc
         kOYqZCBc2pZAYcEg7WHLRXzx7KpYaNh4PhPz4I6lV0jSEMqe9+ERlxRlFdS2HrECN50x
         q2OPx67JOX74GUaB6PE/xFHTKfv2/htPJbJq5/xJh5dSVtNtBM6wnQ0vNMo4yCBHg5Vb
         AZiJ8zfbySHIpQ+aPLrCpfJMhP/uTC6+2KQjWDKwldbt13zRGvxzNfGNJz1dzbTwEMJk
         70t/+DvnnQIfNwxzVhjMqD0PO8UjiW/fFNmt3WY4qUtI6Dd5Y45bKETNJpIQ1dl/vCh9
         CzQw==
X-Forwarded-Encrypted: i=1; AHgh+Rq78Hu/yaugPs24xmPBYgV7QB1+7qh5eHKCFdCLMI4qopptWUZNhVtE/EmNeZYKV/igKFhz0Bj8@lists.infradead.org
X-Gm-Message-State: AFuF++mZ3CWnQ0z/ZIiWCR+RyOnXlRMOyubVUqnOU5tUqgMNL+pOsLft
	/NWpsASzS0A2F/JaSjPRRCVIyj4ZBvyIco2a5IfXqTmzZ/YGBHFM1O/dIxUSKA==
X-Gm-Gg: AR+sD12akmsb38pqeOpq9kDtTCFRE9/XKloPLDgk1QLBWKr+Hf/HXsLSgevDxAN37+9
	lvc99X/b1KKYdZwkqNn49keoOdVQIxZyrCgOZvcY0L8KHBNuXePRMJPE3jrXCTI3l8tb43LyWlm
	pjUHGxY3EpqI8wFjvNypCsBb2bcvESMjcdZFzwKnxKEhsPjGrB+Fqf9YoObqHHK/OAQjBgcjj0k
	eQExBPI+Qhr0pz5Y3XMWRCyDNHuqrCZjKsgYLdCPHcmVS2SOwrlu5ViUTeJ7aq0zNwIo8EzD5S0
	zYSuNf3WjwrJCmFr5XYBaqC2SofilMMT/OmegqLsEDRMppTiLRudP3NOpLGQziFKTtdKdeyY9wb
	PlroGir9t2dWM0m5rdoX2QIDiPs6jlmlwqAWnkHt5FBvnLTtt3R5PQ45r8HfVL6LPGMdbCj5pHM
	H/4U8BY5ZQ/9q++dGh++kNF1BzDfNU5NH8R3IsjRb+IpIsM2+jIRT0jolGDdQJ1xYG1ePvA1CCV
	oWbFu731OTZNSOEZn1wiQRhcgyM2Z/Maov0HkGb/T/Bs2kRPuA7j8M8VbZPqyz6FeWsk1hAe0mJ
	VVk+/qpYPw==
X-Received: by 2002:a5d:63c2:0:b0:47f:f3d4:26da with SMTP id ffacd0b85a97d-482e26d8a0fmr16103983f8f.11.1787832109897;
        Thu, 27 Aug 2026 05:01:49 -0700 (PDT)
Received: from [192.168.1.133] ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482e279ec3esm9102026f8f.3.2026.08.27.05.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2026 05:01:48 -0700 (PDT)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH] usb: storage: make disk cdev name configurable via
 Kconfig
From: chalianis1@gmail.com
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: chalianis1@gmail.com, barebox@lists.infradead.org, 
 Anis Chali <anis.chali@ro-main.com>
In-Reply-To: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
Date: Thu, 27 Aug 2026 14:01:46 +0200
Message-Id: <178783210670.649267.1211412247901753676.b4-reply@b4>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787832107; l=2738;
 i=anis.chali@ro-main.com; s=20260826; h=from:subject:message-id;
 bh=nCfUZPruOU8aAeNLLrHyLX44fS6Q36goOG3b3fLYrIo=;
 b=P3jrxpYE5BIq8basYLSloExTOgrI51TqXTdDApW7FjJWGkgjJVFMSWrL3uRlK7y/AUzuVkypH
 +ctwlj27O/9CIpXEnRMGbRVUhoBRo4TLpbzepm/aTHYgZsxlIGXST0+
X-Developer-Key: i=anis.chali@ro-main.com; a=ed25519;
 pk=TqnEtud6Lz6n/ejHxgJEbC95QoqQs4Xs4Wl2TbjIVTk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_050153_449791_3253711E 
X-CRM114-Status: GOOD (  25.56  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-06-30 12:41 +0000, Sascha Hauer wrote: > Hi, > > On
    2026-06-23 10:26, chalianis1 wrote: > > From: Anis Chali > > > > Add USBDISK_NAME
    string option to allow customizing the USB storage > > d [...] 
 
 Content analysis details:   (-0.8 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received' headers
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:433 listed in]
                             [list.dnswl.org]
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
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,lists.infradead.org,ro-main.com];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::433:received]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: r4g6g1ee3xomjucwyr6x79of7ye8aynx
X-Rspamd-Queue-Id: 2DAC3201AAE

On 2026-06-30 12:41 +0000, Sascha Hauer wrote:
> Hi,
> 
> On 2026-06-23 10:26, chalianis1 wrote:
> > From: Anis Chali <anis.chali@ro-main.com>
> > 
> > Add USBDISK_NAME string option to allow customizing the USB storage
> > device name, defaulting to "disk" to preserve existing behaviour.
> 
> I just sent a patch which registers USB storage devices with usbdiskx
> which doesn't require compile time changes. I hope that suits your needs
> as well.
> 
> Sascha
>
Hi,

In my side I am migrating to master so removed my patch for this and
I noticed that alias is not mounted to be used as /mnt/usbdiskX, I am
just asking to know if it the expected behaviour in which case I will
for an other way to get it mounted as /mnt/usbdisk0

Best regards.

Anis  
> > 
> > Signed-off-by: Anis Chali <anis.chali@ro-main.com>
> > ---
> >  drivers/usb/storage/Kconfig | 5 +++++
> >  drivers/usb/storage/usb.c   | 6 +++---
> >  2 files changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/usb/storage/Kconfig b/drivers/usb/storage/Kconfig
> > index efca9874d5..90a62a9d24 100644
> > --- a/drivers/usb/storage/Kconfig
> > +++ b/drivers/usb/storage/Kconfig
> > @@ -2,3 +2,8 @@
> >  config USB_STORAGE
> >  	tristate "USB Mass Storage support"
> >  	select DISK
> > +
> > +config USBDISK_NAME
> > +	string "USB storage disk name"
> > +	depends on USB_STORAGE
> > +	default "disk"
> > diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> > index b3116dc6e6..b6944f531d 100644
> > --- a/drivers/usb/storage/usb.c
> > +++ b/drivers/usb/storage/usb.c
> > @@ -414,12 +414,12 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
> >  	if (result < 0)
> >  		goto BadDevice;
> >  
> > -	result = cdev_find_free_index("disk");
> > +	result = cdev_find_free_index(CONFIG_USBDISK_NAME);
> >  	if (result == -1)
> >  		pr_err("Cannot find a free number for the disk node\n");
> > -	dev_info(dev, "registering as disk%d\n", result);
> > +	dev_info(dev, "registering as %s%d\n", CONFIG_USBDISK_NAME, result);
> >  
> > -	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
> > +	pblk_dev->blk.cdev.name = basprintf("%s%d", CONFIG_USBDISK_NAME, result);
> >  	pblk_dev->blk.blockbits = SECTOR_SHIFT;
> >  	pblk_dev->blk.type = BLK_TYPE_USB;
> >  	pblk_dev->blk.removable = true;
> > -- 
> > 2.54.0
> > 
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 




