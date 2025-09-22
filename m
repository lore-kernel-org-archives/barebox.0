Delivery-date: Mon, 22 Sep 2025 15:16:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0gOj-005xxr-06
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 15:16:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0gOi-0004ng-GO
	for lore@pengutronix.de; Mon, 22 Sep 2025 15:16:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p/ZH0X7A/TU90pVkWoJgASPIY9ti6Cv7qUO/MY3Bf0Y=; b=TTlEWEHrmeF/IWS9GtS9988NhB
	RFycNByy/kgLGWlGuBfpXNIRoggzgReVENvGIm9SJywq/hIY0S1ryqyRQtlZoYtYyduVU84hNVU/M
	RcgQK6PkHSfxa9nzfl7ikwGy2WJAaMF4lHLEFN4YOuiGntIGLdIiOQ35oQBhC53OJbjTuRO6lW+v4
	lWFECyJKvStSZG+/sHfPKL99GpZ37GOERZY3xfffYZ/RvQ1YPdyP+iuXWMmXeIiF3P1qwsw9Buk21
	PlJlzjnBzBpkkei8nDRZb1Qj8tBBf81kxQoHiIySvXJM0HELvpu98mkoifekIXjzV1nsrCcxhsLNR
	mvkT7oEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gOL-0000000ASWt-3uIz;
	Mon, 22 Sep 2025 13:15:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gOK-0000000ASVy-3lgj
	for barebox@bombadil.infradead.org;
	Mon, 22 Sep 2025 13:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=p/ZH0X7A/TU90pVkWoJgASPIY9ti6Cv7qUO/MY3Bf0Y=; b=St+UVDf0q3by1xjddO+zhgNyo/
	/eLi4fw4mlRp1hs9Jjoh1Z5n++6db4NaCZAHoRmUvPqI2aX1sdZhnz8mZcLAED0VoMWXgawI28iIx
	jYMu8A3wlIPWQsQ0kstlqlJVaAwIFCAehJBJ6qR+gr33OezudagLre16ZGM4LgRO6GWzx1gkvDscD
	Ed3/OuMKGJOFVndPVqADrCIUck7QYhOhoJfuHp+cJmj5Gt3QpsUmt53SH7ycLoOPB9PEV3Brs2BGA
	k8exry6+AObmuoxbk5lLgH5Y/KRXQSXmx+WkWXUtEaE6Y214e1xUNEmUj7Fqd+nTBXb4qXD5wqMWy
	qk9LRX2A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0gOH-00000008IHh-3aJf
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 13:15:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1v0gOG-0004fk-W6; Mon, 22 Sep 2025 15:15:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0gOG-002bN9-2B;
	Mon, 22 Sep 2025 15:15:36 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1v0gOG-006sN6-1i;
	Mon, 22 Sep 2025 15:15:36 +0200
Date: Mon, 22 Sep 2025 15:15:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aNFL-L4yQGPBU_IM@pengutronix.de>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-6-2de8f69107a1@clermont.in2p3.fr>
 <aMukQcvHZOMExEzw@pengutronix.de>
 <00327370-bbd5-4e70-863a-c7cb5a801bf4@clermont.in2p3.fr>
 <aMwTP4-1s7pB1gsd@pengutronix.de>
 <96208dcc-fbd7-478c-b8dc-cad04e04b169@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96208dcc-fbd7-478c-b8dc-cad04e04b169@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_141537_956648_48D732BE 
X-CRM114-Status: GOOD (  16.91  )
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

Hi David,

On Thu, Sep 18, 2025 at 05:07:53PM +0200, David Picard wrote:
> The driver has cascaded dependencies: CRYPTO_DEV_ATMEL_I2C, CRYPTO_ECDH,
> CRC16, HW_RANDOM
> 
> Bringing the Linux driver and friends into Barebox is definitely way beyond
> my competence...

I did a quick port of the driver and just sent it to the list. Please
give it a try. I ported only the OTP part for now as the hwrng seems to
be mostly useless.

I couldn't test it due to lack of hardware, but I hope that at least I
did it good enough for you to debug it ;)

Regards,
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


