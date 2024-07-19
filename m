Delivery-date: Fri, 19 Jul 2024 08:22:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh0b-000keh-2n
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:22:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUh0b-0006k0-Ag
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:22:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=af9mXGukAp5vVcBg/nyE0BhywDGbxBzOgiuIP1wz/+E=; b=uv923TVOZ1jsmkPTpuWdrX3Fz9
	yzC1LSJBpOpkxTiny3i2JTCe6/QY9uTIR+wfIjJmqejjICt4vA2hDmkbYHEfsB/wPrwZc3e9mNqY5
	nwBiGp5pkGLcBBcwwFssrW0PCLE13m/hh+MP23wMhiwOnO3/UhqIVhXW1rgRmKYAvJfcBtdu9C9g6
	eLIaNngpwAPXycNq5KdMEKxBbyId07vsWv07esVpWlrUNC0pprmzzMIceJv04xt27UG82aeNIbdQB
	RkL9lk8xA9JufHht6YcNNadgZQI1IvDnI27ZHVSffnJzwV/iqbUwplWxc6IvuJY0yaV3yA7jBgtPI
	bjAX3h2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh0C-00000001nUN-3tWt;
	Fri, 19 Jul 2024 06:22:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUh08-00000001nSp-1hhJ
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:21:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh07-0006c9-4B; Fri, 19 Jul 2024 08:21:55 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh06-000cYE-NV; Fri, 19 Jul 2024 08:21:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUh06-002Pba-27;
	Fri, 19 Jul 2024 08:21:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240716115637.1954020-1-a.fatoum@pengutronix.de>
References: <20240716115637.1954020-1-a.fatoum@pengutronix.de>
Message-Id: <172137011465.575055.10849998534416178398.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:21:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_232156_478800_5EA36B86 
X-CRM114-Status: UNSURE (   5.47  )
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
Subject: Re: [PATCH] firmware: ti_sci: drop unused ti_sci_list
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Jul 2024 13:56:37 +0200, Ahmad Fatoum wrote:
> The variable is wholly unused, so just drop it for now.
> 
> 

Applied, thanks!

[1/1] firmware: ti_sci: drop unused ti_sci_list
      https://git.pengutronix.de/cgit/barebox/commit/?id=9392b24e439d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



