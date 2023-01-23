Delivery-date: Mon, 23 Jan 2023 10:52:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtVS-002zoe-5w
	for lore@lore.pengutronix.de; Mon, 23 Jan 2023 10:52:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pJtVQ-0004dM-8S
	for lore@pengutronix.de; Mon, 23 Jan 2023 10:52:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xUTCwe7AuJS0VklilYLyb1uN8WWOuMB995zeyZkduZM=; b=to75/cdpMyaHni9iVHsSUyqLcY
	6f7IUQ8rJnC+qiFbUGqVarDd43B2rhm/IYCfGnCGLpRygR/qh5e8D50RvPZT5uyU7caJvHPq9n1Vl
	r7maw9T0JuttZxLetER5u5tjbq9G3+vNWQqL/1+mvIn6m1bLlk9JL9O7InoLi3dV+kNRaB/G7reWl
	t4hWk/nsLSEMT1y0KHXJ3VCv6Csf/VYwG3otxacrsvzIPzdIaAPvG2XPMoTHrMeg/3gxwJ/1bA436
	LhufuMIiklV1RXZcYS96GhxjQn/a/WBQl3epmVwgGGs/kKMf5ubH9PM8PtaNYFO51goWVOIHIodzC
	dd4Opb6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtU5-00GadR-OO; Mon, 23 Jan 2023 09:51:25 +0000
Received: from out0.migadu.com ([2001:41d0:2:267::])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJtTz-00Gabi-VL
	for barebox@lists.infradead.org; Mon, 23 Jan 2023 09:51:22 +0000
Date: Mon, 23 Jan 2023 20:47:56 +1100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1674467475;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xUTCwe7AuJS0VklilYLyb1uN8WWOuMB995zeyZkduZM=;
	b=Glgg1vqTv0arR4LYhMFfGADk0sU/K1oJknzJXb8NBh5gGY3I/FaYXi70P/35FTe2E5bP6M
	Gm+8dQoWtgNe1Z/nEKhPDg2Y9z23wBcoBBtZuEBaID8Wmm4dZGq63IBHS7QS1INOJl10k8
	pN2FHxaWPPQSq+iOcYRlUqcLg/eRM2rENHFA7QZxKLObFhg6ZJ6VbZ6KflLWADqHPWE/ub
	BVYyi41ISKN9IIMWwqNnOK3begSpzDXho01KsBbzYXimpazsUFXkuME4dBAJMq3RmOG5yS
	FuE1khiBISOZ4pjq2zb9gNUnUqeayYlpuk/uAr5pzYvkDxzjBRtQYJLTewjOyA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: John Watts <contact@jookia.org>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	barebox@lists.infradead.org
Message-ID: <Y85XzD8YDqKZ/eBP@novena-choice-citizen>
References: <20230122150432.4096816-1-contact@jookia.org>
 <CAP1tNvQgZhoevYT4DQAZ_H0C_PPQ54irZU=jdHo09uZqigmvmg@mail.gmail.com>
 <Y81upA0H8lA7qKQz@novena-choice-citizen>
 <CAP1tNvSgOGC3FgGpS8bJjf_WAMZd7RejsO_JCcGX4t8gYdrTzw@mail.gmail.com>
 <20230123084353.GQ24755@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230123084353.GQ24755@pengutronix.de>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_015120_762019_56B6522F 
X-CRM114-Status: GOOD (  13.40  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: Fix probing SPI drivers without a cs-gpios node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Alright, shall do in V2.

On Mon, Jan 23, 2023 at 09:43:53AM +0100, Sascha Hauer wrote:
> On Sun, Jan 22, 2023 at 09:09:38PM +0300, Alexander Shiyan wrote:
> > I dont know. I said how would I do it if it was my patch. I hope
> > Sasсha will decide how it will be better.
> 
> I would also prefer a dedicated function that just returns 0 if there
> are no CS GPIOs found.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


