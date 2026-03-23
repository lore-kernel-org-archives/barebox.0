Delivery-date: Mon, 23 Mar 2026 14:23:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4fFG-0048YH-0S
	for lore@lore.pengutronix.de;
	Mon, 23 Mar 2026 14:23:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w4fFE-0005ZT-NJ
	for lore@pengutronix.de; Mon, 23 Mar 2026 14:23:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XfbyLpKDX3PF0L73HOou/RKeOo8w8vRcxq5d3oE0d04=; b=XeDaU2jVhxd8IY5T6i+8qQeb9/
	FDkQY6Y12e/uI/O9cghTJ5QSp3NQbdNNXGx+Uy3OdIw7imlywrWgN9Pix0drEfNHk+9FwCjvPId9D
	mzqOUzlwsH0UOT7OxI6pxsgQEkAcUpY47l3v5VYKVB38EH1MU8wVyrlMsTM6DSVxYzqY6BYjXAIcR
	qQ7+L550Dt6yCNRoDvz1eJ9pHIShwWnMhszrLwcpEYl6Rs/MbL9n6sSQm5qKxmegTc8bKNgBeH/uv
	pmKjXaOOmQfcYBrfJ88Iu1CbyhP7WpUzTJXnn7pEQxd9ijFsoDk1R7diNeYEQmHpc20DZdvnfnPVr
	nlt+TIvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fEV-0000000GnhU-3SRW;
	Mon, 23 Mar 2026 13:22:15 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.152] helo=cczrelay04.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4fER-0000000GnWR-3yD5
	for barebox@lists.infradead.org;
	Mon, 23 Mar 2026 13:22:14 +0000
Received: from [172.27.130.86] (unknown [194.199.39.1])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 5F6918006C6;
	Mon, 23 Mar 2026 14:22:06 +0100 (CET)
Message-ID: <aa77c7f5-0039-43a6-9d3f-2cbb59406bc6@clermont.in2p3.fr>
Date: Mon, 23 Mar 2026 14:22:05 +0100
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
Content-Language: en-US
In-Reply-To: <abq80-X7w9qQgooP@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_062212_137776_2A558450 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] ARM: setup_c: avoid clearing BSS twice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

I just tested today's master (0933e8f2ebf0d91dfcf177a4e4292b02921a53f1) 
with your patch applied, and it works.

I did checked the timestamp, this time...
barebox 2026.03.0 #1 Mon Mar 23 14:07:47 CET 2026

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



