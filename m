Delivery-date: Wed, 14 Jun 2023 16:00:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9R2c-006jHl-Q7
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 16:00:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9R2a-0006LI-Fn
	for lore@pengutronix.de; Wed, 14 Jun 2023 16:00:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EkKZ1ZzVMwx2JiOfj3JirP9cQ6DP9gwy2TchW6rRZeo=; b=s3ZKkLNk7dnwQMeO+ojcrAC0/i
	CGGqzgJUIP1u5Nr6hnp9UbAoCF5Ouud+lbyKJmeWoweVfteeQMJf3GY8gevjdfn+GKs6mmsND2dDS
	5uBVD7ahoRjnAMMempEKPWdDqCaPvutVe51fNQPDoIESiefjloksMRrMNhdyesOKmNdXp41fvLXvN
	sZWcmmsL3ya97AqQhFMV3tjlvJA4VL8GP7HalDArZeKnq2cwOeOnLPTwjz+VwgxqChRFQSDYcR9ke
	i9j4u0jEpt/oHdY2lEb0aK8CFjMT/mV3S95PKY4HPJduG6K130BBiICu91waxP4Ymj7CXhVLzJu1c
	2D5mHo+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9R1b-00BqFL-0x;
	Wed, 14 Jun 2023 13:59:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9R1X-00BqEP-2h
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:59:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9R1W-0006ET-Hx; Wed, 14 Jun 2023 15:58:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q9R1W-0007nT-0U; Wed, 14 Jun 2023 15:58:58 +0200
Date: Wed, 14 Jun 2023 15:58:57 +0200
To: michael.kopfensteiner@vahle.com
Cc: barebox@lists.infradead.org
Message-ID: <20230614135857.GY18491@pengutronix.de>
References: <20230614135133.59312-1-michael.kopfensteiner@vahle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230614135133.59312-1-michael.kopfensteiner@vahle.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065859_870634_959B619F 
X-CRM114-Status: GOOD (  15.44  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: driver: fixes argument name mismatch in
 for_each_cdev
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

On Wed, Jun 14, 2023 at 03:51:33PM +0200, michael.kopfensteiner@vahle.com wrote:
> From: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
> 
> The for_each_cdev makro takes a pointer argument as loop cursor.
> Due to a name mismatch, not the provided pointer was used but
> whatever was called `cdev`.
> This mismatch had no effect, because in every usage the given
> pointer is named cdev anyway.
> 
> This commit fixes the name-mismatch. The makro now works with
> arguments name differently than 'cdev' too.

Thanks for fixing this. Ahmad was a bit faster though, it is already
fixed in next branch with 7fb4fd0417 ("cdev: fix for_each_cdev macro")

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


