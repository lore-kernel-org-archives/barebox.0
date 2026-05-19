Delivery-date: Tue, 19 May 2026 10:00:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPFNI-001QXl-3B
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 10:00:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPFNH-0007KR-Th
	for lore@pengutronix.de; Tue, 19 May 2026 10:00:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CvopvCizAVxYiQvOWl5pX6xxs6x5/d6BYswBwLOyNKA=; b=snf7E7INF45iDAVvxOH0BKGzER
	EFIo+l8UUIIjJ7mV5CFbJHuilrpjGcpA/4TKSga6qjYOjq7v8KhQB9knKpk23clVDwowA4s2UPM4+
	tJPJSeyEQharLcYy2Z+gYqcykXZPoqJpKmXmv+bjaS/Vv28uzdD44jqkdLEuBRMGnIAqA3rfkL1y+
	GRxbLjeZZ62Oecr7mRQSsH/7456MKOz2sijjaQ1CUBOJHQXn/963WGoOaxPK6NwbWMKE9yvyW894B
	UhN+n/+odyyRiK3akqMnGa1U2oNc23987BIFb9cmX25Gj+NK88dRuy+d1U99VtSAroCSEoE0nU3R3
	EE9wGbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFLr-00000000aSr-0XKO;
	Tue, 19 May 2026 07:58:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPFLo-00000000aSH-1wPY
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 07:58:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPFLm-00075h-CI; Tue, 19 May 2026 09:58:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPFLl-000j3J-2S;
	Tue, 19 May 2026 09:58:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPFLm-00000002OhL-17kD;
	Tue, 19 May 2026 09:58:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260519062104.4125168-1-a.fatoum@pengutronix.de>
References: <20260519062104.4125168-1-a.fatoum@pengutronix.de>
Message-Id: <177917753026.571587.14716458253784460964.b4-ty@pengutronix.de>
Date: Tue, 19 May 2026 09:58:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_005852_502415_D2459ABA 
X-CRM114-Status: UNSURE (   8.10  )
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
Subject: Re: [PATCH] arch: enable RELR relocation packing support by
 default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 May 2026 08:21:02 +0200, Ahmad Fatoum wrote:
> RELR support has been disabled at the last minute prior to the
> v2026.04.0 release, because that appeared to fix a not yet understood
> boot hang on the Rock 3A.
> 
> The boot hang appears to have been fixed properly by commit
> 3ef8ba6540ef ("ARM: fix wrong calculation of barebox base"), so re-enable
> RELR again to benefit from the code size savings.
> 
> [...]

Applied, thanks!

[1/1] arch: enable RELR relocation packing support by default
      https://git.pengutronix.de/cgit/barebox/commit/?id=1cc414614c94 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



