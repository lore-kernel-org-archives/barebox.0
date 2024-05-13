Delivery-date: Mon, 13 May 2024 11:28:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6Ryo-00CMw8-2V
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6Ryo-0007pH-74
	for lore@pengutronix.de; Mon, 13 May 2024 11:28:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zBW/SJ4NxsvjLoYQQfpEnD9EKcZJWbEKyEenhsqr1PA=; b=PZFDnt+qI7DIAvLpgRkWAKMsR2
	aIfAlA7LraxNed/KoITjLwoKbio6rVy8un5WSbcjKN+2fwSunuR3J+fFwHvQSvVOJA75yiCAcfHGK
	kWqL0MRW5mTxy4azpafWl9GDBHIc4vBbuSQyNqzAaKF5kA0plgcEupu/QjUUtuFGIKmWwWlK67FQ0
	XBrVzgnG1odKrIewt4+bmQQCECW3d2F8t5rUC7OsFuSZe9iQxwfL9C3AxMcGAhNkZhg1aAv2HBG3G
	QnmI4W2NiYzzxDxRLtFkcfNePpMBCYwcwF9oOLftRaDn+NPHpR1lZ8Hve08+ipxlpom0NQH0Tcmhl
	R1fW6mYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6RyB-0000000CORF-2syO;
	Mon, 13 May 2024 09:27:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6Ry7-0000000COQd-2KLF
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:27:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Ry6-0007fz-Az; Mon, 13 May 2024 11:27:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Ry5-0018uI-Ut; Mon, 13 May 2024 11:27:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s6Ry5-00EvU9-2t;
	Mon, 13 May 2024 11:27:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
In-Reply-To: <20240507133952.3716733-1-rhi@pengutronix.de>
References: <20240507133952.3716733-1-rhi@pengutronix.de>
Message-Id: <171559245789.3557554.2861144799798288019.b4-ty@pengutronix.de>
Date: Mon, 13 May 2024 11:27:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_022739_901185_F8AF4E4C 
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: dp83867: reset PHY on probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 May 2024 15:39:52 +0200, Roland Hieber wrote:
> Some PHY variants set the DP83867_PHYCR_FORCE_LINK_GOOD bit by default,
> which should be unset if we want to rely on autonegotiation. Port
> dp83867_phy_reset() from Linux v6.9-rc7, which already does all
> necessary things, and call it in dp83867_probe(). (Keep the functions in
> the original order so that the diff stays clean.)
> 
> 
> [...]

Applied, thanks!

[1/1] net: phy: dp83867: reset PHY on probe
      https://git.pengutronix.de/cgit/barebox/commit/?id=59a6b92960ff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



