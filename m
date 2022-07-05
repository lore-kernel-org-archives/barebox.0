Delivery-date: Tue, 05 Jul 2022 10:54:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8eJk-006Maq-RV
	for lore@lore.pengutronix.de; Tue, 05 Jul 2022 10:54:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8eJn-00009s-1m
	for lore@pengutronix.de; Tue, 05 Jul 2022 10:54:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vdkECMvP/10Gt8VV1vRXJWTChmJaJfWfcapCEOdkuUA=; b=nkfKyu2UysgPZ5/ctdTQdD/CqB
	acgsIQWg3+g1cD/8nIjfFvflDE4bPHQoTQr5Ys6T0aH9/T1FuTs7+LRezYZ0/8d2s5MKJOdMeJ6x5
	+1Qr4VMHme86Affie2lPbHIOIEB9ufOT8GgoNGXKBMqlL+1AUKbOE4xL/I91EsltTM+CMx/CvVKcE
	aLdyG+CSa7EyGFP/F4VOsnnK8DiyLxIIGS33z/5567GVPVLlXb9DZgPDclfTS1e09EWMhUa0XcolZ
	KZ0CFx3/IOIJ1asq91VeSYn6coDeLPQFaYNQipgs4H6JXcDPc4B0U8GQ2RpoVWZkyQuu03AZAvkLa
	FeuVxjJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eIH-00GMoq-Ar; Tue, 05 Jul 2022 08:52:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8eIC-00GMly-9o
	for barebox@lists.infradead.org; Tue, 05 Jul 2022 08:52:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8eI6-0008KP-8H; Tue, 05 Jul 2022 10:52:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o8eI5-0007QM-Nq; Tue, 05 Jul 2022 10:52:17 +0200
Date: Tue, 5 Jul 2022 10:52:17 +0200
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>
Message-ID: <20220705085217.GC5208@pengutronix.de>
References: <CAGm1_kss73npzzCzoD44kO4C24PNwPHZcOV_nZWwq_sW12zxww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGm1_kss73npzzCzoD44kO4C24PNwPHZcOV_nZWwq_sW12zxww@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_015224_398535_A99857CB 
X-CRM114-Status: GOOD (  12.68  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: am335x: baltos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Yegor,

On Mon, Jul 04, 2022 at 02:54:48PM +0200, Yegor Yefremov wrote:
> am335x-baltos got broken between 2022.06 and the current master. The
> symptoms: no barebox console output at all i.e. the system freezes.
> 
> Here is git bisect log but I don't really see the reason for the failure:
> 
> # first bad commit: [8828e1226981b6a31b12a643768cac63fae3576e] Merge
> branch 'for-next/imx'

There's nothing in this branch that is even compiled on your board, so I
would guess that you gave a wrong answer somewhere during bisecting.
Apart from bisecting again you could enable some debugging:

[*] Low level debug messages (read help)
    Kernel low-level debugging port (AM33XX Debug UART)  --->
    (0) OMAP Debug UART Port Selection
    [*] Trace initcalls

Regards,
  Sascha
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


