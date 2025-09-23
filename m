Delivery-date: Tue, 23 Sep 2025 11:40:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0zVn-0009Do-00
	for lore@lore.pengutronix.de;
	Tue, 23 Sep 2025 11:40:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0zVm-0000Vz-FO
	for lore@pengutronix.de; Tue, 23 Sep 2025 11:40:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qGN5mOhVvN5Np80qAJXEURW9FuDafYq4W4zbve9qiWI=; b=1TEpSbxxxRAmNw2XTyaPdElupD
	85bLL2T5bywOA8MxZ/7qcrcGQVews6z7tPx8OWnyiG8Sa3sUUONmGKfRRpuvwWmLAI0F/JU79Yuo/
	JXFbGsS3qimWlVTWEnJ3TZxEduNcln0ofw8eNcGoxDtANdoHWXtgXyMX6SX3IUa3cy1zOEqbDsbzK
	06s37YXkn6ph6YrXkrVzs5XEnftYnzQ6IpTASYysgGaCYeRNsEzlu3HGGDG3qQedGNuGs2ZEbijqI
	ND2/4qq0tFue8nQJ0rSFbyqMR7A+L2cz3U6HSNNekYoDrGXtVIFSAKTmXWtv9Ps2LUPscKdt5cNBD
	wA1j3GUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0zVJ-0000000Cxsl-1xbY;
	Tue, 23 Sep 2025 09:40:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0zVG-0000000CxsM-2TCH
	for barebox@lists.infradead.org;
	Tue, 23 Sep 2025 09:40:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v0zVE-0000RH-23; Tue, 23 Sep 2025 11:40:04 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0zVD-0004H3-2o;
	Tue, 23 Sep 2025 11:40:03 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0zVD-008oqp-2O;
	Tue, 23 Sep 2025 11:40:03 +0200
Date: Tue, 23 Sep 2025 11:40:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aNJq8zmFkM9KXJw1@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
 <aMukQcvHZOMExEzw@pengutronix.de>
 <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
 <aMwTP4-1s7pB1gsd@pengutronix.de>
 <96208dcc-fbd7-478c-b8dc-cad04e04b169@clermont.in2p3.fr>
 <aNFL-L4yQGPBU_IM@pengutronix.de>
 <e1c99c7a-2f02-4638-b491-2929c84c9291@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e1c99c7a-2f02-4638-b491-2929c84c9291@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_024006_971844_A9712273 
X-CRM114-Status: GOOD (  14.56  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 06/11] boards: enclustra-sa2: read MAC address from EEPROM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Sep 23, 2025 at 11:07:39AM +0200, David Picard wrote:
> Hi,
> 
> The driver crashes and causes immediate reset.
> 
> I could track it as far as this line:
> https://git.pengutronix.de/cgit/barebox/tree/drivers/nvmem/core.c#n473
> 
> Boot log and some more details: https://paste.debian.net/1397772/

Seems *i2c_priv is not zeroed. Could you replace the devm_kmalloc() in
atmel_i2c_probe() with devm_kzalloc()?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


