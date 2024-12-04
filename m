Delivery-date: Wed, 04 Dec 2024 09:57:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlCe-003qbB-1k
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 09:57:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tIlCe-00049v-HH
	for lore@pengutronix.de; Wed, 04 Dec 2024 09:57:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0euOAL+j5NmayxD6xlsgi/TldsqgoPqr8FXlCq4YHZM=; b=PFBmOwmpT+Y0YcQuDzDkHwPSM3
	BAwy9Gs/qqVEhxy9BpAQo1854WNToKXxFCv+LJzqwbssdHd1c0FUvXExLRk3289eAwjVd92yBtWVc
	bbSyaZGRFAai91/zL7kELv1rSDLEdIP/1eC5bp+rt5QQggr/qk7UZWte1MfpGGsB7trAD95FpXK9U
	X+9qDO3fwcXV6If/a9EuO8cZTYkggtBDnBoqLYRT1EtfXFAC7HFfvDlysNkQUTGpJychVcghbbM2f
	1kzlgdXNtyasvEWGInfZa8pJyTju1N3NdvphMITSBpqDfounqxcR2w9ousPEus+akH9lpwWCSCriV
	EL2usHUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlBy-0000000BxqI-25Y1;
	Wed, 04 Dec 2024 08:57:06 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIlBu-0000000Bxp0-3dab
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 08:57:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1733302585;
	bh=0euOAL+j5NmayxD6xlsgi/TldsqgoPqr8FXlCq4YHZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tz1wgVhVyqvr6vLMV4DPozdyh4MPnJ9s3BIQaH54q/vJP7npaHpHMIVgFdC0MlbLC
	 lgeadkxZgvzTJn1lvQNoT6fCqpZqDDhbRGOMbD8qS2TKMa7Co0hA/a9YKMqTFRn+mJ
	 B19fPxu2SjZElhdSD2bSbDJssLNEVGLRok8RzB+GekDMlwheW/gqrVkeodAEOMABRP
	 RJ071albj257ibNjXw5/sm4ZJsoM8ZaOFp+HI0Atri663E/Irfp5EhJJ8CgIgcCk4y
	 /IVgvrlF8e7oSUDRZRa2rmXqxiAY6yF12bQaP44xQ135DFWU/dcvQBzLNZL8a9fC7F
	 cmcI2SfSoxIlA==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 49CD040002;
	Wed,  4 Dec 2024 09:56:25 +0100 (CET)
Date: Wed, 4 Dec 2024 09:56:24 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z1AZOLFrEVeQ9wVX@hephaistos>
References: <20241203202447.587667-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241203202447.587667-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_005703_041745_250A4AC8 
X-CRM114-Status: UNSURE (   3.99  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: omap: fix NS16550 UART setup in
 omap_debug_ll_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de> # BBB



