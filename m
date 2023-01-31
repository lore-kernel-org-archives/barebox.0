Delivery-date: Tue, 31 Jan 2023 10:31:31 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMmzE-008fzV-IS
	for lore@lore.pengutronix.de; Tue, 31 Jan 2023 10:31:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pMmzC-0004mK-1N
	for lore@pengutronix.de; Tue, 31 Jan 2023 10:31:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EIbjKc5ICntqt+CmwHQZXPl4ltIdgds6h55eJlojrOE=; b=RHODoN/xAM8uYjg9wMTnstECfW
	I0E3I2+QapmQLRDo52v+5u4GPKmVRALhskyHWD7+jAyOM2uq4YorMztUYbPq2PuCEog2onUaiSFfb
	SonW8xOJVd47Z67VjMrJvXdK6Lkox+Y/wz8W6MFkJjtDpI4R33ISkeW5NlIHxDs91AiVUrDnFTNR0
	qkftDI1Hu52lxZW7RL9WWd3tPB6ZXyrUnuuhfZNpaQo68IgKIC4VYyZcYN9pA611lk1MgezirALbm
	B7E6QF/twlyONVdj/NmnkiYtgNMculLuwDgbkVQpCpJFRiAG4yuM1ZywJHtRVXjvlCzGobZIDZVJN
	EQ0Nks6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmxl-0070U1-QR; Tue, 31 Jan 2023 09:30:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMmxf-0070S1-5h
	for barebox@lists.infradead.org; Tue, 31 Jan 2023 09:29:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMmxd-0004Ie-SJ; Tue, 31 Jan 2023 10:29:53 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pMmxd-00033T-39; Tue, 31 Jan 2023 10:29:53 +0100
Date: Tue, 31 Jan 2023 10:29:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: John Watts <contact@jookia.org>
Cc: barebox@lists.infradead.org
Message-ID: <20230131092953.qnu3kpu7naojqyai@pengutronix.de>
References: <20230122175141.119834-1-contact@jookia.org>
 <20230129232758.1799987-4-contact@jookia.org>
 <20230130200443.mybfhzrcsywqw65v@pengutronix.de>
 <Y9gnxmdaHL4LXklH@novena-choice-citizen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Y9gnxmdaHL4LXklH@novena-choice-citizen>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_012955_229345_A3A149FF 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 3/4] ARM: novena: Read Ethernet MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-31, John Watts wrote:
> On Mon, Jan 30, 2023 at 09:04:43PM +0100, Marco Felsch wrote:
> > Hi John,
> > 
> > thanks for the patch.
> 
> Thanks for the review as always :)
> 
> > This will trigger a double free since you're use of an unconditional
> > free() during probe().
> 
> It returns NULL, so probe will do a no-op.

Arg.. you're right. I shouldn't review something that late ^^

Regards,
  Marco

> > Regards,
> >   Marco
> 
> John.
> 


