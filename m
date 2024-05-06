Delivery-date: Mon, 06 May 2024 09:06:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3sQf-005fya-2b
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 09:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3sQd-0001Oo-VB
	for lore@pengutronix.de; Mon, 06 May 2024 09:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xpGKBxKfBIVrFq1a55Pj10ovbyVLizzL56ktE92wv1s=; b=LLjeXh69dfL8CT4SDcuRhy/LhD
	+uDJ00RHlItDBV+4G5hxsowv3RSUDA67sI2lVUXbxY1Bnco/SxeWQ1O0L9dpj9gVRTYyZY3C/H9kD
	EH0T6h13EYOzFqGaIL0g1h9aNKnzXgYIX6QxumBc3nwXdbqNxfueYi/RcGadRqNIFI4Qq34UHriw8
	G5AphDExG/tCwEZo5R3PBNHmN8PH6gDcWbqtBjsSK4TmJa5D+OFt3xXD/gdMEN9whSakvPyc3ZTWK
	xpiCoLVIhQ0yGFRqlVAtaA2JxtiQr2Eq/d6nd9aI6+ek2kbstFdL586M9GoTQQ9AZUE39EYh0i9GD
	X1ivxPzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3sQ2-00000006OWs-0G7c;
	Mon, 06 May 2024 07:05:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3sPy-00000006OWP-2sJL
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 07:05:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3sPw-0001EP-NP; Mon, 06 May 2024 09:05:44 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3sPw-00GDKP-Am; Mon, 06 May 2024 09:05:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3sPw-001PnZ-0r;
	Mon, 06 May 2024 09:05:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: lst@pengutronix.de
In-Reply-To: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
References: <20240503103717.1370636-1-a.fatoum@pengutronix.de>
Message-Id: <171497914426.337448.1634732696833876057.b4-ty@pengutronix.de>
Date: Mon, 06 May 2024 09:05:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_000547_095855_28340FB4 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/5] ARM: i.MX8MP: add nominal drive mode support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 03 May 2024 12:37:12 +0200, Ahmad Fatoum wrote:
> Unlike the i.MX8MM and i.MX8MN SoCs added earlier, the early setup code
> and device tree for the i.MX8MP configures some clocks at frequencies
> that are only validated for overdrive mode, i.e. when VDD_SOC is 950 mV.
> 
> Boards may want to run their SoC at the lower voltage of 850 mV though
> to reduce heat generation and power usage. For this to work, clock rates
> need to adhere to the limits of the nominal drive mode.
> 
> [...]

Applied, thanks!

[1/5] ARM: i.MX8M: pass cpu_type parameter to __imx8m_early_clock_init
      https://git.pengutronix.de/cgit/barebox/commit/?id=ae2dd4a4850f (link may not be stable)
[2/5] ARM: i.MX8MP: configure PLL3 as 600MHz
      https://git.pengutronix.de/cgit/barebox/commit/?id=4a8c03958738 (link may not be stable)
[3/5] ARM: i.MX8MP: configure PLL3 as noc_io parent
      https://git.pengutronix.de/cgit/barebox/commit/?id=608ea0c2fa33 (link may not be stable)
[4/5] ARM: i.MX8MP: don't reparent GIC from BootROM default
      https://git.pengutronix.de/cgit/barebox/commit/?id=ecff33a34978 (link may not be stable)
[5/5] ARM: dts: i.MX8MP: Add optional nominal drive mode DTSI
      https://git.pengutronix.de/cgit/barebox/commit/?id=180337d60753 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



