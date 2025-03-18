Delivery-date: Tue, 18 Mar 2025 13:02:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVen-0011gV-0f
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 13:02:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuVem-0002wy-3n
	for lore@pengutronix.de; Tue, 18 Mar 2025 13:02:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kSm5Ske8PREb8bEy28pifXkCJx9AP6ZisMkTBditHDE=; b=CwTanrAqJj+3eiUmE9o3PE5iwC
	jLcetmk1PRqSOVSytmA6Lxj8p8iUQJvG9oXiaot0Bi2Q5oGwq5FnhcBf618H5t0tyF57edg/eD56k
	xjvvL8V2V+sOD/Fk+YFkA8SY5+A1BDF8kKFG9YvEQf+vYtE6EwtMgwIpYfDd1g52GNpDWZJiMt63c
	Gl3NOD8wryO+y5D8sJHLjYv+5CaFAaNXsk5KqLjv4NPHbC3HVXrIU5Yne3bamGR/arwKrVCFcBU5m
	q6oq9mO+tJnxVg07tQXLS61MsMRQzPabMZWq0OW8fLRkrGXFSOAsHgjuCrpt4WZEFwS1W8AXOSsnn
	r8TxBJ6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVeG-00000005ogn-3zGb;
	Tue, 18 Mar 2025 12:02:20 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuVRm-00000005mRD-1f3b
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:49:27 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-301493f461eso3530612a91.3
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 04:49:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742298565; x=1742903365; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kSm5Ske8PREb8bEy28pifXkCJx9AP6ZisMkTBditHDE=;
        b=XTRKex7Nwr//5iM7NQC3VCwRFE+TOTW5lr1+rOgx8lGSet00hsCnEdn3qx72Axzm+V
         4oAX9QCzhhBHb1yG7kZK6kN71K8vw8cHlZtAldOdCO9DDlyaDZVbwnQl682oniJ4Z4y8
         8zXXTGGN6c8oZxAsSTa51PUi9QXMNXkEsHtiIS77afZIqtrS8LGEU6u7jR2YOD5ZXQgB
         iCo6Lt5JeC8vPSrpC4AjYfh7frTIWQ/LnR7e1gWaREZrIuggHRrhr/n4pim6DUCWDfXv
         kBvivKstWnPxnmztHfq+3Vag75nhfxRM4VABoToWWYoD5v9cg7Giv85wOsTjEUjMijez
         MsaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742298565; x=1742903365;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kSm5Ske8PREb8bEy28pifXkCJx9AP6ZisMkTBditHDE=;
        b=jcjDlANjChM5xkdWprzAVmJzroC+RN181IPYs/eU/fHEXIAD1emV0slpJvvn/kYBYa
         iRHRFV7jZiauoi9WPxY+Sxs0tIYy6khmMDmbpBJltFCeQt9KandBiCLud9f2vnpCrHsS
         Qm+uA3tCdXh+1PuhDwYiLCoaN9gYLugU9NhWMIDV/MrxCXNDfNCmYvBLkbYZSgkIMDwH
         T6bbPIZ8tDyTYLaSg5+a3yQhiCfWsvvwGRU0HTJHnl1Pj+P+bXi++Z4GuDMMkF8w3RkF
         Wprb8jcR7Cw3cNA5m3EB9LIl35xSpilbyyIlqOMcISgsaQiazOQ6j5rbIaMWyMYojz7D
         XMuA==
X-Gm-Message-State: AOJu0Yx0ncBR9HPZQz+/xy+A569VLLFEZIpZLeXRY78AoEdQNtfxzvy0
	udWzyS1jOUwdxPa+yci2ep4086BfDRHYnq7L8CO1kn/4v217wVzCMQmm1oJjs+4hQAvuTvtqwbG
	EtUwvWbMg0m4OryXnovm4Nl6oFDo=
X-Gm-Gg: ASbGncsZ0qBo2z127muy2mM6bNHgkecMJMSfUApdEV8h0AoxdYnw1n9Oz+OZqx5x2J+
	14DDzdECE/ilRPGynxDLPmGCqMPwb3E6qOV98g+vPWhpNTsV3vqMNlIKqIh0XldzaFq9ORb1bWS
	Ot06r60o5LffPVldAktNFWpbnxEf0=
X-Google-Smtp-Source: AGHT+IFaK6l+PqIVcV4TOCQEyVzApGqSRmnrMVhFNoLJ2pGgCBc2cR7lj8A802QWgyqigsYVPxdquoTC9KqrkLWmTnk=
X-Received: by 2002:a17:90b:3e82:b0:2ff:5357:1c7f with SMTP id
 98e67ed59e1d1-301a5b99263mr2272006a91.30.1742298565351; Tue, 18 Mar 2025
 04:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
 <20250318074327.37730-4-eagle.alexander923@gmail.com> <Z9lRH065pPDbir9z@pengutronix.de>
In-Reply-To: <Z9lRH065pPDbir9z@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 14:49:12 +0300
X-Gm-Features: AQ5f1JrHeMRLU85TuDseVxoOOKWwDPG7uWcqT5j2uDJ8YadrUnmw_SS6jyO1s3g
Message-ID: <CAP1tNvSRjG21_EPcS0Hi_Sd3FzfQZVOy8CSaMSpp4nxgLKVnwQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_044926_430360_E44707FB 
X-CRM114-Status: GOOD (  14.63  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/5] ARM: at91: sama5: Unify xx_start_image() calls
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Ok. Can You apply the first patches to reduce the v2 series?
I also want to add another one to rename the sama5d2-related output
images to reflect that one image can now be used to boot from
both MMC and QSPI.

Thanks!

> On Tue, Mar 18, 2025 at 10:43:26AM +0300, Alexander Shiyan wrote:
> > This unifies the xload.c start_image() code for both sama5d2() and
> > sama5d3() CPU variants.
...
> Original code has struct sdhci_instance and struct atmci_instance which
> both have the same members. You unify this to struct xload_instance
> which is a good step. I think this should be a separate patch along with
> the rename from sdhci_instance[] to sama5d2_mci_instances[] and
> sama5d3_atmci_instances[] to sama5d3_mci_instances[].
>
> This will help to better see what the rest of this patch is about.


