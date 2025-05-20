Delivery-date: Tue, 20 May 2025 09:52:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHHm6-000lkz-0u
	for lore@lore.pengutronix.de;
	Tue, 20 May 2025 09:52:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHHm5-0006wg-PH
	for lore@pengutronix.de; Tue, 20 May 2025 09:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O9FHIGanqAeIkLFpkM8srIONsWL9GsaQryU8lLdiJeM=; b=PuK0wVCjnK3bdl85j3L1++oNhG
	fO9cQbmfB+PMbcHeqUaTMLtRfBGxSCavcMZG2tuk3uST7Al7p7R4rqnbgZwWE98Le3Uho4i7WiB9C
	WwbilUzs1/Gf11BFEcZL7J3aW7yka48EkdyXJZm5JMvNWb2HXgpkuJ7LXHwFrqeWEULrk/Q7VH6S+
	qNr72rHx5vDH39L/9O0pfH3k1V409t0Zy+Iw7bODQ4UStDrOx+naCeS8L/NYUiloK81PeCKU5VrqH
	nHQI+3VtxFy7k0pMSPTuV0w38+YKZHQ1cei3CG8zs6j+icZqatpflkF3a1EQ19aq/nTKSx92XmqlM
	NQjr0H+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHlR-0000000BvSf-0fCS;
	Tue, 20 May 2025 07:51:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHHkn-0000000BvOM-34eW
	for barebox@lists.infradead.org;
	Tue, 20 May 2025 07:51:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHkk-0006hy-2V; Tue, 20 May 2025 09:51:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHkj-000NIj-2s;
	Tue, 20 May 2025 09:51:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uHHkj-0055DI-2e;
	Tue, 20 May 2025 09:51:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250519185917.459180-1-a.fatoum@barebox.org>
References: <20250519185917.459180-1-a.fatoum@barebox.org>
Message-Id: <174772746981.1211667.16502741665948702218.b4-ty@pengutronix.de>
Date: Tue, 20 May 2025 09:51:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_005113_773176_833341C4 
X-CRM114-Status: UNSURE (   7.99  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] clocksource: ti-dm: fix EPROBE_DEFER handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 May 2025 20:59:17 +0200, Ahmad Fatoum wrote:
> barebox initializes only a single ti-dm timer and stores its non-NULL
> MMIO base address to the global base variable to indicate a successful
> probe.
> 
> If clock_get were to fail with any error code, base would remain set,
> hindering future probes of the driver. This would be especially
> bothersome with EPROBE_DEFER if deep probe is not enabled.
> 
> [...]

Applied, thanks!

[1/1] clocksource: ti-dm: fix EPROBE_DEFER handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=225d82666eb0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



