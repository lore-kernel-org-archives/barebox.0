Delivery-date: Thu, 02 Feb 2023 09:01:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUXB-00B8Cz-QE
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 09:01:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNUX9-0001wA-4J
	for lore@pengutronix.de; Thu, 02 Feb 2023 09:01:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QMD+8uJvSMb0VeCgOmNNF6yZnTWMO5Kkk/GbOdDcFVk=; b=RfpXPcWsezY/Cw8NrQfvrC8xJh
	lAUKKZ8XRuGIADfnZ+Z4KPnUdszZKiBdjatZ3/bUEbuFDicDc1pm2pQQqGDSUIB5A26G4lYx2Ldot
	0X7SCR11cQ4zbKT9r9+A6ihzLkuG2isKkBd0KeX+uG1LB3Y62VvcuZRB+A12oWGXuMlfSNYUP0NDT
	7BVZPjn+lbLCjdgfEpxgHV+G2zAiIDrbBcUQ+fd4JG73FV+L0XdOiIw5mcMMdweFxFgLJGUIq2n5q
	yNBUtihS2iLsOR/QNO511QPxqPICFPniR6D6tZXmOjnuMuoWD9JS5crsekXAb/wLHZlTlTDdOUVF9
	wQ9XOzYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUVs-00EpWm-6F; Thu, 02 Feb 2023 08:00:08 +0000
Received: from out-112.mta0.migadu.com ([2001:41d0:1004:224b::70])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNUVi-00EpQX-0r
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 07:59:59 +0000
Date: Thu, 2 Feb 2023 18:58:21 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1675324794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=QMD+8uJvSMb0VeCgOmNNF6yZnTWMO5Kkk/GbOdDcFVk=;
	b=Pu7KNs6o7eUeGjhzaVtIiPJWPzezFLn6I2igYlW77h6EgMAhvTC9HJe159iSYi2TnBM71g
	WZxNkRj4aZotCA1HdpViLqCYfVrBM5xMv4gswdCW557rC+2osyeAbrA6kPM8FNkxIV6dbr
	M/b5/8UcA9MWWi8wYWKioZFCxWh/ROKpcNvMeyD0c4V4R4bJAN2ROeuuV8yJ0hJ/lo31xm
	5ga24N7ByQtL9bsVb46nvO+MKkiqock1+Vf5ErUt8ddkdWy8nAlm1wdxA/RPMZZmBcjy3w
	DQ7AdgNRD/jcLk2ywCekCzNPdAX5pmEBPit5jTy14G/zkeihkAnshGnpxuZozQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Y9ttHbfAHz0w9jeq@novena-choice-citizen>
References: <20230201094435.1228362-1-contact@jookia.org>
 <20230202073527.GK13319@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202073527.GK13319@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_235958_265606_24EB6077 
X-CRM114-Status: GOOD (  10.83  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] I2C: i.MX: early: Use a custom delay on i.MX6
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Feb 02, 2023 at 08:35:27AM +0100, Sascha Hauer wrote:
> I rounded up to 100 cycles and rephrased this to be a little less i.MX6
> centric:
> 
> 	/*
> 	 * We lack udelay on the 32bit i.MX SoCs, so delay manually: On an
> 	 * i.MX6 with a 66Mhz I2C peripheral clock one cycle of this loop
> 	 * takes 1.30us. Let's be generous and round up to 100 cycles. Other
> 	 * i.MX SoCs do not have a higher peripheral clock, so we should be
> 	 * safe here as well.
> 	 */
> 
> In the end it doesn't hurt when it takes a little longer.

Makes sense. Thanks!

> Applied, thanks
> 
> Sascha

John.


