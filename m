Delivery-date: Fri, 13 Jun 2025 11:44:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0xw-006p1n-1W
	for lore@lore.pengutronix.de;
	Fri, 13 Jun 2025 11:44:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uQ0xv-0006Pj-UT
	for lore@pengutronix.de; Fri, 13 Jun 2025 11:44:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LhLLgKbVCaYYiuPAciVrBkGknypvdejNeYy/Nsx79MU=; b=SUVuY0BQktlJIHkeben3EuH2Xi
	RJKvhcqkNhsZ0U6QPoJ2+h/VTwoEbXlHFcNUvWHpQ9KwlQiX5fjnY3CnuP0TnaHifHojEyReHfSXs
	MAKXE3TSSLjSKfzz1YfASqgQ7gt6ts8buAbfQPhUdYONa7cJpAi1oiLzY82QWUSLNTloHYWVFIQbZ
	/bgKmpDf+NLDOrgluzvmXMf7ryEPhLoW8l0mT0SG7ryV0YvOTH0GszTGTXLSzTUw+Xqk8KtZh7Y0q
	dvb4JUdZdnqTFW0zWAx6DgaW/pc91zDQn/+kh6G4XjSmdyqRC8mstg4qsgOFI1q67aQgVKBJSE3DV
	6Wvm5hLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0xY-0000000Fx72-1DAA;
	Fri, 13 Jun 2025 09:44:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uQ0dX-0000000FuCX-41E2
	for barebox@lists.infradead.org;
	Fri, 13 Jun 2025 09:23:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uQ0dW-0000ND-Nf; Fri, 13 Jun 2025 11:23:46 +0200
Message-ID: <5609257a-08a0-42b3-a2f9-6b752e652051@pengutronix.de>
Date: Fri, 13 Jun 2025 11:23:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20250613-arm-mmu-xn-ro-v1-0-60f05c6e7b4b@pengutronix.de>
 <20250613-arm-mmu-xn-ro-v1-4-60f05c6e7b4b@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250613-arm-mmu-xn-ro-v1-4-60f05c6e7b4b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250613_022347_999936_C620B269 
X-CRM114-Status: GOOD (  13.20  )
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
Subject: Re: [PATCH 4/7] ARM: MMU: map memory for barebox proper pagewise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 6/13/25 09:58, Sascha Hauer wrote:
> Map the remainder of the memory explicitly with two level page tables. This is
> the place where barebox proper ends at. In barebox proper we'll remap the code
> segments readonly/executable and the ro segments readonly/execute never. For this
> we need the memory being mapped pagewise. We can't do the split up from section
> wise mapping to pagewise mapping later because that would require us to do
> a break-before-make sequence which we can't do when barebox proper is running
> at the location being remapped.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Just a small thing to change below:

>  	uint32_t *ttb = (uint32_t *)arm_mem_ttb(membase + memsize);
> +	unsigned long barebox_size = SZ_8M, optee_start;

SZ_8M is overwritten later, so should be dropped here.

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



