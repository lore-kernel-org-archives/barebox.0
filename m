Delivery-date: Wed, 28 Feb 2024 15:02:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfKW8-00DXZh-24
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 15:02:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfKW3-0000zv-Bu
	for lore@pengutronix.de; Wed, 28 Feb 2024 15:02:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZniDzuIDbKSF2aw5nLwBlP0FrB9hphpYCyy5KMfVjq8=; b=q5U0uPL7l+ayFday7N9ZEPHXqF
	QsdS+52/2KusVnH8glNcpovVT1kwqnH5xd/iO85Tzpkyw9DzkJPktVssOm5kC2UWwwyR7MZ/xpUBM
	YeQbuBls3+RIqE3VFK3yfGWiSsz8SZWoUjtO9h0RkJNeH/ZAGpMP1LawPBHTJiKmXbjXr8weA6WXq
	ludbAyoo0S/mDqqgZ8YyryJJWgntSYecMAduuwxKCMvSrr9N77St6asprXu1erLC6UH0Oq5ERRbt8
	qJtuu9WKgcVF3hQImVVdDM/3aDxdudeXkg3uk0ts7IpqJHlvcl0vvAHdIXYUm7luGPtegRFueZyPQ
	j3QCbh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKVC-00000009b0J-3oEF;
	Wed, 28 Feb 2024 14:01:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKV9-00000009azC-3maI
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 14:01:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfKV8-0000iT-85; Wed, 28 Feb 2024 15:01:38 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfKV6-003PXl-1d; Wed, 28 Feb 2024 15:01:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfKV5-00BaiK-37;
	Wed, 28 Feb 2024 15:01:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Andrey Zhizhikin <andrey.zhizhikin@leica-geosystems.com>
In-Reply-To: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
References: <20240228-v2024-02-0-topic-imx8m-n-p-tzac-v2-0-ee1ae48dc399@pengutronix.de>
Message-Id: <170912889595.2762135.11442601995317207580.b4-ty@pengutronix.de>
Date: Wed, 28 Feb 2024 15:01:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_060139_972996_2FEA2A8E 
X-CRM114-Status: UNSURE (   7.61  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/3] arm: mach-imx: tzasc: port lock id_swap_bypass
 bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Feb 2024 14:14:07 +0100, Stefan Kerkmann wrote:
> This series ports the U-Boot commit 1289ff7bd7e4 ("imx8m: lock
> id_swap_bypass bit in tzc380 enable") to barebox and refactors the tzasc
> driver for the imx platform to use the `cpu_is_mx8xyz` macros.
> 
> 

Applied, thanks!

[1/3] arm: mach-imx: tzasc: lock id_swap_bypass bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=f772a942c578 (link may not be stable)
[2/3] arm: mach-imx: set cpu type in pbl
      https://git.pengutronix.de/cgit/barebox/commit/?id=36fecc08fc11 (link may not be stable)
[3/3] arm: mach-imx: tzasc: convert to cpu_is_mx8xyz macros
      https://git.pengutronix.de/cgit/barebox/commit/?id=f061388ffe24 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



