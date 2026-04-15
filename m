Delivery-date: Wed, 15 Apr 2026 14:08:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCz2z-00CPJN-1R
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 14:08:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCz2y-0003MK-Tx
	for lore@pengutronix.de; Wed, 15 Apr 2026 14:08:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V56C+th3BlZdzYy3KZGe3zR5ZlxrSZ29K2zTm7S9G2M=; b=MY2l1UETZ1r41URzyL+ok78iEZ
	fBrrNd6KUHKiM3zC0j7RxEQF7a1jUZrVkoHTFzP/pqS+DA/vW70ZPOqeXWdUtXSVwhNjrBSnTLcLM
	tDtFoYe9yCmi++zQQqpD91tbH7J5GcMmieO9bLswoPNMaEScCYQSfSDsKF+j5y0ms4uhAxmZ2VhT6
	NOcadd8ZOKDw6HUVLadPtzi0X1YDmfNAA9+J3KbSS5pB3vCjgiLJy4/f4gSgxn8r2nsZmUIVceb9A
	14DQiPebC1BLwIEAGUYC5S6xEifavx9JYZaxn2q+R0/vyiIPJqmlZDtBaCmac8qVFX7sKz+jkKkDs
	2YZr3A7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCz2Y-0000000164J-0ZZn;
	Wed, 15 Apr 2026 12:08:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCz2V-0000000163z-0SXX
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 12:08:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCz2T-0003EW-6h; Wed, 15 Apr 2026 14:08:13 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCz2T-005Vbg-02;
	Wed, 15 Apr 2026 14:08:13 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCz2S-00000009Eij-3s9S;
	Wed, 15 Apr 2026 14:08:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260415103955.3792406-1-a.fatoum@pengutronix.de>
References: <20260415103955.3792406-1-a.fatoum@pengutronix.de>
Message-Id: <177625489291.2201236.9553755489499835273.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 14:08:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_050815_175191_3CD6E174 
X-CRM114-Status: UNSURE (   8.83  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] fs: guard against unset dentry in
 get_fsdevice_by_dentry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Apr 2026 12:39:54 +0200, Ahmad Fatoum wrote:
> dentry exists embedded within struct path and may not be initialized at
> all places we call get_fsdevice_by_dentry().
> 
> Allow handling this gracefully by having the function return NULL
> instead of dereferencing potential NULL pointers.
> 
> This issue has been detected in combination with the
> "fs: fix relative path resolution when CWD is on a TFTP mount" patch
> sitting in next, where the MLO runs into the NULL pointer dereference.
> It has not been observed in other  configurations.
> 
> [...]

Applied, thanks!

[1/1] fs: guard against unset dentry in get_fsdevice_by_dentry
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff129a9c4049 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



