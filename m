Delivery-date: Mon, 31 Mar 2025 09:06:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9E5-006Sxo-08
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9E4-0002W5-GZ
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:06:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=waUg+pDfLco2412z29n/a26Fm10EEDfo+r35u+C2Uvo=; b=RiRmjXri+v2c0dJVjy0A3ybn0B
	PoqEI8Me+XUbsssSVv9XmdJpDHnsLyo4wmSR+igY3byBZrblCbnPe0ABumMXBI+pJ2LwnATPX1TK4
	8yTfzhYeeUiNggr0VYz1xqhe7bXmSg1CW7e7bPir8is8SgzJMJAZ+pTj5WjA9Q7LowpIWlro2nCvu
	zoJg4mPTbdViWsB5eQsa0hMiUBoBnEFrzdLuKMmN2W++30K3J0CXLer9ei0HLuCAvIRVR2hByID+X
	ZkqNgmWu5F/P5hnum9pRGbNgF+dbtNa3lQvGqK2cQSGG457bmhPjJjv+UyRs4+geRyja5353zgdFO
	yTpcW2jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9Db-0000000HA2R-3tfz;
	Mon, 31 Mar 2025 07:05:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9BJ-0000000H9nU-3gND
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:03:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9BI-00021r-EA; Mon, 31 Mar 2025 09:03:36 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9BI-002YB8-0o;
	Mon, 31 Mar 2025 09:03:36 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9BI-0015bR-0c;
	Mon, 31 Mar 2025 09:03:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250328083509.513606-1-a.fatoum@pengutronix.de>
References: <20250328083509.513606-1-a.fatoum@pengutronix.de>
Message-Id: <174340461618.259818.13694372893646679700.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:03:36 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_000337_917915_675BC425 
X-CRM114-Status: UNSURE (   7.24  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: payload: init: fix condition in warning message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Mar 2025 09:35:09 +0100, Ahmad Fatoum wrote:
> The warning is supposed to point out a missing CONFIG_FS_EFI as possible
> issue, but the condition was inverted, so it suggested enabling it when
> it already was.
> 
> 

Applied, thanks!

[1/1] efi: payload: init: fix condition in warning message
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b7535e2a84b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



