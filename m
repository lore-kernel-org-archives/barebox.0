Delivery-date: Mon, 23 Feb 2026 11:21:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuT4V-004nQX-2b
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:21:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuT4V-00084M-6P
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9We9PsyKdS4GTZglRRYuEO3h9ZeS8FzreMzg/D5la6A=; b=zx1ZADhPOw6Ks1J2RfiRMnoORu
	OTS8JDw7E/IYUYA0Cv6UMANxUq9AqNAFlRDr0ppcf0+9m3AE8VPdzoaUaJ9t2aAsn6paxD7xE6eSJ
	Tuq+4vxjZM+Q7PM6O1/5CPh/XfAr8hUkNyYmP4gECqjWXkALxXGZfvxRIzq5d4Ol3LpRWENSMArcX
	c/lyu4o9mc8ZUS81v/EYWJAHRJlA1So4W0FcFs9egtIFz5FCFOQHr9TJB2+1ts1agcioN5GePQZu+
	nT3D0uIb3fhnaUG48CcXOdIlPL96wJtR7Y/cAccmWj7puC/mtIIydRLZ6qK391+Ie+93KP5gFSH3j
	WWYzNJfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuT4A-000000002hU-0Wgm;
	Mon, 23 Feb 2026 10:21:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuT46-000000002gD-3Oc1
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:21:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3x-0007wJ-AY; Mon, 23 Feb 2026 11:21:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3v-002DBU-2U;
	Mon, 23 Feb 2026 11:21:13 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuT3x-00000000ryd-0F7M;
	Mon, 23 Feb 2026 11:21:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260215171125.2646877-1-a.fatoum@pengutronix.de>
References: <20260215171125.2646877-1-a.fatoum@pengutronix.de>
Message-Id: <177184207305.207360.3688658013076668965.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:21:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_022122_851427_8854B9DC 
X-CRM114-Status: UNSURE (   7.46  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] virtio: fix variable shadowing in virtqueue_add_sgs
 input scatter loop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Feb 2026 18:11:23 +0100, Ahmad Fatoum wrote:
> The inner for loop in the in_sgs processing section had a local
> declaration 'struct scatterlist *sg = sgs[n]' that shadowed the loop
> variable 'sg' from the enclosing for statement.
> 
> Remove the shadowing declaration so the loop variable is used
> consistently, matching the out_sgs loop.
> This aligns the loop with the logic above for out_sgs.
> 
> [...]

Applied, thanks!

[1/1] virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
      https://git.pengutronix.de/cgit/barebox/commit/?id=2731cfdb8dcc (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



