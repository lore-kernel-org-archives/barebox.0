Delivery-date: Wed, 18 Mar 2026 11:07:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2no4-0028s6-16
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 11:07:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2no2-0003dv-As
	for lore@pengutronix.de; Wed, 18 Mar 2026 11:07:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uM2KmXGGQUW8D2OQifFuN2bQdhGVa4T0Fuo1p5XHNGA=; b=RWgbPyd5WP1rq90ZJwzheiqfQx
	AtFqz4+Q4Eyo16YiSn96LfwgEDy4DdbSzJ69ZSaEhuzgxk5Bs8y4rbhoHm1CudKo5xACuBSj+Yi4/
	thHLmZmAYHp4IX5linT36HrVKchpM9dCfLtggIYgBF8WQSI9v3IKIZrikW7Hgo7Mw0TuSVObGHcjj
	dr//Qcw3R+TKmpI4yHkNMdIxJVl68CVqrogkr0HIO7CADywVyleWtltuyrF0FdO67OxeczY716Erd
	rOej35ZB8+GaG59oL2SPRFtaYI0A/P0FDVQtSo/QrkQeaGKP8UKfJg6SPzgqra8mAHMdchohwCnCN
	Q67hYeFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nng-00000008BFe-0bxl;
	Wed, 18 Mar 2026 10:06:52 +0000
Received: from cczrelay01-placeholder.in2p3.fr ([134.158.66.151] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2nnd-00000008BF4-1MFH
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 10:06:50 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id E305A1800826;
	Wed, 18 Mar 2026 11:06:45 +0100 (CET)
Message-ID: <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
Date: Wed, 18 Mar 2026 11:06:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20260304-arm-setup-c-v2-2-d26af520ab03@pengutronix.de>
 <79efc69c-d161-4dc0-9a95-f6176b7331c7@pengutronix.de>
 <aa_1-MX7hnrlJ3Ff@pengutronix.de>
 <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
 <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
 <abpbuoyzwbrFOZkd@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <abpbuoyzwbrFOZkd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_030649_496757_D069BE99 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

https://paste.debian.net/hidden/5de2d5d1

Le 18/03/2026 à 09:00, Sascha Hauer a écrit :
> Hi David,
>
> On Wed, Mar 18, 2026 at 08:49:02AM +0100, David Picard wrote:
>> Hi,
>>
>> The boot log with CONFIG_DEBUG_LL enabled for 1st and 2nd stage:
>> https://paste.debian.net/hidden/d82f6a59
> This starts with:
>
>> lowlevel init done
>> SDRAM setup...
>> SDRAM calibration...
>> done
>> Switch to console [cs0]
>>
>>
>> barebox 2026.03.0 #1 Tue Mar 17 14:17:44 CET 2026
> The binary has the same timestamp as the one you posted yesterday and it
> doesn't have my patch applied, otherwise it should print the 8 hex
> numbers followed by ABC, just like the 2nd stage shows.
>
> Sascha
>



