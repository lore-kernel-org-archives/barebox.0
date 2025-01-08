Delivery-date: Wed, 08 Jan 2025 16:39:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY9T-000nTy-0c
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:39:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY9T-0007mo-3v
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:39:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ZR8kiVT3/misqnBB3iKRM7sEshX85Le6mVU82kJDeE=; b=1jbGDJLdzYFX7EOS16EkF5t2/q
	qbiPnBiVNUBeUZVY6WBwFlVghh/wKFRWRcipumqB9fPLinZOFdH5lD436cmlLFSkSNVSPyqxPPc9l
	biC1hDMNFn6oyZSybNXsKvAFclFD9Kg5b9UMp+Zz9uXb4Yjv4mCegjzdUVrUkuzXCs3y5APgHDADi
	0Bu8YlnHqB67+WTcYE6rxDQ4iwddpPFRl+3lfDA8I3sPPSHMcpXTeXuKCswubUiWqzEiS8C/RfaQw
	Czn+bknT0F1s8EtnMpSUsRYheyrotpwlQA+RmkE/mfE2oXep+kLmTbnu8gJBsN//N0e1HQ1YPBdAB
	D6WonLXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY96-0000000909I-3Kr4;
	Wed, 08 Jan 2025 15:39:00 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY91-0000000907n-1IkM
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:38:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736350704;
	bh=hbgTPPzr2dFB8f2r9bi0Xx1ZKfeDSQzwdN9MYsqPN2c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VUg1HoUML/zuhIJTOx5844g4zfBeFuerIBwnMHj2dnl4AT9Z9vPFdBb5d0q3dSfM1
	 sU4hTVDsTluePQ//5QXKDRt9qQhT5c5MJmbckjn5QlCHPov4dJqpnxpJJDNN7aCfew
	 6J1Vihy1krXBvUqttUeScyvBTebXE5IqCEuwutlXrl+k8mS0TSXjugUYxftowUv1OJ
	 mIJlCz0T1ymJsqBpD2CIpiP1Ojm1hDQUflOJA4KTgLRa13m6OSwmQoUj0iwOXR0ngb
	 c1fXWplmDOAq0CR2xW8olxEGe5r9Wazb2hh2T8VXeTJ5Luf6L/0JJZPuMQwMDsJe+w
	 vJKtIwaColPAg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id A5279400E1;
	Wed,  8 Jan 2025 16:38:23 +0100 (CET)
Date: Wed, 8 Jan 2025 16:38:22 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Z36b7icEl0DtqWLF@hephaistos>
References: <Z31B5rxOomVzKR_1@hephaistos>
 <Z36MZJtzptPAdmsI@pengutronix.de>
 <Z36WZYxab1bAEzFG@hephaistos>
 <63ac6399-be23-40c5-a2d4-d995999b5d7a@pengutronix.de>
 <Z36ZVQNtHi6krRl0@hephaistos>
 <bc7ab523-2a65-42f9-bba1-ad7d17878cd3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bc7ab523-2a65-42f9-bba1-ad7d17878cd3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_073855_485790_139D3345 
X-CRM114-Status: UNSURE (   4.76  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 08, 2025 at 04:31:40PM +0100, Ahmad Fatoum wrote:

> Sounds good. Please add
> 
> Link: https://lore.barebox.org/barebox/Z0gywL2hLcIDoLQ8@hephaistos/

All right, sent [PATCH] mail again.

-- 
INSIDE M2M GmbH
Konstantin Kletschke
Berenbosteler Straße 76 B
30823 Garbsen

Telefon: +49 (0) 5137 90950136
Mobil: +49 (0) 151 15256238
Fax: +49 (0) 5137 9095010

konstantin.kletschke@inside-m2m.de
http://www.inside-m2m.de 

Geschäftsführung: Michael Emmert, Derek Uhlig
HRB: 111204, AG Hannover



