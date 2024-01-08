Delivery-date: Mon, 08 Jan 2024 13:50:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMp54-008p9v-0e
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 13:50:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMp53-0003vw-M2
	for lore@pengutronix.de; Mon, 08 Jan 2024 13:50:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ik9fWAlM2vmLInheUtTiQl9SVvyEu/NoKv4UpkqVy2A=; b=xP9nj90MWpR5hePe9tXNKTQlTm
	Ep7FautrTz6X5UPrY3WvQELELY+H7Pixuh2ndOZgnMUtAEe43fb24ls1xD4R0+PwLwvDve1g19e/C
	ZdKloEI+KUkUAwXwWHgmiryC4JrBdLBuS81w2fwYzXCmCje5TocswPyp++zpkhsSxXjrJ9vZf1P2B
	op5mjJsP3YqGRp6NG4aw34RWc08/WzOkdNHmg8yBp8jN6UQ1fD5PHHHfpdLOiaU+y+L0mMU/h2tSL
	q28+rBy88ijU5E+j2gwgvFQ15UG329UQfOkz0cfY070VClPDe/OCOB8E8Bo82Hiv8Ex9XSZncRadq
	MT7PjjnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMp3p-0057Yx-2I;
	Mon, 08 Jan 2024 12:48:57 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMp3l-0057Wl-0E
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 12:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:mime-version:references:in-reply-to:
	 message-id:subject:cc:to:from:date:from;
	bh=Ik9fWAlM2vmLInheUtTiQl9SVvyEu/NoKv4UpkqVy2A=;
	b=tLCfWMf1axohrJwcOqLrQy7y7tXxpEGrqSjeISoeIte5aSuHjFkvB3Uz/S9qWyRLcXE1tUbdK5P2M
	 GJovuQvoZfezT8WNshvirWkSOMSBLQ0uLig1eUoufEzLsNMOcz7UWKySVxajDuNTQ77CHdQ0In+RW0
	 mlOL/RRY4ZQbc+YhNP781nMFRWTj8nkAE86HGbWUqFir0c0zSvtVH1DHOSXfZPtPJyPSNPcbu7Qa7M
	 PO/sPQErWCYTbIi7rDHKJWw3qMiFcl4gGYLFZQWACkjZKObvmWWJ8AtFdU0mmiEQeXrGVTohDGC/cI
	 lQt3qhmqrPgueDHGJ5VCyTWKxB44T9Q==
X-MSG-ID: 44942705-ae24-11ee-a367-005056817704
Date: Mon, 8 Jan 2024 13:48:48 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240108134848.5ed633d4@ERD993>
In-Reply-To: <20240108121709.0f40c768@ERD993>
References: <20240102170100.1596372-1-a.fatoum@pengutronix.de>
	<20240102170100.1596372-3-a.fatoum@pengutronix.de>
	<20240108112958.3b582cbb@ERD993>
	<48a6551d-b6a9-45de-bcca-71599b39a1ba@pengutronix.de>
	<20240108121709.0f40c768@ERD993>
Organization: Protonic Holland
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_044853_522370_D2A3FD8A 
X-CRM114-Status: UNSURE (   7.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 2/7] nvmem: bsec: correct regmap's max_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 8 Jan 2024 12:17:09 +0100
Robin van der Gracht <robin@protonic.nl> wrote:

...
> > 
> > barebox@Linux Automation MC-1 board:/ ls -l /dev/stm32-bsec 
> > crw-------            384 /dev/stm32-bsec  
> 
> Thats more like it. I'll apply the full series and recheck.

This works as expected. Thanks.

Minor note:

As you mention in your patch notes:
"struct regmap::max_register is in units of struct regmap::reg_stride"

This used to be the value of the maximum register number (index).
The doc in include/linux/regmap.h line 33 mentions 'index'. Maybe that
needs some mentioning of stride as well..

Regardless:
Tested-by: Robin van der Gracht <robin@protonic.nl>


