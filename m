Delivery-date: Thu, 18 Sep 2025 16:02:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFDU-004UVP-0F
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 16:02:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzFDT-0005NR-Ia
	for lore@pengutronix.de; Thu, 18 Sep 2025 16:02:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0m1Usf1x5PPKXpcReKSv4flKzGo+O6I912UKTZG9qJs=; b=1PANJn+QbtyB5/UrQu6mquRc2U
	stlwqL4oxAN4TgYnuIHJl5ulvfaKiEIWRa1HR0QtGmBjQjfJpl0bnvn56AjYPknk3nijJUM7iZRHG
	e4xUGmRkeJ7PR0MkugaPc4LOdQWOyBHtN/d4GkY5dHiuyvpT7rZCFyA/O2P4dycCkHAzGyTw0fI6c
	9pObgvTZoJffbSiXRE2XJFZkiDyCPhsqZNp6bPHOvZ89eZafA97q7/ceTrf5mAiO0C8Bk0azhNiBL
	b5tUYCOoRh3bYlVEWWCdowCDVeZnBaVRLrfKHzjw4XYQUj4Pk9PLgg8jdQ3Vo/vnARwsiqtqydRYV
	wgBaADag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFCx-000000001Ua-1AAD;
	Thu, 18 Sep 2025 14:01:59 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzFCu-000000001Te-2UAK
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 14:01:58 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58IE1sxR001077
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 18 Sep 2025 16:01:54 +0200
Message-ID: <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
Date: Thu, 18 Sep 2025 16:01:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
 <aMukQcvHZOMExEzw@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr, en-US
In-Reply-To: <aMukQcvHZOMExEzw@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_070156_900465_569AC173 
X-CRM114-Status: UNSURE (   6.64  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Well, I'm not sure. The Linux driver only supports random number generation.
https://elixir.bootlin.com/linux/v6.16.7/source/drivers/crypto/Kconfig#L487

Le 18/09/2025 à 08:18, Sascha Hauer a écrit :
> This looks like you should rather adopt the Linux driver from
> drivers/crypto/atmel-sha204a.c.
>
> Maybe you can even create a NVMEM cell for the MAC address and then no
> board specific code would be needed for retrieving the MAC.
>
> Sascha



