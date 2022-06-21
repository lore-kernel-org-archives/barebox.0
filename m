Delivery-date: Tue, 21 Jun 2022 12:09:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3apH-0099tQ-SR
	for lore@lore.pengutronix.de; Tue, 21 Jun 2022 12:09:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o3apH-0006Fb-Ll
	for lore@pengutronix.de; Tue, 21 Jun 2022 12:09:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hU+KrkrfIhtUvjdDBr5S9eh68HHJ10hka4Ae+EoOBHg=; b=U1/bDItmb+Fn6z
	J8tzzD4ddrnGUG5/m9V3fYyz5ki7cJRyJN3m9UhP75a3U2g6zl0Co46thSKMlNU4LLJoHWJcKHUAA
	bxyOO0i1oZtP6E1tgS/YvpI2QWpDpO9B9xgO1lKRdgyiCzRcCATB7f2JJk4Gkcvw2bHEpNoNBS/4Y
	BG74VPvx8cu4G2KtjSY50yegeJQhE++qARyFYCGixI8wkPywSVahYpI/2PpvKkcR9CXJbRG1EITqZ
	a5Y9K/ykVEDogst2icB0wM7eIJJj/ZJf+LU7RaKHaoaa8PYdplz2NkGnwfJZqrMqtHf5ZZWQpamrn
	8UKoJ2xlyHTvIP9zuMXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3ani-004nl5-Am; Tue, 21 Jun 2022 10:08:02 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3anc-004nj5-PF
	for barebox@lists.infradead.org; Tue, 21 Jun 2022 10:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:content-type:message-id:references:in-reply-to:
	 reply-to:subject:cc:to:from:date:mime-version:from;
	bh=hU+KrkrfIhtUvjdDBr5S9eh68HHJ10hka4Ae+EoOBHg=;
	b=Eg5214JZZmJPQm+hWVAW7LhQicIrDUh/b5v8vONlf7SYdD4+QjYnJbbW1Jk+CIbdCeAadCC+5kqfd
	 DOy3+ltHNtU7GJNZyk9dEqW9xpK2Kn2cRNkvviYaOrJWES5pzCQKa+3OzCfpu0pnQh+ilJ++R4d55v
	 szBQlyM2NZtzGydXr2mBFVNIU8Oa5E2cs9UivzxmDlsSW7oTP1s6qiEFceiFx848+oXk9OFxbxG0eI
	 HQOt7r3pBwEf84M8Zj/DN3eMaiVFEwoCmKK+/QEuCYRGFMNNSpI55Nz0eQYKmsctteyRopWbBMW9sq
	 Pheov0VeEm0IMW/jOe420eM/9L4eTpw==
X-MSG-ID: 020753b6-f14a-11ec-8a45-0050569d11ae
MIME-Version: 1.0
Date: Tue, 21 Jun 2022 12:07:50 +0200
From: Robin van der Gracht <robin@protonic.nl>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox <barebox@lists.infradead.org>, Andrey Smirnov
 <andrew.smirnov@gmail.com>
In-Reply-To: <20220621074645.GS1615@pengutronix.de>
References: <28eba28ad8f42919edb1aee4e4303a96@protonic.nl>
 <20220621074645.GS1615@pengutronix.de>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <7fb5b14b9de44e2e464144defdc33672@protonic.nl>
X-Sender: robin@protonic.nl
Organization: Protonic Holland
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_030757_006802_190EF5FD 
X-CRM114-Status: UNSURE (   7.36  )
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Boot hangs during sdhci_transfer_data_dma
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2022-06-21 09:46, Sascha Hauer wrote:
> Hi Robin,
...
> We should only ever
> clear the bits we have handled, like sdhci_transfer_data_dma() does with
> 
> 	sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);

I just noticed that the tegra-sdmmc mci driver might have the same issue.

https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/tegra-sdmmc.c#n149

It can prevent the following conditional from ever evaluating true trapping
the process in the while loop.
https://git.pengutronix.de/cgit/barebox/tree/drivers/mci/tegra-sdmmc.c#n203

This driver clears the status register on error (not on start/end of 
function)
with an old value 'val' which can be lacking status bits that popped up
along the way...

I can't test code changes for this platform.

- Robin


