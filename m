Delivery-date: Wed, 22 Apr 2026 10:16:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSlA-00F1we-1A
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 10:16:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFSl9-0006NW-QY
	for lore@pengutronix.de; Wed, 22 Apr 2026 10:16:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z9olWFzGIPEq0qIr3TRYGA2Dt/RLBSjwQfqNhYLCj1U=; b=jh1C8nKIsa2c3MgjK9+h73DK2E
	boovg4THnvRRz7d1eLuHG2c5l9lKgyIXMnVzQQfZjnJx5eqT0n0BLDxWrAJUaE207zf+ULOklSiiA
	mk1HFl7My4dluTTF5tdHV15aOGd8VT76ryrh9X31RHILdk9/z7ObaxfcVEQNmcI7C2SZryfWKzQAy
	nRmtU6D2lLeLa89R4WfvLrX160hVVq65kActnK2agwjIM6p0Tc59YOv9vpQO+DMWv4fI5cxXxuz0X
	1R8JnzSvhUi75+qr2YRTFOFEb66WpcFRVsJ+7KH8fV2MQ5QGO+qZfMlbVM7VCrSnFIooqbjPNDvzB
	E6nvcLvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSkm-00000009ljv-0tKK;
	Wed, 22 Apr 2026 08:16:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFSkh-00000009ljR-1l1Z
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 08:16:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSke-0006GY-Ue; Wed, 22 Apr 2026 10:16:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSke-006dVm-2Q;
	Wed, 22 Apr 2026 10:16:04 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wFSke-0000000AMrS-2r59;
	Wed, 22 Apr 2026 10:16:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260413095657.1454950-1-a.fatoum@barebox.org>
References: <20260413095657.1454950-1-a.fatoum@barebox.org>
Message-Id: <177684576467.2471011.9778642325914021492.b4-ty@pengutronix.de>
Date: Wed, 22 Apr 2026 10:16:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_011607_461779_9B04182E 
X-CRM114-Status: UNSURE (   6.49  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: add resize command to reset terminal scroll
 region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 13 Apr 2026 11:56:44 +0200, Ahmad Fatoum wrote:
> Add a small command that resets the DECSTBM scroll region to the
> full window. This is useful for rebooting after a curses installer has
> restricted the scroll region for example.
> Running "resize" then will give the shell the full terminal back.
> 
> 

Applied, thanks!

[1/1] commands: add resize command to reset terminal scroll region
      https://git.pengutronix.de/cgit/barebox/commit/?id=5b820d185c20 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



