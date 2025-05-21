Delivery-date: Wed, 21 May 2025 09:45:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe8r-0015x4-3C
	for lore@lore.pengutronix.de;
	Wed, 21 May 2025 09:45:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uHe8r-00055u-EV
	for lore@pengutronix.de; Wed, 21 May 2025 09:45:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sHW11dMNR8tyeHfiCgQb1PuhnOYrFV3rmVKOeVLCjv4=; b=Un+uzDnmBknMADX2yPOkt22d4a
	b7tk91hfFxUQaiXNMgtS0Q+cI9/++o4g8KfCDvDVKyPLwl+6HcroaZ+ONo9iEw1SU3qlIKXEaVtOI
	yypuRaun7YQsxOJdNUTSCeN0u58rqyIHofJW5ruRBitXV0DnaFCVSAS4+FEySIufl/ThU/CH9KQYr
	ChxD3I7wWABq9LGoyZ7WgaK4kuPySUKULoWCar4WymiKr1bKFx59hQ9wEUjDWGJ7tg/6FjSNedZRr
	dQVs0hSic/ZCZsKU/U/iImIReZZbnO8bSCARaQswQ4Mbw7NlaZuO/f0G23CYXxgjpR/EoTHmvivzL
	OzOfsmwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe8R-0000000F5mu-2mdC;
	Wed, 21 May 2025 07:45:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHe8O-0000000F5mQ-2Y6k
	for barebox@lists.infradead.org;
	Wed, 21 May 2025 07:45:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <rsc@pengutronix.de>)
	id 1uHe8L-0004z8-Rt; Wed, 21 May 2025 09:45:01 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <rsc@pengutronix.de>)
	id 1uHe8L-000XJC-2A;
	Wed, 21 May 2025 09:45:01 +0200
Received: from rsc by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <rsc@pengutronix.de>)
	id 1uHe8L-000kzp-1q;
	Wed, 21 May 2025 09:45:01 +0200
Date: Wed, 21 May 2025 09:45:01 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aC2EfSTbtKr5VyC2@pengutronix.de>
References: <20250520124118.73783-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250520124118.73783-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_004504_647970_B8807C55 
X-CRM114-Status: GOOD (  17.06  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] of: partition: overwrite arm,arm-firmware-suite
 unless donttouch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, May 20, 2025 at 02:41:18PM +0200, Ahmad Fatoum wrote:
> barebox doesn't support arm,arm-firmware-suite partitioning and if the
> barebox device tree uses a fixed-partitions binding for a flash, it will
> overwrite a kernel partitions node that uses arm,arm-firmware-suite with
> the fixed partition binding.
> 
> This broke in the default case with the addition of
> global.of_partition_binding=adaptive, because the check for a compatible
> was successful, but the compatible was neither fixed-partitions or
> barebox,fixed-partitions.
> 
> Fix this by explicitly checking the compatibles we expect.
> This fixes a failed of_get_reproducible_name in of_state_fixup, which
> broke barebox-state usage on Vexpress in DistroKit.
> 
> Fixes: f0d91d7ba6cb ("of: partition: add Linux CONFIG_OF_PARTITION-compatible adaptive fixup mode")
> Reported-by: Robert Schwebel <rsc@pengutronix.de>

Thanks, works for me.

rsc

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


