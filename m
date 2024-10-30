Delivery-date: Wed, 30 Oct 2024 09:49:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t64Oq-002d24-0N
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 09:49:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t64Oq-0001lk-Pp
	for lore@pengutronix.de; Wed, 30 Oct 2024 09:49:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sLegpYGePiPLm363y2rc6BCJNHsPSgKznS0SJUAos/M=; b=f651W+8QeTfY4SgEG/113hwiCA
	Nfrs/Z3l7otPVHScGhOoMfhplj4u5Hkx322lv1CMEgw9vIKsQS0rTSqyIW+MLpr63zLPuoOltPvCE
	DBKMm4Sx0rraTax4xM8G2vTvNMKx2BWwcz9i6sfw8UhqqllshXs36W5o5jZXR+y09nCnqDtR9yFPd
	690aSbi40IZKV9Fw7GuzA5ztiYSc3kr82OMvdgMWmoi0DpGTfZV/hFVlvau8aGFf5oBse10l5Ih8i
	GmDK5MK8Stl3CvGVttrHtY2u/ASCEUYAOd7OgkkylWQEi25PtVs0SXmw5LrAI8L/LVafkZh81F94d
	/VFxBirQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t64OE-0000000HKDI-2RAb;
	Wed, 30 Oct 2024 08:49:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t64MS-0000000HJmX-1SuR
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 08:47:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t64MP-0001Qf-08; Wed, 30 Oct 2024 09:47:25 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t64MO-001ANo-2W;
	Wed, 30 Oct 2024 09:47:24 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t64MO-002lQQ-2L;
	Wed, 30 Oct 2024 09:47:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
Message-Id: <173027804472.658927.4036317073326810343.b4-ty@pengutronix.de>
Date: Wed, 30 Oct 2024 09:47:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_014728_511891_87928A19 
X-CRM114-Status: UNSURE (   6.63  )
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
Subject: Re: [PATCH 0/2] downgrade noisy debug calls in block devices and
 ramfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 28 Oct 2024 17:17:00 +0100, Stefan Kerkmann wrote:
> These two patches are the outcome of an investigation why loading a
> fitimage from an eMMC took nearly 7s - the sheer amount of generated
> debugging messages slowed down the system by a factor of ~21 with
> KConfig options:
> 
> 	CONFIG_COMPILE_LOGLEVEL=7
> 	CONFIG_DEFAULT_LOGLEVEL=6
> 
> [...]

Applied, thanks!

[1/2] block: downgrade noisy debug calls to verbose debug
      https://git.pengutronix.de/cgit/barebox/commit/?id=e3c8e1efda5b (link may not be stable)
[2/2] fs: ramfs: downgrade noisy debug calls to verbose debug
      https://git.pengutronix.de/cgit/barebox/commit/?id=958909804650 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



