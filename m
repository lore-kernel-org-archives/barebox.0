Delivery-date: Wed, 18 Mar 2026 16:44:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2t4R-002FnY-2Z
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 16:44:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2t4R-0005d0-5g
	for lore@pengutronix.de; Wed, 18 Mar 2026 16:44:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p04xGh5a5dgjsoYkvD8qhnmv4aL6+9MGKtdXzxLt420=; b=061mt908d2GskPlQx4c7OCXwwM
	c12CCDU52VbkmiieGCl07jSWUL2hyGSMJFmKmyZ4NCuV1sHsK2tHHqeM74bz6CzUAruoqWaCgT8hp
	R4h9uhz6/Hy4+NwoXndJRwLPGuncdNiXqp8txz9Z1QNiiNZYKz/XIoVYzHpq6StvYE5tK3sYHIr8/
	I6omPpgvZeeeRHA1rvUETq8gNw5tHN/Jbedd598VLubtWcEL7zM6qBRaZ9Dz68mwVsHpkp5eeHBNP
	IJ/3/701XjJiq4FIs9yTb6cX+xrVjjv2pkUyrwVPKqAgMn4FijwDaqkhMeJeL3VkXhKOOa8aZVOha
	VB/Zkj4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2t3v-00000008kdk-1KgN;
	Wed, 18 Mar 2026 15:43:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2t3u-00000008kdb-3AAP
	for barebox@bombadil.infradead.org;
	Wed, 18 Mar 2026 15:43:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=p04xGh5a5dgjsoYkvD8qhnmv4aL6+9MGKtdXzxLt420=; b=YgvqjdLt+8MJURjsdhtMmdmUPG
	2y8FsNiSMy88tkcxFT84Y7HYZq9c1xsndKl7ImtfX0fCEKqXck6DrPEr4dJaWLwq/h4YfQdnDISy+
	EjzGQlvsOQ1c+wdaI9JSSWGHZJVMutR/1MEkMQg6qP4yQQonMrcBzuiIcQkg6eAKd2A3IG65RMVpl
	Fu6OoFHqtNYJiEV/8909b8iQQk9XfeJvYT7BH+9FeuQH6husRwq6LGYmiR3nDdpqAj6OboFIgW7Ms
	oaQymh9PX8zxTPVw6ny+qPD9ZswFuf3eGOEiHw/mt4BMf3upIgBml4ySeyUq/QBS995iFtp7fZ6Jc
	mx7mumsg==;
Received: from cczrelay02-placeholder.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2t3r-0000000Baxq-2cF7
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 15:43:57 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id C0ABE8005FA;
	Wed, 18 Mar 2026 16:43:49 +0100 (CET)
Message-ID: <63a902c9-b6e0-4f77-9bd8-a104423468fd@clermont.in2p3.fr>
Date: Wed, 18 Mar 2026 16:43:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <ca6784d7-14c0-4716-8951-67d31fd40cdd@clermont.in2p3.fr>
 <abkZpI9KA1Q2A7VL@pengutronix.de>
 <227c88b2-009d-4292-a8a6-07e18d10f82b@clermont.in2p3.fr>
 <57f1a773-8ead-486d-88a3-415d96966918@pengutronix.de>
 <e0c8e7e3-13d2-4f1d-a2f2-47e5d94c25cb@clermont.in2p3.fr>
 <9c45c9dd-757f-4a13-8b6d-34eccab8fc5b@pengutronix.de>
 <1f36feab-574b-4dc5-9a2d-4eb1da213d6f@clermont.in2p3.fr>
 <abpbuoyzwbrFOZkd@pengutronix.de>
 <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
 <121dc773-a7f4-4d8d-851f-0ff10dc3c8c8@clermont.in2p3.fr>
 <abq80-X7w9qQgooP@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <abq80-X7w9qQgooP@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_154355_729154_1C37C4F1 
X-CRM114-Status: GOOD (  11.10  )
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

Oh, I'm sorry about that...

David

Le 18/03/2026 à 15:55, Sascha Hauer a écrit :
> On Wed, Mar 18, 2026 at 03:12:23PM +0100, David Picard wrote:
>> Did it help? I can make more tests.
> Thanks, yes it helps.
>
> The patch you tested basically is the same as I reverted, modulo the
> debug prints. So indeed the original patch seems to work. My assumption
> is that you didn't have Ahmads fix applied which is on current master
> now.
>
> So I am going to re-apply this patch. Please let me know if something
> still breaks.
>
> Sascha
>



