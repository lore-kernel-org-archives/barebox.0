Delivery-date: Thu, 02 Feb 2023 15:43:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNanr-00BUK2-7k
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 15:43:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNano-0004FN-1N
	for lore@pengutronix.de; Thu, 02 Feb 2023 15:43:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqUSE/hYoZlGDsrUwCSWnuZngrRZsBQ1xm70TqYtsHg=; b=oNPE+FAjBSX8/7wiGkhdHcDWm0
	xUG4gLs1BLUzwy7Y68AN79wzkAOgaKkEP9ZymfDetsQpg4srVook33jrPbagMkf5JmhwJExCutVwF
	Uu4J/dbtMW2XCz3jlipZt1CuNsLWSvSnE1D3UKUEXDq9CGf/IekaLZ5t1bOFO3qB7LquniVm8PRwa
	Kfd7tja1CnWZsHayQXPGPjcc/ieD2tWSk3Mv4zqwDepT/L62d6mo6WBlW0MaIdW7aTl/SQrHJoh70
	Lm3gk3PPAJZ6yr+Q1pLq0dGPCi6MOZxB4bGKED/geTaqdMh4VH14O7MHTWchGYXxn4OnHFDlQTnV+
	0sjkS1jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNamb-00GBg7-Jt; Thu, 02 Feb 2023 14:41:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNamV-00GBfZ-VS
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:41:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNamU-00042O-5S; Thu, 02 Feb 2023 15:41:42 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pNamT-0003hy-Rg; Thu, 02 Feb 2023 15:41:41 +0100
Date: Thu, 2 Feb 2023 15:41:41 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20230202144141.26udb25dgtgrxe2s@pengutronix.de>
References: <20230202142000.3544631-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230202142000.3544631-1-ahmad@a3f.at>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_064144_047766_8A7DFFE2 
X-CRM114-Status: UNSURE (   7.03  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] RISC-V: virt: riscvemu: fix unit address in node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-02-02, Ahmad Fatoum wrote:
> The overlay adds a SRAM at address 0x1000, but the unit address was
> still 0, which is confusing. Change it to sram@1000 instead.
> 
> Reported-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


