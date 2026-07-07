Delivery-date: Tue, 07 Jul 2026 08:23:37 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wgzDV-0017hg-1x
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 08:23:37 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0F15B201A03
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 08:23:37 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wRHauAil;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=BgMRTE55;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xYjxqSQEimrEkc+wX412uPHdZh3lQ4XKVun77HfSH4Y=; b=wRHauAilUBeIxPAhzpgtCQE27V
	iCLh1FQxxmMUylEj74QIlS3AvSc8uSFXISRtL0frmmOPRppEeg0eL2HHaoB2ftgPeCZrlfmce6bbK
	zhfGPJdtbUEprz68QXXDNIXjzDmEFW9idl4yzBFGtesgKYIoN7eYFTnwLMYfu8fpDYOFucLbN1wSC
	uvDNEQdMUUyZa55e4o409gSGE0+4jafsllSs4lu6Gx2/2hw0BZofYjYvUpkyiGngHFtfgfg4p9FrI
	/9pViMs2N61QSClx5KBpBJ92Qt/jHhFehytUxTREk0wPlvMRrqwHEYuiv7D5vSL45bjZUX+7kD1QX
	+skW4zwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyoR-0000000E9mx-45MK;
	Tue, 07 Jul 2026 05:57:43 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyoP-0000000E9mA-2etK
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 05:57:42 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-493c83474ddso33231695e9.3
        for <barebox@lists.infradead.org>; Mon, 06 Jul 2026 22:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783403859; x=1784008659; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xYjxqSQEimrEkc+wX412uPHdZh3lQ4XKVun77HfSH4Y=;
        b=BgMRTE55O7BAWcBdwGJc6rKXBzQ0UWSAfx45RQjRFHORTyOPZX3ZVQPDF+vwbPL5zi
         n2U1nCK2Rh5G8uPH9AuedXimf89l7SmCtdcwekxignSDDVg52JVdUFtuWzcidvqK24mC
         IxEJ/ZwUZJ2tBFbMNkWbzT38GaCJIBFogPUKF4q7PHuLHGYhakfQ6OcnZLt3rwrpw06n
         2kksrg57QtnfIcnd9WzXPyI5XQwjKCduArxC5AXmsw1MUKihjPrm0fzptGtg1xkVEDGP
         xPzEDYO9dgxpv3shYsZrv/ZBDTcEg6eiYzSDOo6v86gUPPWhJ2mIfJTSqCNEdOZ+w7/V
         E0Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783403859; x=1784008659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=xYjxqSQEimrEkc+wX412uPHdZh3lQ4XKVun77HfSH4Y=;
        b=KJOWcvWmdXW+sl3xi0iCSREKk3ltLMJdjiL8FDLWmuDQ5JA2f6eMNEWp69oHcdCfyk
         DB/ZqO3Pgg7lxfgJisFgysqmuLUhs78xvJ6ktTCOB4HB+PLZKK1SLdz9mdcbyj3X9XMF
         Yth3FJzAKmdaOJi7GZxOdv1InDaECD9N1qEhAn6YL4GLgNkj5MhRCfzYrPnV7cclPdj3
         YCs6Nr93b3+XrMhjG9kYBQDQMfsjt+PDlCdyp5r6y45rNG5e3rVklZtPAE7wDACCH9Hc
         oBHMg5yydc+1Tj/jo03qVB69Vg8Pcea4UitEXlWUYeIUJFZEHJ5lTiED684NPmoJ/emD
         OD1g==
X-Forwarded-Encrypted: i=1; AHgh+Rrjx0vJubs6GOUOV2jp/ChaYn0qGc6waeXFx7Dww08HWEaFG9e84Gau8Tv3fpp9ZP+m7eJ61myg@lists.infradead.org
X-Gm-Message-State: AOJu0YyjLl1gcT2TLcfPtD8s+l2m0sK30zbto9RW9donJv4FG597C81i
	4eo5EDS1HOWNrhRTQf5cn+KX9dQpFD3sxI/Bv8Oe/euh8pOwyMMyo9S6omNNNQ==
X-Gm-Gg: AfdE7ckZQhORSfZdp2WDxlfCfoCvMEeM1Ko5f5sNkaeReSIMn185E7crCnaFSQ38rqf
	+is9+eKPR6S8ZHF9iHC8t6cOoT4WB88ECdK/4S9gLtZvBgDtlC59/A1jBu56U6fpTVJOoYuoBrO
	vNKaXMBJ6hGrUbW8/cTowwPfXoE65GXsyEXIr2tzq9jBKDNF6nZSRm5kqck/HAK0fhmwjCbHcL6
	GFafdqZVAu2BMyoYh8kRA3nW5S3eAlz7D29YpkalZeG6ayCQwBQd6ruIT3/pxAeb24Fc/GhFqzw
	Lp87yHpVTtmGUQjfRrX1Fspy8kaziQweaVNOCvk+rB0FUP9W9Apo8wWIYDadh/GsVcQyCHT/Yzw
	n3xPoDeci28h5RdIsST1KV38VTjsD1zQoSPKZu3gvILEBCEx4Z5prnDiZi3IAScxr4n9Pg6vqYL
	nghFkB187ZGN3PobA4yPgpOhPHrC+onGqQhRdZjO3y1B1OrV+3jG+BouR+D3zZrx2wSDyidp7S5
	hC65k+7ClLWEBPMaedDfoJP2OoOAcLt
X-Received: by 2002:a05:600c:6096:b0:492:5bb6:6d4b with SMTP id 5b1f17b1804b1-493df0a0bdfmr41134935e9.34.1783403859169;
        Mon, 06 Jul 2026 22:57:39 -0700 (PDT)
Received: from wpslrad12 ([213.195.89.254])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0ec6e64sm47000805e9.0.2026.07.06.22.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 22:57:38 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: anis.chali@ro-main.com,
	barebox@lists.infradead.org,
	chalianis1@gmail.com
Subject: Re: [PATCH] USB: make storage device name configurable
Date: Tue,  7 Jul 2026 07:57:36 +0200
Message-ID: <20260707055737.3138904-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
References: <E1weXmP-00000008Ed1-0ycK@pty.whiteo.stw.pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_225741_679391_B6CD7805 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 30, 2026 at 12:41:33PM +0000, Sascha Hauer wrote:
    > Hi, > > On 2026-06-23 10:26, chalianis1 wrote: > > From: Anis Chali > >
    > > Add USBDISK_NAME string option to allow customizing the US [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:32a listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-5.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32a:received];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_CC(0.00)[ro-main.com,lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.89.254:received];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0F15B201A03
X-Stat-Signature: 4eka88az95h5aftku9pn5bngz138r7to

On Tue, Jun 30, 2026 at 12:41:33PM +0000, Sascha Hauer wrote:
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

Yes, it works for me, it does the job more cleanly, thank you.

Anis.


