Delivery-date: Thu, 15 Oct 2026 14:15:03 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKMQ-00DurK-2z
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:15:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 91EDA201BC6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:15:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QTUFux+i;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UECQyIEj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792066501; a=rsa-sha256;
	cv=pass;
	b=Fl+j1EcWFKp6ELxxQG4Kt21a2ZAin667y6AJkDgLpNFEBXR2N+HCJgw6X48K6eLq39EfsA
	wT3KFdLreVksSptP7rskRMWK0dNornc2LFyiD2VaF49DP5uIwqwjJYtmmHRsDX+MUdWEH8
	hWJcABtXyfcdMAf6qYNHYp/4udMyP8BNFen6w+si9Ct7z38Z8WoS9nUJbFnA/WBQXyTg2L
	JcOLc+LwVkkMdsLICdoNnn+NQpmmy7QQERIjWA9qnvg5aB1L2rJhPJhQZPlG7ba/VWo5bX
	EjvllBs5dcRDxMj0godx+qRYgPTS4wmiNY25PZlE/EQjKH3qGHbJrqbSMOum/w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=QTUFux+i;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=UECQyIEj;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066501;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=2NSMuu0ShMTqf7gGClPUsmeQiKsa0Auvvt2TY0HAJZM=;
	b=a4J4dsDQRC6YXDWb/WMl1tyRXeWtRe4fKii3zs1ruzrotzmoRSccoxqxMWfky8eV4okMRa
	w5sXgnddAMwcrAivQtI8SvXoVEDap/+WUTA+LkEzHbxjKtg5pIBeFIlkXHZ51di4tLXJuZ
	v2wAqIqBmjlnV086hy56CJD3heGf7vuFBHeq/g9HcANxW0759BqWvobIJCucPZIQLo85Na
	bCEjIt/Oa18nlJnIJOH5hyByc8p043ejKz3s4ZvnAy1/09eu0XqjIYJpDr0tlbeEnLgSlD
	TvFhumibOmKPBbY+92YTKDCBfVehGqxhV2llOHvg5VKa53xAG0QHLFI2mnIvfg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2NSMuu0ShMTqf7gGClPUsmeQiKsa0Auvvt2TY0HAJZM=; b=QTUFux+i/byyYCtWs5kwo9l5+I
	EcD7/st9JTyfCGx7L6ltTOblWF2Q2L6V+e/atvLBMGIA+HZXB0kPt4XLkH8EEGXjiCzMQra83xPAZ
	jhyVFjvK0Uz0BHKE1yJXJOHT4zA2h2li+S/87aBmI7CNo/Hcw6WFxOteyBGHbk/MCpDII0jMPIuu1
	9UIT+EwE9ekp7fic9Sfcf5FCClRo3G1moxbyAAcBOC6bseydNPJvFTHl3E97ee4izabB0YNnQ/Isg
	yWnXkTvQ9d1Y1ZCVlqWz8N70A6LJaSMYYxlN5i0inA/XVAYH4qzApZ5DyFLun4cS3k1SrO1LeuMfl
	TxEmaJ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKLD-00000000448-0phf;
	Thu, 15 Oct 2026 12:13:47 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKL7-00000000438-3OhF
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:13:45 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CD7C72027D0;
	Thu, 15 Oct 2026 14:13:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2NSMuu0ShMTqf7gGClPUsmeQiKsa0Auvvt2TY0HAJZM=;
	b=UECQyIEjwcRUYuIY6FIXl9zoKctqB30iKcoELgwtKdurnJc1SVxjrfQ5LE94NkXVImlcDM
	6AM7bXtnuVqQtEB18xDUmOuI085ACEIUxmwhczXVbj4M+P88FAMQ14J6Nx0eAwlFak4ION
	BuPhntXrCCzaDaqKxEqGr6+bSLY36+vUc0M1icgDFgNlGurwxx5ZaRHjf9rpkyts+MTtQa
	RHi3PX7m52HzjTaLSnyjOZE92AoNaAaHZB3JnFNAVa1qjsGMj7MOx6in+4oJT4imuq2zNf
	np2AgG7DD2dRy/9jaIpnmXbysl6/i6aHvEpe451tHtIwG0Ep1mzGafni1Q+3VA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792066419; a=rsa-sha256;
	cv=none;
	b=ez3cM22i4+qLynG5/H66c5IvwBIR/tSp93amwc4mQeBi4ORIx1QUYbVGiiQfezfbrRLIwj
	lxz3DADPf2wPCedm/Up7Am7mTDHKrfjRF4zfohCduyfsBJwG1vUz42w1ZcoaoB/7yP8dUk
	kS/3OO0IwQUirG+agEFUsr5i7+ytTLR0gQHnQID3FN/CCfOEeR6nvMR2HrdgFKxXEXcA8B
	itP7m4+tBLhoJT6d07DgYk+reDFLdN309DTpuwZb6w3aYDRU+ZKNH0s8cxlo2wSqctksEv
	HLwQdJUNoH58SCnOpjMS9SuhPu4QRFAgUhIKbWarWLYDpdmk4DJmaOwFtvJQIw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792066419;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2NSMuu0ShMTqf7gGClPUsmeQiKsa0Auvvt2TY0HAJZM=;
	b=O/8RWOrdNEHPucyq95WmTGMNeq9a6iFvQyDSn6XueQFL1rWj4TAZnhFZHoP5Y5Glc57gnU
	VpE5Q26J+E7iZ0qJyp05q4VUteOkSG+cqhIQom9dIZAH2e7kwWzzZ8ydW1oTBLEvfDWjpb
	AuxTzmsGcTfeofeAXOGtr4HYEbdDTrT68TIdWF/w2c6eEd+Fva8Nz6hW+BAMNo3crmFjUN
	HnrUfiKdJjoyL1thM25Xr31ckMfiBKbRyWYYWhovhWsqRYNjE9stBJ2va8n/Ds536kPxzN
	9Q/PaUvX4nXEX3aM7JYupJSXnXSTq/eB/giOAj2AeXxkTynlzt80DpUxCvOpEA==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id B0D131C0239; Thu, 15 Oct 2026 14:13:39 +0200 (CEST)
