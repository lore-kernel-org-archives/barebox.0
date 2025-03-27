Delivery-date: Thu, 27 Mar 2025 12:57:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txlrb-004rRv-3A
	for lore@lore.pengutronix.de;
	Thu, 27 Mar 2025 12:57:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1txlrb-0002vI-Ei
	for lore@pengutronix.de; Thu, 27 Mar 2025 12:57:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:To:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hQwdbUjWKwTKL9gWKRDc/ry8jcNft6+WHaIk80SuNNc=; b=TBqRmrlvLZRlitB6R0OnIFgd1b
	5IxVsq0WkuR4VHIilWi+m+dxhZr469nkCttTSSFjigb023m7Y8/pKnlwNi+HZB6bJM/7Hl88CSc+V
	a3nzqZC4IpYKaHPpUpuBfBBmzqzSSmwmPwiqNeCmaxVjocxuFvl0M3m5gyUxmB42QiCTDshciAd+O
	xHJskDBThvdTXXb1ZHjLjhFWRF60x4/1pn8jcn6ZJr/+5rBmze55MHepehEXg0CkVSjsO8wuPP+uy
	pogR1q+B/cZ4UY3KI9FjhDCTedbmCIzN57zH5ihSoZybwrqMg14HoC8QDMD3m/9sq5SYvYmU47CMV
	gYy6r5PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txlrA-0000000AtNh-1Rbb;
	Thu, 27 Mar 2025 11:57:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txlll-0000000Ashv-0b4I
	for barebox@lists.infradead.org;
	Thu, 27 Mar 2025 11:51:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1txllj-0001p7-Ed; Thu, 27 Mar 2025 12:51:31 +0100
Message-ID: <7a4edaef-a606-4b9d-bdf5-c7b5f896daae@pengutronix.de>
Date: Thu, 27 Mar 2025 12:51:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_045133_181739_6D70C011 
X-CRM114-Status: UNSURE (   3.87  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Removal of dlmalloc?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

We have a TLSF implemenation in barebox for >= 13 years now and it has
more features than dlmalloc like multiple pools and KASAN integration.

I think it's thus time to retire the dlmalloc we inherited from U-Boot.

Unfortunately, TLSF was not the default in the config, even though the
most common configs select it. I'd thus suggest we remove dlmalloc
altogether after v2025.06.0 is tagged.

Thoughts? Objections?

Cheers,
Ahmad


