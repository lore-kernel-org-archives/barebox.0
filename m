Delivery-date: Mon, 23 Jan 2023 12:48:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJvJd-0035Kx-Sh
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 12:48:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJvJb-0005CE-Tg
	for lore@pengutronix.de; Mon, 23 Jan 2023 12:48:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HEdeP2DYIWhlKGKV2G8tV6w+6A0trX+WeswX0jPxmZM=; b=Osp8SPdrLqNF7Q/7/vN1jsngqV
	e0+Vb+U1M4szJ/6NOsefMb2+79K5k6yXmr+irIP4HX84kh035jet5U02FhMsTdVHGJgGDxRtfBmv7
	sNV7mhi6f9G2UhWjHdWACDC0FYfgvh25xSoEAEOW3ZBVJy7pt53A/lkwYt8g/S21JF9ob8fHIWqR2
	E0syPLWj3RXhsSSzvBO5Lsv/0pHJRiTcIyFhZIfV9EwPcOUqoJccSd4w1gvUj7OVxYR/uMRbSg5NB
	o/BLCbMUt3Iryc/8SQnqlMvxFIgttexjJPlCKTxkS0/j6FBmqHoEMFA3yreSUSgg584vSBNgb/J/U
	LMZFhDuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvIE-00Gzyr-Ii; Mon, 23 Jan 2023 11:47:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJvI9-00GzxU-8w
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 11:47:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJvI5-0004yi-1f; Mon, 23 Jan 2023 12:47:09 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pJvI4-0000eK-Qm; Mon, 23 Jan 2023 12:47:08 +0100
Date: Mon, 23 Jan 2023 12:47:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230123114708.GT24755@pengutronix.de>
References: <20230123083511.991626-1-s.hauer@pengutronix.de>
 <20230123083511.991626-3-s.hauer@pengutronix.de>
 <69436062-a85e-4247-15aa-98192f1fa6e4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <69436062-a85e-4247-15aa-98192f1fa6e4@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_034713_359595_839F305F 
X-CRM114-Status: GOOD (  15.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] arm: rockchip_v8_defconfig: Disable PIO mode for
 MCI_DW
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 23, 2023 at 10:17:11AM +0100, Ahmad Fatoum wrote:
> On 23.01.23 09:35, Sascha Hauer wrote:
> > MCI_DW in PIO mode doesn't work for me. We should search for the
> > reason, but in the end we want to do DMA anyway, which works here.
> > Disable PIO mode for now.
> 
> On what SoC?

rk3568

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


