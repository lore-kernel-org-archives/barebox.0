Delivery-date: Fri, 13 Mar 2026 15:49:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13pY-000F7b-2J
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 15:49:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w13pY-0000XZ-6U
	for lore@pengutronix.de; Fri, 13 Mar 2026 15:49:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mjGaOFlSWc86IUYmSgj6LAmrUS41uDfj2qUtczPG1/g=; b=2dSfQVgswkO4y19TtpO2OioWCf
	9lPvavJn3Uaz7nGotZ9VXyzxLfdO6w2JgT/E1B23nf8Ld6lgDgiA52udo2aXWBHN1TsZvKCXGel2E
	9zeo4KMTakNeLga/3hNKUshkjoMJBObdufSZsmKVNbi0U+aw723j3U77SYci44rD9oCFfu6DJZgoh
	FaoyWx21N27wl4q6IWpGB6v3fdGaLg+3Ebf/v0fYFB36tbGO5HtTLVdgUSo7hmgseRoXLf0/+LcW2
	iMTOTidtXHeGpB/6T+k4gcmxwAo4itiC9kcXhfoTaFu4ZuDQHrvnD8DH1hPh9O6FNUsCFYkq2Ic7t
	HG39e/UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13p3-00000000Sbg-0T4a;
	Fri, 13 Mar 2026 14:49:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13ox-00000000SVH-44ny
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 14:48:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=mjGaOFlSWc86IUYmSgj6LAmrUS41uDfj2qUtczPG1/g=; b=hs2r4uBxnMGzt2POqFfcspusrc
	+pKrUZAvIXJrN8xdVqt7ZIp7OHrwj1OGxjK8Wd1LvQgF83rSRXFAM1Pr88TpTsRrOqlDmk48mD4/8
	3dKRCLH4g8+kNxIA+85Arxi634ISdahyQBVrjl2I/zVcelTtHm5LBfqbIccVYYVuVwaZDAax5rVn+
	6H5LeLW2gKMBs97Mv/RUB4YRhlTAWX8d5IjGxuo5a+IWMr5NpT+UQIvU/H9q9p6CLngW/mwtsoNO6
	WeMFx3WmyOqwdamAHOYkF4R3Z4BpCWbBIgPSnfo6FbAB/BqOpm05vORAT9Uiu2QNn9B2G/4KZyRAU
	HR+hhYQg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w13op-00000003aCC-1UPV
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 14:48:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13on-0000Gb-7A; Fri, 13 Mar 2026 15:48:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13on-00062q-07;
	Fri, 13 Mar 2026 15:48:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w13om-0000000116F-46WV;
	Fri, 13 Mar 2026 15:48:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260312135526.5005-1-s.hauer@pengutronix.de>
References: <20260312135526.5005-1-s.hauer@pengutronix.de>
Message-Id: <177341332897.242540.10247075967465328769.b4-ty@pengutronix.de>
Date: Fri, 13 Mar 2026 15:48:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_144855_319319_2EBCC5AE 
X-CRM114-Status: UNSURE (   9.93  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] FIT: reconstruct hashed-nodes property during
 verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Mar 2026 14:55:25 +0100, Sascha Hauer wrote:
> The hashed-nodes property in FIT signed image configurations is used to
> determine which nodes are hashed, but is itself not hashed, so could be
> manipulated.
> 
> To fix this do not use the hashed-nodes property to calculate which
> nodes must be hashed, but instead reconstruct the hashed nodes list by
> the images used in a FIT configuration, the same way mkimage does it
> when creating the image.
> 
> [...]

Applied, thanks!

[1/1] FIT: reconstruct hashed-nodes property during verification
      https://git.pengutronix.de/cgit/barebox/commit/?id=55f25be5223b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