Date: Thu, 15 Oct 2026 14:13:39 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 09/10] Documentation: efi: describe load options
 handling
Message-ID: <gveoo4ebchsh4jsc4zclydgka5ri5ju5cmzemknugondbcpjzv@34gotzeh3jiw>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-10-a.fatoum@pengutronix.de>
 <tqorcgwnas5oc5nfyuswbns7cazd2jghiqcqrk2ra7esagx2ys@4kzonh3562zf>
 <7b26bdee-d4c5-401d-9a51-1aeba18f239b@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7b26bdee-d4c5-401d-9a51-1aeba18f239b@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_051343_408533_5AD8A069 
X-CRM114-Status: GOOD (  33.97  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 13:19, Ahmad Fatoum wrote: > Hello Marco, > >
   On 10/15/26 1:08 PM, Marco Felsch wrote: > > On 26-10-15 11:18, Ahmad Fatoum
    wrote: > >> +To pass a ``root=`` option to a UKI, have :ref:`comm [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 91EDA201BC6
X-Stat-Signature: sun7whyi9obygsia8oquk1txwsacohm3

On 26-10-15 13:19, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 10/15/26 1:08 PM, Marco Felsch wrote:
> > On 26-10-15 11:18, Ahmad Fatoum wrote:
> >> +To pass a ``root=`` option to a UKI, have :ref:`command_devlookup`
> >> +generate it for the root partition, the same way ``global.bootm.appendroot``
> >> +would, including the option name from ``global.bootm.root_param``:
> >> +
> >> +.. code-block:: sh
> >> +
> >> +  devlookup -v rootarg -k /dev/disk0.1
> >> +  global efi.bootargs.root="${rootarg}"
> >> +  bootm /boot/EFI/Linux/uki.efi
> > 
> > Just a comment on this: devlookup can't be compared to the appendroot
> > mechansim, due to the partition enumeration mismatch between barebox and
> > linux, e.g. mmc block device partitions start at 0, whereas linux starts
> > counting at 1.
> > > On embedded devices booting from an MMC device the root=/dev/mmcblk*
> > mechanism should be used if the device supports dual boot e.g. from SD
> > and from eMMC.
> 
> devlookup -k follows the same code paths appendroot would follow, so it
> will be 1-indexed /dev/mmblkXpY if that's what appendroot would have
> produced.

Ah, good to know, thanks.

> > Therefore I would have liked to see that the appendroot mechanism would
> > be supported for UKIs as well which would stop the requirement of having
> > different UKI profiles just to encode the different boot mediums.
> 
> I believe barebox can't provide this universally.
> 
> - On an x86 system with secure boot, the systemd-stub will ignore any
> extra command-line arguments, except for the profile.

According the comment from system-stub, the cmdline is only ignored if
the UKI already has a cmdline and we're in secure-boot:

---8<---------8<---------8<---------8<---------8<---------8<---------8<--
| * We'll suppress the custom cmdline if we are in Secure Boot mode, and if either there is already
| * a cmdline baked into the UKI or we are in confidential VM mode. */ 
---8<---------8<---------8<---------8<---------8<---------8<---------8<--

Regards,
  Marco

> - On the ARM systems with device tree, we may be able to cheat by
> patching the DT, but I have not checked how Linux or systemd-boot handle
> /chosen/bootargs if they are booted via EFI.
> 
> Cheers,
> Ahmad
> 
> 
> > 
> > However, as said this is just a comment and doesn't block this patch:
> > 
> > Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> > 
> >>  Drivers
> >>  ^^^^^^^
> >> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> >> index 8e6f3bbbe9ce..dc7ac6dc8716 100644
> >> --- a/Documentation/user/booting-linux.rst
> >> +++ b/Documentation/user/booting-linux.rst
> >> @@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
> >>  
> >>    Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
> >>  
> >> +When booting an EFI-stubbed kernel as EFI application, the
> >> +:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
> >> +
> >>  .. _bootargs_concat_order:
> >>  
> >>  Concatenation order
> >> @@ -170,7 +173,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
> >>  boot entries should always add Kernel command line parameters to variables with
> >>  ``.dyn`` in it. These will be cleared before booting different boot entries.
> >>  This is done so that following boot entries do not leak command line
> >> -parameters from the previous boot entries.
> >> +parameters from the previous boot entries. The same applies to the
> >> +:ref:`EFI load options <efi_load_options>` in ``global.efi.bootargs.dyn.*``.
> >>  
> >>  This entry can be booted with ``boot mmc``. It can also be made the default by
> >>  setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
> >> -- 
> >> 2.47.3
> >>
> >>
> 
> -- 
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> 


