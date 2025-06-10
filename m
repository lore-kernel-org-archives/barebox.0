Delivery-date: Tue, 10 Jun 2025 08:41:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsg8-005hrk-2i
	for lore@lore.pengutronix.de;
	Tue, 10 Jun 2025 08:41:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uOsg8-0000is-5g
	for lore@pengutronix.de; Tue, 10 Jun 2025 08:41:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y3khiYWueA5F4mnhi5HXi8noqhiEEfKq7ZhUTkI8B9w=; b=l5985tpgeoFkRaeAiRa98p/NpO
	TDRGLRjP+1abfxTncTj3fUI9DXQi8BZX5ZMGqqeXVPTiiKwq1cqXHh1vTjs+V36tCVLWAlrgjt1dT
	EULnUNgAQSSbx0hqLNaisi57kmNbsvB2cyvB8amxewtLBrMud7iSzaW4x9o8taLZ5170RzBxlX8wB
	f9krXQnpEtj+hesRt5CsjIPd6Z5Yg1mMKuSf60gfQvOohxr2VyyHk3QpbagZS4riRcSn8C26qjw21
	f8e2lPze71QoOH3kRCzws9dN9bShlVdpz+7oWMDd5BmpZiVE0MTV889/y1oDqYTq55yGJJ5VdnwAE
	tbSsLM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsfe-00000005x2C-3WfV;
	Tue, 10 Jun 2025 06:41:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOsbb-00000005wiw-3DkI
	for barebox@lists.infradead.org;
	Tue, 10 Jun 2025 06:37:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsbZ-00075V-Ro; Tue, 10 Jun 2025 08:37:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsbZ-002jAR-2B;
	Tue, 10 Jun 2025 08:37:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uOsbZ-008WvE-1x;
	Tue, 10 Jun 2025 08:37:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250606083211.2172262-1-a.fatoum@barebox.org>
References: <20250606083211.2172262-1-a.fatoum@barebox.org>
Message-Id: <174953742560.2033131.13769942993592239140.b4-ty@pengutronix.de>
Date: Tue, 10 Jun 2025 08:37:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_233707_811617_0D9800AD 
X-CRM114-Status: UNSURE (   5.51  )
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
Subject: Re: [PATCH v2] ARM: multi_v8_defconfig: enable new boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 06 Jun 2025 10:32:11 +0200, Ahmad Fatoum wrote:
> The multi_v8_defconfig should enable all ARMv8 boards that are
> multi-arch/platform capable.
> 
> 

Applied, thanks!

[1/1] ARM: multi_v8_defconfig: enable new boards
      https://git.pengutronix.de/cgit/barebox/commit/?id=d685b100aa1c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



