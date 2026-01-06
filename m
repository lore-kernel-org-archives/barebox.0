Delivery-date: Tue, 06 Jan 2026 14:10:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6pY-001txl-1q
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 14:10:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd6pY-0005DI-1T
	for lore@pengutronix.de; Tue, 06 Jan 2026 14:10:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iqRz+DCN50sM6ZAQ9Brws1jd8E7f8j8/LriTw9hu16I=; b=qf+XBaklS3UvJSFrZtRYsOM2g8
	f3oe5/p4zJz9vN2oX85F4fcx04TWasoYOZ6Mjq4rlYH2bsle/OwKkuwJsCcN4MHN3G33jWjvqc4ZM
	9gMi2paNs2wkBpjJhehfsC9NhTofaDbT1zxUp53C+jiHnMWvSpmlFcIDZ8rY6QaiOP+O3L6f213a2
	waocJwtRnVcSIXgFcAqZGh77Ki1FhbcovxKPzTnLC3kuLSTlwgmXz9/2tQQYGtVGBLIfqihJHt76E
	iGDLSbG7DPu020Mqp7uc3RW7JvV7i6i3KpjrWoiUZH7YUPHKVpe15Zdq/Dm8etE0LFGuWfRYIf3Yo
	MRN1EkmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6p7-0000000D3uL-1bdR;
	Tue, 06 Jan 2026 13:10:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6p5-0000000D3tN-13Mn
	for barebox@bombadil.infradead.org;
	Tue, 06 Jan 2026 13:10:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iqRz+DCN50sM6ZAQ9Brws1jd8E7f8j8/LriTw9hu16I=; b=PvmPDn4UMHaiau5eIPuuM4AHVR
	TBjCCrXwlwM5uwRhr0UcjeE7qbB+2QHkiuBGgW63V5MOxOzSMWXWeqlfgOjlEAVuf4VE9mI/TKcXT
	tqqUmlkfX6TM0mba5MOa50IiZ3uhqZq2dw2VydcnQ+ZtBvp1kiCqNr8OUpEnIB9MCYnj7LInQg9Ts
	bp2/QDHe2ALQKchgJJvtTZ1nH4tRQ0OSIBrNvyRJQ0TTLgjpItnw3SZNh2ftPlxsIruvAJxFyGhSk
	eg2vvSp8u1GFK2oTLf/EX3ADgr9aAZSP9uQ0t77zXpBrQZlsmA80Fm+fPjhCxYJ54udf5YlGoErr0
	oN4P5tNw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd6p1-00000009jy6-2NLm
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 13:10:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd6p1-00058h-4K; Tue, 06 Jan 2026 14:10:03 +0100
Message-ID: <f901e957-4a87-46f7-8928-09cf171a4405@pengutronix.de>
Date: Tue, 6 Jan 2026 14:10:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
Cc: "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260106-pbl-load-elf-v2-0-487bc760f045@pengutronix.de>
 <20260106-pbl-load-elf-v2-5-487bc760f045@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260106-pbl-load-elf-v2-5-487bc760f045@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_131004_453541_199E15D0 
X-CRM114-Status: GOOD (  10.62  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/21] riscv: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/6/26 1:53 PM, Sascha Hauer wrote:
> For use by the ELF loader in PBL to relocate barebox proper, export a
> new relocate_image capable of relocating barebox and implement
> relocate_to_current_adr() in terms of it.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> -	dstart = runtime_address(__rel_dyn_start);
> -	dend = runtime_address(__rel_dyn_end);
> -	dynsym = runtime_address(__dynsym_start);

Interestingly dynend wasn't used here and no memset, unlike for ARM and
also it needs dynsym even with RELA...

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



