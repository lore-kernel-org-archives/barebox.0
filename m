Delivery-date: Wed, 29 Jun 2022 09:17:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rwm-000xls-Sn
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 09:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6Rwp-0004nQ-6V
	for lore@pengutronix.de; Wed, 29 Jun 2022 09:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mS/UfQ5s8k7g2YlvOCYt10iE9Br5tvGFYFKottTpTlY=; b=lmT4Ou1RKJuTovgf1l0cY/H8KE
	ok0DpUJvEqeEX11sChmAnjK0n9hNeJ2Sv3IjadQQrHZDoPjp16zixFVkqrmnCK9DK+IXj0jm4VXqq
	92aM0jedSIo9puHMMm+7kXYO1TeQUeULAf2PxCScOfLStbYN44QUI/4pAMfIqBLeRjBW8SxnM7giE
	pCTyMF4CBGO2OdGaMoEyf4ScGos/JsszPGB+HiDuX5p9Zyi56YH/cxkf7FpiIf9Nz564dm96N9RQb
	KJNFrt+a0r53Qlu7CRNWY3rMwqO/Z2HLG2iI2v8ZWsFtvxeL88AU28GSDAQLucKD+1TAPzYoCnOKF
	iXjNL/lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Rvb-00A2ma-0H; Wed, 29 Jun 2022 07:15:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RvW-00A2lh-My
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 07:15:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6RvU-0004OX-MI; Wed, 29 Jun 2022 09:15:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o6RvU-0002Y8-5x; Wed, 29 Jun 2022 09:15:52 +0200
Date: Wed, 29 Jun 2022 09:15:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <20220629071552.GQ19026@pengutronix.de>
References: <20220628080414.28960-1-eagle.alexander923@gmail.com>
 <f7faf1d6-0c24-189d-81db-a3a9340b64ce@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f7faf1d6-0c24-189d-81db-a3a9340b64ce@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220629_001554_784307_9972D95C 
X-CRM114-Status: GOOD (  15.49  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] serial: ns16550: Reuse 48MHz default clock definition
 for non-DT OMAP boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 28, 2022 at 10:23:01AM +0200, Ahmad Fatoum wrote:
> On 28.06.22 10:04, Alexander Shiyan wrote:
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> > -	if (!IS_ENABLED(CONFIG_OFDEVICE))
> > +	if (!IS_ENABLED(CONFIG_OFDEVICE) || !np)
> 
> Nitpick:
> 
>   struct device_node *np = dev_of_node(dev);
> 
>   if (!np)
> 
> is equivalent, but a bit less verbose.

Applied with this change, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


