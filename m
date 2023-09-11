Delivery-date: Mon, 11 Sep 2023 14:55:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgS9-00BVbq-Em
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:55:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgS7-00071y-FS
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:55:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1M9noLAu7QTLlwYvTM4CNggrrnIgDpZBUnUgs4Lz75s=; b=av/WKugwn1zbigjy7LMVls9uJP
	QRRgA84GMYuBTly/ymzgg5nInEqe75es6UvLs9Kf1EjVtyG8+wlcZ1k7gl/HYWnAQeI2vtC9GqkLv
	d93BJY6UgQ21AgFyh7W9i4B/9aih2dvp0t2lEUGFjVV3H/oxwrCa9rD6UkK+zVabkpB9q5FACaSjo
	rm05F7haYMQN7G2ElFJ+KHKnzVGWooQGZOofq4oYkBxYfNhwqPlGw3cByuoDmAzLFd9mMhwh6dV0F
	ndjFQVJMw5XZu4HsOHndw2tJZOZrsopg5lk0BuEJLbZhkYVe5w7LVBeq+5ZsnBs4yZgYgYFvwVyXy
	nrB1m7SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgR0-000Was-1l;
	Mon, 11 Sep 2023 12:54:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgQx-000WZK-19
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:54:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgQw-0006iq-1X; Mon, 11 Sep 2023 14:54:30 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgQv-005YTN-LP; Mon, 11 Sep 2023 14:54:29 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgQv-0053Qi-C4; Mon, 11 Sep 2023 14:54:29 +0200
Date: Mon, 11 Sep 2023 14:54:29 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230911125429.ctyj73htkvxhvjot@pengutronix.de>
References: <20230911124808.2748160-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911124808.2748160-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_055431_391514_92EB0450 
X-CRM114-Status: GOOD (  12.67  )
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
Subject: Re: [PATCH v2] aiodev: imx_thermal: fix breakage after device tree
 sync
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-11, Ahmad Fatoum wrote:
> fsl,tempmon-data is a deprecated property that has been replaced
> upstream by a NVMEM cell pointing at the calibration value and so
> made it into barebox breaking the driver.
> 
> Switch to using the new property to fix the regression.
> 
> We do not keep support for the old binding around as it would be dead code:
> barebox, unlike Linux, is always bundled with a device tree originating
> from its build tree and so we only need to ensure the driver matches that
> version.
> 
> Fixes: abef60363d8e ("dts: update to v5.8-rc1")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


