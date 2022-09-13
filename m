Delivery-date: Tue, 13 Sep 2022 11:27:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2CJ-003TZd-LA
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 11:27:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2CI-0002vU-3o
	for lore@pengutronix.de; Tue, 13 Sep 2022 11:27:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:Content-Type:
	MIME-Version:Message-ID:Subject:Cc:To:Date:Reply-To:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zaOtWUxB+1Keka4b+fdBTROKM0ArRk9cuSI+LvG8KVQ=; b=VYfeS/IrCOeWyZarj6MIrk+YZy
	2j09jWazZG+O+yf1BzmbHVUDPW0slE8qzB9auYIx7XdZEXOilrZQquCRajszyg3eUDj7tehieB7p4
	uDg3RW3D2UP4M6/Pp+aRTC+p4Iwi5DR1LFZj3e1EHhamm3JEh91mM/ZGRJ3A9odwbWYchBpkz+AA3
	L7yVnV1jhyYvq86c5aNH8RgfJV6TlVUjLP/xz4+58a4jsR868+iKwGa+zBxtjy0jmq9FWUbXjNl3J
	kPfNtNe9Nv7QFsPvwqylBtozxL9Ki3H2pVgCaCWDsOXaE8IaC0Siewh+uPjA6A1CK6J0mRt3v4Ssc
	KVTKVRWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2Ab-0059Pn-7w; Tue, 13 Sep 2022 09:25:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2AQ-0059IQ-Rw
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 09:25:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2AP-0002R6-0g; Tue, 13 Sep 2022 11:25:17 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY2AO-0007EL-L5; Tue, 13 Sep 2022 11:25:16 +0200
Date: Tue, 13 Sep 2022 11:25:16 +0200
To: Barebox List <barebox@lists.infradead.org>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Message-ID: <20220913092516.GF12909@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_022518_936236_DAB61CC3 
X-CRM114-Status: GOOD (  13.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: TFTP RFC7440 windowsize support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

As you might have noticed Enrico added RFC7440 support to our TFTP
support. This greatly improves the speed for TFTP transfers when the
server also has RFC7440 support.

RFC7440 support has just appeared in the latest atftpd release
(version 0.8.0), so you can give this a try without locally patched
TFTP demons. This release is also available in debian backports.

Unfortunately there's no light without shadow. On i.MX6 the FEC ethernet
controller is too slow to catch up with a gigabit link. Up to now this
hasn't been a problem on barebox, as we only ever had a single packet
in flight. Now with windowsize support the controller can get
overwhelmed with so many TFTP packets that RX overruns occur. I changed
the imx_v7_defconfig to limit the windowsize to a smaller value that
seems to work here. Similar problems might exist on other ethernet
controllers, so we might have to generally switch to more conservative
default window sizes.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


