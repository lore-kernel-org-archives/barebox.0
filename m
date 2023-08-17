Delivery-date: Thu, 17 Aug 2023 07:35:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWVfZ-007VzY-38
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 07:35:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWVfX-0000mH-DU
	for lore@pengutronix.de; Thu, 17 Aug 2023 07:35:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UqjLHrTUuqx4JS82MlRMFKCPeetsI0Ncu6/egn5W2Vg=; b=RltG0otrTOYlN0l3wTDn1MrwZc
	/JaxTeV2RHZ0LaV9/98IbfSliTn/PDX1mF2f+zQecjvvs92TGe1p6HL5U0XCB2/3mElFLLyu19uuv
	B46dJgyZztWK5RAq+22znd6HRFBTBmmoaG/SYPSkrFNutdbU353u/53NPPQBUMii+j5Ib2t82cQNd
	LFc+1mgaNKEQr5Vf7JhHqDVcl7dl3Xu0k1i+eqDjCRSMEECkg+UfVFE4aU4dJjTtprws4ZdI6glRa
	zz7N0ol8CiOdqAFt9FY/QI0381nFvo33okG7Bqpe6r6PKYPKXu5Dd57QAcydK8kPZEgyACy8Wi0y4
	ULtzgd8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWVe9-005aXx-0m;
	Thu, 17 Aug 2023 05:34:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWVe6-005aXE-1d
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 05:34:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWVe5-0000St-2b; Thu, 17 Aug 2023 07:34:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWVe3-0005xI-KF; Thu, 17 Aug 2023 07:34:07 +0200
Date: Thu, 17 Aug 2023 07:34:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230817053407.GI5650@pengutronix.de>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816104429.GG5650@pengutronix.de>
 <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816142819.GH5650@pengutronix.de>
 <PR3P195MB05559A232A25A80463C4D60EC315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB05559A232A25A80463C4D60EC315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_223410_544659_B4B6737E 
X-CRM114-Status: GOOD (  15.72  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 16, 2023 at 04:48:37PM +0000, Lior Weintraub wrote:
> Thanks Sascha,
> 
> The thing I am trying to achieve is to run RTL simulations in a
> reasonable time frame on our bootloader and barebox loading.
> On RTL simulation environment it takes about 5 min for each 40 us
> which is about 2 hours for 1 ms of CPU time.

Ah, I see, now it makes sense to me ;)

In that case I would really just skip PBL support and jump into barebox
proper right away like I described.

It doesn't make sense to upstream such hacks though, it will be
bitrotted the next time somebody tries to use it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


