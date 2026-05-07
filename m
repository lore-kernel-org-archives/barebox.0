Delivery-date: Thu, 07 May 2026 13:20:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwm9-001wkd-1W
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 13:20:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKwm7-000193-Fz
	for lore@pengutronix.de; Thu, 07 May 2026 13:20:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WurfjcG6HRrZjbTUjDEKG5aLG6QUvVOTuHhZGBRxRug=; b=emkLNCeohq27y2WfXr2oZwXPCE
	hMu1K+06VJlAmSCCnyJQWbNRs9JMNoeXMYazv8oS8V9TEM9MuhoGyfzkbHRqZkj+XPsJdjoSdYoCZ
	C0P/xEHy7lS/nYuXjsoY02ra4jkbKu8kNLfCoIzY69G5CoYAHWIQAstrTfKLiRY0fTxUxNyT1wDH5
	xwqpaR/jA7Ujqc2alkdXNYKtwp3fKTvIl16dazMVM2yFYh04Gi2Xk1wP0uUjOwV+g8bqG1XtmjK05
	w1FxL1CkNyFaxI3Q7LvJblez+YDKw1qi0ZruVAm7WlNfbWpoWBFXnDZcO+PuW8zzJU/Ts7ZwlkLlP
	j4dwwk7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwl0-00000003b9Z-0HII;
	Thu, 07 May 2026 11:19:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwky-00000003b9F-38OQ
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 11:19:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=WurfjcG6HRrZjbTUjDEKG5aLG6QUvVOTuHhZGBRxRug=; b=cf4lbMn3QlW2HJFGT1qZoz2wga
	O8bnOwJnRji9WQpN8PCVApOry2nxzR2SCD7bAs2e4ZVuCSZ9Vp7QaAbfZyUAkKhaBpENA/vCIa+WP
	IFsocRBPxZkOFOjKFo1uw/Eaz0IxHnoaTVJ9xeUXtrcEa3zw+nC2Xk7qlvrWxO8iLVlJFvKaQ5crV
	OxcjDxGcK8eJxbZmJ0RP9PwDSVXKToGmxzOU/wpAgIJ/76j+q7n0C+1xconSPcSf908q9ABLJmoZU
	5+Q+NmKlMwdDVeXbsl8CWJjEslu1daP2Ht2+E+8DyCoyZQNRI6SL1xCVg2TbIJqvMCB1y8e6iIUHM
	tvL4B0Wg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKwkv-00000003KqM-1cKT
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 11:19:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwkv-0000Od-2r; Thu, 07 May 2026 13:19:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwku-000uei-1R;
	Thu, 07 May 2026 13:19:00 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKwku-0000000Bloj-3VS6;
	Thu, 07 May 2026 13:19:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260501065321.950215-1-a.fatoum@barebox.org>
References: <20260501065321.950215-1-a.fatoum@barebox.org>
Message-Id: <177815274083.2805334.17844692381352835382.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 13:19:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_121901_840273_6A2961F1 
X-CRM114-Status: UNSURE (   5.10  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: ktime: move ktime_t definition globally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 01 May 2026 08:53:17 +0200, Ahmad Fatoum wrote:
> To allow use of the type without including the ktime.h header, define it
> in linux/types.h. This is also where Linux defines it.
> 
> 

Applied, thanks!

[1/2] include: ktime: move ktime_t definition globally
      https://git.pengutronix.de/cgit/barebox/commit/?id=99faea535e80 (link may not be stable)
[2/2] readkey: handle standalone ESC keypress with timeout
      https://git.pengutronix.de/cgit/barebox/commit/?id=140096206f2d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



