Delivery-date: Mon, 30 Jan 2023 21:28:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMal2-007zup-88
	for lore@lore.pengutronix.de; Mon, 30 Jan 2023 21:28:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMaky-0000gG-WE
	for lore@pengutronix.de; Mon, 30 Jan 2023 21:28:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2F9FX0E+7ERFFHE65arFhhU6VOHD6L6CSyec3wCt/9A=; b=L63R2bXx3diljIXt1B0HBpsNE7
	G2vTy3BF25TPglLvxWbwlsMpsPxXhifbDZfrcvCxnDmJ790Uy0PVmV2iVzeRQIHxfRdzmPP5LsFtw
	dMLPN1h97/tV1ACc3UZdCSKsyFMBm5bzIssV3ZuHqKM+j+fjhCZjB+usN0igiaExasxYdiy44aRYi
	aL88wuKtZaUnSUuhFEGSBEiPxiPN8HghEYYNU+NoWbt6nKfU9tTXL6GmwTa5ZXVGXVQ3cHVmGwQyQ
	DtszqTPsknPUL24S3QKJ8QFaqESbrV+fU9t8/e6aVEw7m9FFuoCLeVRw0iEN2zML1HdIJzAxVRaaU
	agvqO4bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMaji-005LtN-1u; Mon, 30 Jan 2023 20:26:42 +0000
Received: from out-166.mta1.migadu.com ([95.215.58.166])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMajd-005Lsf-1y
	for barebox@lists.infradead.org; Mon, 30 Jan 2023 20:26:39 +0000
Date: Tue, 31 Jan 2023 07:25:42 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675110390;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2F9FX0E+7ERFFHE65arFhhU6VOHD6L6CSyec3wCt/9A=;
	b=C+jwVp6H4YvyIbVQkmfX0+ZLEOHgizZGuTEVhx9MOM25WstKUseTDcVma36k7wQDJWulzN
	4F9g1Hq+6EGR1clSmkfez08kr8pCnrO6Tj3jewzDhTYqIMdzoHboV8nHGxKOlw2fBNXxDX
	jpnJUDwqDfQAtGmEqpFVLbVE6YGu/aZFo6Kc/yEYJV77t2veA6W1vbfPrtVT2ILsdknYs6
	yD7W52v8wpWnFbL0Ok+fBoAMea6+T3F1gNwO5KiB6KlUWJfZlVDqkQZZEl16xOFJZLUtOA
	tTQVlT4hRSRoBBt4IU7hpvHzh0H1GxUUkm4OjVZAi/MM1CmaO2q0tYA1yE2r6w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9gnxmdaHL4LXklH@novena-choice-citizen>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-4-contact@jookia.org>
 <20230130200443.mybfhzrcsywqw65v@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130200443.mybfhzrcsywqw65v@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230130_122637_829185_9BEB172B 
X-CRM114-Status: UNSURE (   9.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 30, 2023 at 09:04:43PM +0100, Marco Felsch wrote:
> Hi John,
> 
> thanks for the patch.

Thanks for the review as always :)

> This will trigger a double free since you're use of an unconditional
> free() during probe().

It returns NULL, so probe will do a no-op.

> 
> Regards,
>   Marco

John.


