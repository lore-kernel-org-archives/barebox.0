Delivery-date: Mon, 16 Dec 2024 08:18:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Mt-008jN9-1J
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 08:18:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Mt-0007AM-Cu
	for lore@pengutronix.de; Mon, 16 Dec 2024 08:18:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sSUhe+KUFIofG4T66wAL8sB48ipXRI4dwDj91XUY9t4=; b=1tVxuUzssV8hK8wOJI7YjTVG8x
	WxcWyb85pNXseRExVRZXwl8vN5r8+WEJLlW2lsrJhscHCJ3IFBID7zxqvdz9OGwYP4sEXqzITTTEl
	fVqZfXU1itkYAEYYf29o+ZlrOdZnwCMeDSppAkDIrA9mcKP2AZljQm06jBXCgtN6dCX1caK63SLC4
	VnMigrynR2npHQ5hrFA2AW/lFNrreK93q4iOsvN0sMQDKWqFe8kQHL0WK28mjP2gO1WDH9YdRmMi/
	dVOm3jB6+3xtkMKu+4pqr8hL4NZf2EPXSBAFrbByV0jUMrV+F1GRd4LXL7bLWUuMz7vkP0TFhkzPu
	LyF6wQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5MH-00000009Fxr-0vVm;
	Mon, 16 Dec 2024 07:17:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5LM-00000009FtR-1ny3
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 07:16:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5LJ-0006tt-48; Mon, 16 Dec 2024 08:16:37 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5LI-003ef1-0X;
	Mon, 16 Dec 2024 08:16:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5LI-0066sL-2o;
	Mon, 16 Dec 2024 08:16:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
References: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
Message-Id: <173433339686.1456302.67373242722160253.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 08:16:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_231640_469255_98F59F98 
X-CRM114-Status: UNSURE (   5.80  )
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
Subject: Re: [PATCH master 1/3] video: dw-hdmi: populate missing I2C
 adapter device node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Dec 2024 10:54:10 +0100, Ahmad Fatoum wrote:
> By recording the correct device tree node, it's possible to use OF
> aliases for deterministic numbering of the I2C adapter.
> 
> 

Applied, thanks!

[1/3] video: dw-hdmi: populate missing I2C adapter device node
      https://git.pengutronix.de/cgit/barebox/commit/?id=474b6cb42ea5 (link may not be stable)
[2/3] i2c: i2c: fix getting adapter.nr for I2C muxes
      https://git.pengutronix.de/cgit/barebox/commit/?id=699a132c8de4 (link may not be stable)
[3/3] i2c: order dynamically numbered adapter after highest alias id
      https://git.pengutronix.de/cgit/barebox/commit/?id=90129a1e4b45 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



