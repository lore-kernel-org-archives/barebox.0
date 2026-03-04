Delivery-date: Wed, 04 Mar 2026 08:49:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgyk-007uMB-1N
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:49:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgyk-0005yf-Mp
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:49:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aUy54QhWye5mjPdiF7DZKX+iYD+BKyqo/BVYoDhIyUA=; b=W56Ii3AzYE9YymXCTUwY2lrNOB
	WY+m1AAPzsQToU3GmdU1iJl3JcrWiibV47wJD5iH21uBY91zZkLTDKQ7TD36snP5Niw7ogywFvtlA
	Cov1+89W8GLH/WdAIz76EJK3dojGSfTL+eNMpwekqiNaDg1YRjYbGU8bv0rDTECy9Utryis1cnphg
	nkRuM/YGWe4Zel94TosHRrEUW8a42Ml7MRuyGwkmJcfAruhj+BgQy8uSHXGOZDw96m5l1jLfL7LTf
	urDrRHFOcSBMV2/huGxNp0j7zpG45DpEti8wG+7Ygjvo9RO3hwLr3Ur+1z3gehFC6wWTkCzyZMLIk
	xmcwOiHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyJ-0000000Ge1O-2eHL;
	Wed, 04 Mar 2026 07:48:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyI-0000000Ge0r-2B3n
	for barebox@bombadil.infradead.org;
	Wed, 04 Mar 2026 07:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=aUy54QhWye5mjPdiF7DZKX+iYD+BKyqo/BVYoDhIyUA=; b=iGnKTknZifxsCmlvdK+EwWTVDC
	2vGEYstqrIm86eUEyDwga1crtJ3OGCaRpvg2A5OL3Z9AmBNqhxw6z7M08LN+24UHH6chA0vuDbNqz
	7ve8/cONm8SdIngAPeShDXMCChi4UmFtmuXiBtbgn+W6WvNQVFmiXax1mZvUdClXkqDG6xn5Fj+g/
	H5zH7hz3ZhaqYIy/ulZAgftPh2jic7O3dL5kgFpwwATjaj0POlRTXUp45nX7ptRFHczvjzu3xQ1Go
	n+9WKdILulM2n0FWrUi6WM2GMmZuOgoFMDdFzy/Y1IjPenN/92SSRSP/ce5jCLotlEJcz/iB8sPA2
	lnbEdUCA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgyF-000000042VI-1hz2
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:48:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyE-0005rw-L0; Wed, 04 Mar 2026 08:48:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyD-003g48-0M;
	Wed, 04 Mar 2026 08:48:38 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgyE-0000000GLpi-1eMF;
	Wed, 04 Mar 2026 08:48:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260302163748.577552-1-a.fatoum@pengutronix.de>
References: <20260302163748.577552-1-a.fatoum@pengutronix.de>
Message-Id: <177261051838.3897015.10462570530199374051.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:48:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_074839_643276_D5A22626 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] mci: add support for eMMC v5.1b
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Mar 2026 17:37:40 +0100, Ahmad Fatoum wrote:
> Newer eMMC versions than what barebox knows about appear to be
> interpreted as v4.0, which would affect at least erase group
> size determination and manufacturer date calculation.
> 
> Fix this by adding proper v5.1b support.
> 
> 
> [...]

Applied, thanks!

[1/3] mci: add support for eMMC v5.1b
      https://git.pengutronix.de/cgit/barebox/commit/?id=24b9e50b6fbb (link may not be stable)
[2/3] mci: treat unknown MMC version as greater than known versions
      https://git.pengutronix.de/cgit/barebox/commit/?id=e6c4c27a599e (link may not be stable)
[3/3] mci: detect SD card v3
      https://git.pengutronix.de/cgit/barebox/commit/?id=bf5ef9e15b7a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



