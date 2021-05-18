Delivery-date: Tue, 18 May 2021 13:49:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyEO-0004Af-Nw
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:49:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyEO-0001Km-2m
	for lore@pengutronix.de; Tue, 18 May 2021 13:49:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DNwffDfLlga463Gk+dNvIdqyDBqIJiT8rpxMrg3cTLA=; b=noaZsrOxDgGkltpgKHW5XN9vd
	jPsbI0C0YOUcu7cDHG4hs2Kcme+afoQf/H1OZbCKBfzuqoZO/7xOPKRH/giYKC/aGATbqP1k8a/Hz
	VoIN774laPZjH1t7XI6lJBg8fuZxzAlyCxYw8xhKEsLYfmt4a+X1b8rlKT+EBmZg7eDE1cQJ1G+oK
	xneS4eD2gXvuLk7OIFj5kqf0ACHCKNsOlti6DN+qq9c3F8vsJXl1QcGhTHQ5JU7MevNoNQJnQ7NSB
	p3cpYPerAQAcbIHRNtdKpxqgFoSVl9/hrIS1tnUoFjWn3ox4hZvF2qAP3mu0MtmLaqw88gFRX7Gfj
	OEi7ied/A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyDP-000dMD-O2; Tue, 18 May 2021 11:48:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyDL-000dLn-Qq
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:48:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=GmM1TgSnYZp09eUltuk//K+J7xadZn74LEHajBOugUI=; b=2FObuOxt8NcnVdXvq/m4lHY0xS
 65AWqBx6L0KVvEXK5Wp8TncREzSfNS3At4q9fTTzPBCRkdNs47IFMuGFt1iG44diAxztvzUlzwU3f
 bo3DTihGTvAoFfUqtckKpyml2FwNG0+Wx1c9Gs9oVJvbUijsAkNAOSznohIsNIcokR5W79rb8DCcr
 +GzsbWO7PN3EHkeXLOeiCTnKIISldamFp55HCoHya8ZgOeRJSzPkNWs/pbKf4/TlxgruyishCI5Gq
 nlszLIZk3RrZJR44nst9PqKmy1uq1YB7B6pgsVmPsC5iHbfluTaKTxEw857cuMk1DFh0rjrutQwdj
 vkYnIdCQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyDI-00EcEj-Jq
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:48:42 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1liyDF-0001Dl-71; Tue, 18 May 2021 13:48:37 +0200
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20210518114404.5553-1-s.hauer@pengutronix.de>
 <20210518114404.5553-3-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c78dcecb-5d8f-bb09-04aa-18c10d3a62de@pengutronix.de>
Date: Tue, 18 May 2021 13:48:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210518114404.5553-3-s.hauer@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044840_680652_B7141A34 
X-CRM114-Status: GOOD (  11.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: Rockchip: Merge defconfig files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 18.05.21 13:44, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/configs/rk3188_defconfig             | 98 -------------------
>  .../{rk3288_defconfig => rockchip_defconfig}  |  5 +-

Perhaps call it rockchip_v7a_defconfig or similar to differentiate it from
future 64-bit support?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

