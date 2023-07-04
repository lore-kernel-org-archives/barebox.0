Delivery-date: Tue, 04 Jul 2023 09:38:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGacF-00EW8z-87
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 09:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGacD-0005sc-0C
	for lore@pengutronix.de; Tue, 04 Jul 2023 09:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOsqanhAHaTJhgjjoQyCdmc/udzeFXXN4OWmzhsgFoA=; b=Hk+RLjoMddomRTn4fI1071XxHW
	f3p2pkEWQTQawnYdGP660fJWrGI1CBb+z9p/oZFi1nwXzjl/MbtbccM3wRvnz6a4IXZwWjdNLRuK2
	Nwg57iFfPBC1JjgKBuXs6rSfowdMexuavDdobBL0SRBCgS+dgF6XmrVEsaYKV4MJWQY/U04Bou711
	+2laCEdsLzVXWhb5hPPag/zQS8zC1XnCEmoAvUAFfDsbCir+l9AgaiVYycm7xUK9HmdjXE/aaQL2u
	qHKOk2JJh6LRw4Pt13Os4ROJmAO4cBmZaRdMg7CEhx44Sn2srisGSje7pvGmSsVwU3sMFm/avqms4
	f2h6cTTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGabA-00CRrx-1B;
	Tue, 04 Jul 2023 07:37:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGab7-00CRqa-0R
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 07:37:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGab5-0005fy-SN; Tue, 04 Jul 2023 09:37:15 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGab5-0002is-Kx; Tue, 04 Jul 2023 09:37:15 +0200
Date: Tue, 4 Jul 2023 09:37:15 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230704073715.GT18491@pengutronix.de>
References: <20230703140834.GR18491@pengutronix.de>
 <1c12a8ca-b232-f67d-87f8-f7983528f017@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1c12a8ca-b232-f67d-87f8-f7983528f017@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_003717_174316_EE87C0B0 
X-CRM114-Status: GOOD (  13.70  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: v2023.07.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 04:44:02PM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 03.07.23 16:08, Sascha Hauer wrote:
> >       firmware: reference pointer alignment defined in <asm-generic/pointer.h>
> 
> There's a possible issue here for platforms that use firmware
> built into barebox (e.g. Rockchip, i.MX8M). See:
> 
> https://lore.barebox.org/barebox/20230703142122.1522533-1-a.fatoum@pengutronix.de/T/#u

D'oh. Where was that lost?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


