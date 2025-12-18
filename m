Delivery-date: Thu, 18 Dec 2025 09:02:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW8yO-00CktY-0p
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:02:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW8yM-0001et-Lh
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:02:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPOaJ3T5tErnFCo/JlQXG0DcnoyqOD92KQ9X9d5OQyg=; b=y3Mq3d+5cMb3hwXl4N6eNxitMg
	hPhNqnjCQ7xBaSe0FbOplNxqRPOt4aHAzHo11B2pVj4DaVj/uW3UEKs4pQi+YAOfT+dd3mTphYIee
	xd4WXuo8BhogYzw2C8Iblqq8qg5EgpaVFbrJd9i9vpQoDXxesh0eTrq0kmVaWJdYf0D3SfvM6nz1h
	qCa69or0IDs8INLv+8AfAyBFQ9nOXDfAgaSXw2TBdmAYQhFPgLE8p0y7jeNMAEl/ODptFLLhM99w8
	rxdsEmUMQtf+R1TZPQFaCII04duDLt0gv3g14Sagfu5y5aBVsP3Un+Iv53+TRAON9RCZrfmm46pKu
	c22FgcZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW8xa-0000000800Q-1Ycu;
	Thu, 18 Dec 2025 08:02:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW8xX-00000007zzc-1UQH
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:02:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8xQ-0001WI-W6; Thu, 18 Dec 2025 09:01:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8xQ-006F3q-2b;
	Thu, 18 Dec 2025 09:01:56 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vW8xQ-00EWpF-2C;
	Thu, 18 Dec 2025 09:01:56 +0100
Date: Thu, 18 Dec 2025 09:01:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Jonas Rebmann <jre@pengutronix.de>
Message-ID: <aUO09HV-GkPRiJX6@pengutronix.de>
References: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251217103547.4046898-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_000203_398304_2A4371E4 
X-CRM114-Status: GOOD (  16.09  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] scripts: add helper for generating Origin-URL references
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Dec 17, 2025 at 11:35:46AM +0100, Ahmad Fatoum wrote:
> To improve tracking where code originated from, e.g. when porting from
> Linux or U-Boot, some recent commits have started using Origin-URL
> comments. Add a script that can generate them.
> 
> Examples in Vim:
> 
>   # add into highlight URL pointing at specified file
>   V:!git origin-url ../linux/lib/ucs2_string.c
> 
>   # as above, but consult buffer extension for comment style
>   V:!git origin-url ../linux/lib/ucs2_string.c %
> 
>   # generate in snippet syntax
>   V:!git origin-url -s ../linux/lib/ucs2_string.c

It's worth mentioning that the repository you point at here needs to be
checked out at the very same state that it was when you copied the file.

In other words, there is no magic that tries to match the barebox
version of the file to the closest linux/u-boot/... revision of the
file.

It's a thing to remember when somebody reminds you of adding the
origin-URL in a review and you call the script a week later when your
Linux repository already has another revision checked out.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


