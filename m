Delivery-date: Wed, 19 Mar 2025 13:36:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tusec-001SEj-1a
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 13:36:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuseb-00043m-DI
	for lore@pengutronix.de; Wed, 19 Mar 2025 13:36:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uxxafFLnxvYMWv/AfGTDWDkC/lZz582+3DBeFQriEBk=; b=eegVjg/skl1B08Nll+l3yr8nV+
	GurrAbTETnbtFa32uB5Nx0dxYFUkItgRGcj3c7UtTw1j8kNOIsVnQsOY9ifDC9iXoxZP7YS86zJh6
	gNHOF+g+3rfzkOm3gzHiLx7Wb1CrSSTx+at4mCiFgYmuwurH/X2lUmoBMYmdwOWVdzLYtmQbchwvy
	T2wZ3engdGY7BIM1cNL5Qz+Zru+s0+alr53d7FgBP08irFivb37r3zaWhrMSUcT3fuf+ikg062PKd
	jsPsehd7qsT7b1n9pSApQDMrF+BVlnwtTSG6qgVCcAsao1rUjl/u2sMg/DWIfZWJ4tgstUj2pAWwK
	KrEREfXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tusdz-00000008zYv-0qZ0;
	Wed, 19 Mar 2025 12:35:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuscg-00000008zMo-3an2
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 12:34:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuscf-0003cE-Il; Wed, 19 Mar 2025 13:34:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tusce-000asX-37;
	Wed, 19 Mar 2025 13:34:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuscf-00ASq6-11;
	Wed, 19 Mar 2025 13:34:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250319102228.2401563-1-s.hauer@pengutronix.de>
References: <20250319102228.2401563-1-s.hauer@pengutronix.de>
Message-Id: <174238765331.2494090.3855475189846366550.b4-ty@pengutronix.de>
Date: Wed, 19 Mar 2025 13:34:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_053414_914162_F16E4A83 
X-CRM114-Status: UNSURE (   7.97  )
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
Subject: Re: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 19 Mar 2025 11:22:28 +0100, Sascha Hauer wrote:
> Depending on the configuration Linux on OMAP SoCs either needs ttyO or
> ttyS as console name. We used to pass ttyO, but c1c0d18973
> ("serial: omap: Use ttyS as Linux console name") recently changed this
> to ttyS which breaks setups that used to work earlier. Make the
> name configurable to allow for setups requiring ttyS and use ttyO
> as default to keep existing setups working.
> 
> [...]

Applied, thanks!

[1/1] serial: omap: make Linux console name configurable
      https://git.pengutronix.de/cgit/barebox/commit/?id=13557d1ab024 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



