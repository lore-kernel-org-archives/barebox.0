Delivery-date: Thu, 26 Jan 2023 09:18:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxSc-002Tgi-T6
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:18:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxSa-0004DK-0E
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:18:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nUEWxuDnpkb2KrrFUGovTcV++ZGYtQNpCX+/EiSlO4s=; b=Ply/l0TTCZvTuSEFkjr4W3Z4h8
	3uJrP5XPbykd++x3aoiHI3njlmUCATyeIH1l67IOegXL4Zej8vriRTfobZXkFwh67eCw8+ZHf/4dT
	0nSk2lBmryuwG4sJXuRBeFp7JNbE2h/wTmX4MyNelrWjeF6d1NXC2RwEkuX3mKfDxNs3Xa8kusObk
	Qm7rT2ZC+FWMZ8bM1Qm9YP9Dl/mjjZoCV8mszfRCSMtvFSyaZyENRPxYQmWFFGx05oNUoTEaV6W3+
	OB4GJckFaUhaUd7s2SHUErXFzhD3C5MwCbuFcpGbXft7Bhyzv3E4GzPRMzzHcSI78t+MgTAC8bH1w
	I9Tbwv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxRK-009xuW-5M; Thu, 26 Jan 2023 08:16:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxRF-009xtZ-Dr
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:16:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxRD-0003zJ-HL; Thu, 26 Jan 2023 09:16:51 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxRD-0004ho-9N; Thu, 26 Jan 2023 09:16:51 +0100
Date: Thu, 26 Jan 2023 09:16:51 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126081651.GJ13319@pengutronix.de>
References: <20230125124840.3386338-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125124840.3386338-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001653_480693_B81B426C 
X-CRM114-Status: GOOD (  20.28  )
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
Subject: Re: [PATCH] ddr_spd: remove unused local variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 01:48:40PM +0100, Marco Felsch wrote:
> From: Marco Felsch <marco.felsch@gmail.com>
> 
> The buf8 variable was never used so remove it.
> 
> Fixes: 2f1fc1c92 ("ddr_spd: Add function to read eeprom")
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  common/ddr_spd.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/ddr_spd.c b/common/ddr_spd.c
> index f7792360de..1c1d5826e0 100644
> --- a/common/ddr_spd.c
> +++ b/common/ddr_spd.c
> @@ -491,7 +491,6 @@ int spd_read_eeprom(struct pbl_i2c *i2c,
>  		    uint8_t addr, void *buf,
>  		    int memtype)
>  {
> -	unsigned char *buf8 = buf;
>  	int ret;
>  
>  	if (memtype == SPD_MEMTYPE_DDR4) {
> -- 
> 2.38.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


