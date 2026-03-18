Delivery-date: Wed, 18 Mar 2026 15:13:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2re6-002EBa-1M
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 15:13:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2re5-0007DK-Sy
	for lore@pengutronix.de; Wed, 18 Mar 2026 15:13:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vqr4CQ+c8GgwkU6zeSSOrgZtSkO0JIs6i3MN+nMaUo0=; b=kEc4MEcMo+X7zW+7auXm2B7DwT
	G8y7zmjG7m2qKzCKq1EUW86BeOWxwhmoE+SrtfJJlcOYNlWo27sWe12XS+8eCq5YqPDhCcpTl1RnA
	/FIG+2vvNWgP2W/Cps2SJEBd8aar3nk8F0QDIYVrqSFyEyzqI0wzH+K4KwxsYMQ6KytFjooHi2N2+
	Ym/qDRNwgTRaOcx586CxqY9Fdjqvh52D4a8R4NVrRSEFJwRAITk4ydFr4fR9UPrrKQ5G+8bfsEQuA
	HjGYxR9eNQXBFqV6i8oqr1uKCr0AqgepRwIRMqHIqlB0575TBLI6Xa4GMyHrZpsu98IlZVr2LdTRo
	nYMKQ92A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rdU-00000008Z0V-3RRL;
	Wed, 18 Mar 2026 14:12:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rdU-00000008Z0K-1Ltw
	for barebox@bombadil.infradead.org;
	Wed, 18 Mar 2026 14:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=vqr4CQ+c8GgwkU6zeSSOrgZtSkO0JIs6i3MN+nMaUo0=; b=l7eettsJ1CAo3ILjoarTkccM+y
	ZpPncfywaoJZnk4PyT1Ps66BOey2SYGchgyZBK4hY3PZCXFHqkeprvsCa2xsdzdnKBlK/Tuvfef7J
	FzqvBysYW5C+VymYkowSJEq/vz6gx5V4g956Sz8aiUGI01YgSVbvykTWxmmkGKz0ePcVfB+vKYXhL
	PEUgOfm2bkCokK/iEyxDK4kLUDseQH2/+Iq0QY2rErKWv+XmI6ZUFx2HZ5VvwA0+Yf6PqrG5Zdy9u
	r9yNofOL5O1W7GKYozy7Jx5Gkqim/pbUZ0uLLpPgJrz1fDtXm7Cd2NMGdrDn7DhR5cZ/NfQsQlEQV
	o+8NiYEw==;
Received: from cczrelay02-placeholder.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rdQ-0000000BM3V-3Axj
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 14:12:34 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 28AC38005FA;
	Wed, 18 Mar 2026 15:12:24 +0100 (CET)
Message-ID: <121dc773-a7f4-4d8d-851f-0ff10dc3c8c8@clermont.in2p3.fr>
Date: Wed, 18 Mar 2026 15:12:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
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
 <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
Content-Language: fr
In-Reply-To: <2b87f519-866d-4db2-925f-8a828a4f450b@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_141232_923821_94D15F19 
X-CRM114-Status: UNSURE (   9.61  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Did it help? I can make more tests.

David

Le 18/03/2026 à 11:06, David Picard a écrit :
> https://paste.debian.net/hidden/5de2d5d1
>
> Le 18/03/2026 à 09:00, Sascha Hauer a écrit :
>> Hi David,
>>
>> On Wed, Mar 18, 2026 at 08:49:02AM +0100, David Picard wrote:
>>> Hi,
>>>
>>> The boot log with CONFIG_DEBUG_LL enabled for 1st and 2nd stage:
>>> https://paste.debian.net/hidden/d82f6a59
>> This starts with:
>>
>>> lowlevel init done
>>> SDRAM setup...
>>> SDRAM calibration...
>>> done
>>> Switch to console [cs0]
>>>
>>>
>>> barebox 2026.03.0 #1 Tue Mar 17 14:17:44 CET 2026
>> The binary has the same timestamp as the one you posted yesterday and it
>> doesn't have my patch applied, otherwise it should print the 8 hex
>> numbers followed by ABC, just like the 2nd stage shows.
>>
>> Sascha
>>
>
>



