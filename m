Delivery-date: Wed, 25 Feb 2026 08:51:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9gX-005SGS-2q
	for lore@lore.pengutronix.de;
	Wed, 25 Feb 2026 08:51:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vv9gY-00037B-87
	for lore@pengutronix.de; Wed, 25 Feb 2026 08:51:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g1Hgpz1BmHm+ZIIW7GpCRWYwdifjWq2vfPr68iDgytg=; b=YKSQjhg+A+Z4aG4LXRJVeuK8h+
	3/hIoBRDv+H3hPRPBCHwOvcGUlz+5rhXbtFWbPvpYI9EUZSS1aCnFyxvO1K1jndlWJGqMKXIh6l8f
	A033/oeDsBZ05iErwpHpEoCzQbQt4q/bk+ssCHcPvjzx7gdYZGg11NdzhMwi1XJuzNGFipn3F7kIA
	RrnEwVLyHSCzjZqUWBFLHj9BSwX1o+ICE9pKwqkzZxvY4I6UWpDHNIMZiR8tvkEAttwmmAiiH1G0F
	rybcDyMjkdBOrALpdytgbD6zktO2qnNSl+LmFeolO9KgXgTGh9ITKYHbcug/D9H/uLFAh2gWA0Mxz
	4DnnGGWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9g7-00000003Rzq-3cRr;
	Wed, 25 Feb 2026 07:51:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv9g3-00000003Ryr-063d
	for barebox@lists.infradead.org;
	Wed, 25 Feb 2026 07:51:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9g0-0002uh-2n; Wed, 25 Feb 2026 08:51:20 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9fy-002Wq7-1k;
	Wed, 25 Feb 2026 08:51:19 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vv9fz-00000004scn-3HmF;
	Wed, 25 Feb 2026 08:51:19 +0100
Date: Wed, 25 Feb 2026 08:51:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aZ6p9we0UBYLuIQL@pengutronix.de>
References: <20260130-barebox-kickpi-v2-0-d27cf94a39b6@gmail.com>
 <b3gffgocrcdd7azuk2yddrqgqgbyfdxobhf324jdd5hopsb4rr@ycvlbpccpmxe>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b3gffgocrcdd7azuk2yddrqgqgbyfdxobhf324jdd5hopsb4rr@ycvlbpccpmxe>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_235123_087089_8C37D170 
X-CRM114-Status: GOOD (  16.11  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/14] ARM: rockchip: Add initial RK3562 SoC support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, Feb 24, 2026 at 09:17:52PM +0100, Sohaib Mohamed wrote:
> > base-commit: 15ea9c02849d8e53c69078c88fa6df57dcce864e
> > change-id: 20260130-barebox-kickpi-28d6466b6466
> >
> > Best regards,
> > --
> > Sohaib Mohamed <sohaib.amhmd@gmail.com>
> >
> 
> Hi, just a gentle ping — are there any updates or additional changes I
> should make at this point? Thanks.

No, everything fine. It just slipped through the cracks, sorry.

Applied now.

Thanks
 Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


