Delivery-date: Wed, 16 Aug 2023 12:45:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWE2B-0069nb-8r
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 12:45:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWE29-0002wr-Gm
	for lore@pengutronix.de; Wed, 16 Aug 2023 12:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2CeuxkhiiEKW557+7qZ0+YsYW4cMB+j2Mo/GcqCUg8o=; b=ICZRBpcje8cCjLEVfB+1a0bj0V
	fgCw0KAZ0IXzWreNRwma0k9n5qM8UiJiKzc/1d+FzerdXnZKkiFSMEg9Tew8Nj7PCATy7TkxjDUn0
	HLAarNs/tawMNstKDzgJYbLUkjKAVtVQzhAfI1er4nB4O6jmXMjSWUxiLM840wZgIomzIfOR2NheJ
	LcCEou0/MmVvnAs+Wt4KgxB6Rm+xdegNjJM0q3gEoDRZT8Rm/89bEuKOGmF/pNwS8gcygLBft6naq
	GWWLA+sXDm2HuM7VtilND+I9BoIAi3O8MOywQGV3Ps1zzdWqZgM8oWNcchY1pFKuSIa1VocZBhoIx
	2J10SIvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWE0x-003sdR-1D;
	Wed, 16 Aug 2023 10:44:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWE0v-003scZ-0Z
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 10:44:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWE0s-0002Q9-SK; Wed, 16 Aug 2023 12:44:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWE0r-0004P3-Vv; Wed, 16 Aug 2023 12:44:29 +0200
Date: Wed, 16 Aug 2023 12:44:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230816104429.GG5650@pengutronix.de>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_034433_214327_9338A20F 
X-CRM114-Status: GOOD (  13.62  )
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
Subject: Re: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 16, 2023 at 10:36:16AM +0000, Lior Weintraub wrote:
> Hi,
> 
> Is there as option to build a barebox PBL with uncompressed barebox proper?
> The incentive for that is to accelerate RTL simulations.

Yes, just enable CONFIG_IMAGE_COMPRESSION_NONE.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


