Delivery-date: Tue, 21 Jan 2025 09:08:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-002Zav-2G
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:08:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9J0-0005RT-Oi
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:08:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XSmGjlpSzbKzOtBmQsFkaIlGXt25ItbvnZjxKNTaaHQ=; b=CieMNxJr6naRzpaAU4ljFqPx+y
	jNiCgAj0NLHD+oCWXQT857LO4Vys0GHwiMdDyKjxUuJFh7vGxUgMWFV3rEAUb+nnSm+h717L4TwoB
	Ik27pPSvAyDEV9t5+mAMKqQEKJwsGxKYqIcSlsAOV0ZLaEegn0rWTVdwYZRZNbeaF2/u/g61GTvvC
	EF00isLP748hee27+1VxFG5QNOKH2O6mOkO8jGl/OZ3/CQIlPPSnmMiTIB0SkhbU1RmAErQsxVatG
	YlIwbH//7VuG34M44SI4l7hvhn1RQuYFkOo8JDY1P67Y/UhdWnK5acN9LiywhPTn6l5XgbIXEpUIV
	Zgohw2jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IZ-00000007DBP-3pzz;
	Tue, 21 Jan 2025 08:07:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9IV-00000007D82-1oaa
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:07:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IU-0005BC-3S; Tue, 21 Jan 2025 09:07:42 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0014jH-35;
	Tue, 21 Jan 2025 09:07:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9IR-0012g7-2s;
	Tue, 21 Jan 2025 09:07:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Felix Singer <felixsinger@posteo.net>
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
Message-Id: <173744685988.248524.1314477987701222093.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:07:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_000743_471952_EC522F32 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 00/13] images: add barebox FIT image target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 12 Jan 2025 09:34:19 +0100, Ahmad Fatoum wrote:
> The generic barebox-dt-2nd.img depends on the user to fish out
> the correct device tree from arch/${SRCARCH}/dts and to instruct
> the preceding boot stage to pass that device tree to the barebox image.
> 
> To make this easier, especially with an eye towards using this as a
> coreboot payload, let's have the barebox build system produce a FIT
> image combining barebox-dt-2nd.img and all the enabled device trees.
> 
> [...]

Applied, thanks!

[10/13] images: add barebox FIT image target
        https://git.pengutronix.de/cgit/barebox/commit/?id=2b947570fa46 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



