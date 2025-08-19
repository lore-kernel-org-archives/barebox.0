Delivery-date: Tue, 19 Aug 2025 08:03:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFRp-0028iS-0K
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 08:03:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoFRn-0005xc-Rs
	for lore@pengutronix.de; Tue, 19 Aug 2025 08:03:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jBS8vGhNVZ4kFJ24fB2rYGCRFmpcf/zCCnXro6aHPXs=; b=to94oKomYNQUHgTmpZlwAkFCA7
	jerwXrbL5DqPRb0Oo58Pvem6pp+j4RzyEEMbw6JzHR1kK1kNbJlicr/funPtt7jMOq9JvF/qHQv09
	0+syVjCJka3B/YE3XBtD/bFXjmihfcoeuWSpA6qnd6Lagz+INHiGUp+y8ekzQZDs8rdfzuOV9oGnd
	111JhJGJ1E0tSTZ1Us+c4iZeO4jH2wFcr6hb2DQMLfrPnVnvT57+mgHPNSBgoh9stxloF7+ND08wI
	0gNHntYH7m2//6Q0ZQglBX2dakWFsLlCNJ0eU6Ml1cHFu2hp2hgp/tx2U+dtWgzL8f/U2kxxkM+BD
	N6EMQ1hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFR0-00000009Twd-1qum;
	Tue, 19 Aug 2025 06:03:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoFNh-00000009TeP-2VIB
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 05:59:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFNf-0004lz-SF; Tue, 19 Aug 2025 07:59:35 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFNf-0011KP-2D;
	Tue, 19 Aug 2025 07:59:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uoFNf-00Cxsb-21;
	Tue, 19 Aug 2025 07:59:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250818083902.1536392-1-s.hauer@pengutronix.de>
References: <20250818083902.1536392-1-s.hauer@pengutronix.de>
Message-Id: <175558317561.3090096.592027828084120384.b4-ty@pengutronix.de>
Date: Tue, 19 Aug 2025 07:59:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_225937_638457_86C30905 
X-CRM114-Status: UNSURE (   5.28  )
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
Subject: Re: [PATCH master] partition: Fix wrong check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 18 Aug 2025 10:39:02 +0200, Sascha Hauer wrote:
> In region_overlap_end_exclusive() we pass startb - 1 as endb argument to
> region_overlap_end_inclusive() which is obviously wrong. Fix this.
> 
> 

Applied, thanks!

[1/1] partition: Fix wrong check
      https://git.pengutronix.de/cgit/barebox/commit/?id=f74cd4ff8a31 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



