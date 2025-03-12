Delivery-date: Wed, 12 Mar 2025 14:06:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnT-00D8Dc-10
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnQ-0002Gy-PL
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7QC8Xuv3h0+GMPHtHJJj6fTwcxp0ptUFvtfZKTMLukc=; b=b77sjPKUESCbrG9xHqJ7PgniPO
	/3C8h7+8LxaZHdXWda7iI+XGpWYd98n0IMyvFzru8ATrWJq1lTOCVlP6VQwSyHthg0/2XrGNJ2vcZ
	C9M9ssc99venGM4sm02Gvs7SCTTrmUhZi9nY6W8ZL8AZsnG2pm2Ns6GjHgWPJW0GFjtWaqeX0+prH
	hhRohusfH1X9icy+iaF7gOBQDS2ukoWlPWmDcDUe0LLLAoGO7LLyxMrlp4jjtFRsBqIEi0VjbKibI
	xHbZE7Ze8UqeEvQLrmZG7HBI+A5ZhYTS3l419jzWbX+fxa0Z/vmNd4e/jRGvYq31XILasvkQZOPxa
	xUdiqf5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLmw-00000008VAp-43hz;
	Wed, 12 Mar 2025 13:06:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLFG-00000008PRj-0dTk
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:31:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLFE-0005Pd-CC; Wed, 12 Mar 2025 13:31:32 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLFE-005MAd-0b;
	Wed, 12 Mar 2025 13:31:32 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tsLFE-009X6Q-0D;
	Wed, 12 Mar 2025 13:31:32 +0100
Date: Wed, 12 Mar 2025 13:31:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Z9F-pB6dHxuzvkb6@pengutronix.de>
References: <20250311-pca9450-wdog-v1-0-45120abeae00@pengutronix.de>
 <a2b2fd98bb4d5f5597b55587ddc9f6b6e4da8fcb.camel@pengutronix.de>
 <cbb86516-6337-44ba-a957-5620e5eb5015@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cbb86516-6337-44ba-a957-5620e5eb5015@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_053134_188124_3F65DD90 
X-CRM114-Status: GOOD (  24.74  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] Move pca9450 RESET_CTRL configuration to driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Mar 11, 2025 at 12:40:03PM +0100, Jonas Rebmann wrote:
> Hi Rouven,
> 
> On 2025-03-11 12:05, Rouven Czerwinski wrote:
> > Does it make sense to select the pcs9450 in the board kconfig symbols?
> > This way users retain the behaviour after an update even if the pca9450
> > driver was not selected before.
> 
> Are you referring to a scenario where removal of an explicit initialization
> of PCA9450_RESET_CTRL in favor of the setup in the driver would lead to an
> unitialized PCA9450_RESET_CTRL if the driver is not enabled?
> 
> For the imx93 boards, behaviour remains unchanged same as those two boards
> configure PCA9450_RESET_CTRL in pca9450_register_init_callback, which is
> called by the driver. So change in behavior with those.
> 
> Not so on the imx8 boards where pmic_configure is called unconditionally in
> the power-on routine.
> 
> Given this, I'm not sure if we should remove the explicit register config
> for the imx8 boards as Ahmad mentioned. I think I remember Sasha mentioning
> a reason why board kconfig doesn't select the pmic driver?..

Yes. We can't select the PMIC driver from the board Kconfig because we
would also have to select all direct dependencies like I2C. Although not
a direct dependency we would also have to select the I2C hardware bus
driver, because without it we also could not access the PMIC. All this
is cumbersome to do, so better avoided. If necessary we could issue a
warning message at runtime and leave it up to the user to select the
missing pieces.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


