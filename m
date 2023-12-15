Delivery-date: Fri, 15 Dec 2023 12:07:23 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE62N-003ZHe-01
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 12:07:23 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE62N-0000Eq-9a
	for lore@pengutronix.de; Fri, 15 Dec 2023 12:07:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xgxrwv7yMN9M3X4GqSJIb3uN5gMRWY0jabMYpY0lXpU=; b=MhAxeimqiNVCdkhwpaCJqskosM
	ks4t5L7HUEFRzlGy7y7Gekv8h22abY8cGrYrobAFirzel4lpEDlWH3JgHHJfrt905pic3H3OJnfQO
	uhm0AyOZnqK6FJA1TFaveddnBwtNAh9WRk8XnW5JEd6zwKwQxcAYszksJlhJmQ6zPT621gpXAk5EQ
	C2Jqwt4AOjThLAr5ATtQEawyNyRVY/bUCV80q3d1/d9dS76iifYbcvcrN82dWiFJTFLGIR+deSI1U
	o6hXMYSoLyQy1jurk03aybSpEm4EwcSnSpYxeDaV2FSEiZ5Y7fvcqk3T5YRUkjiBTj9BisSDUsxDS
	oj53fSSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE61M-002rjU-18;
	Fri, 15 Dec 2023 11:06:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE61J-002rj3-1s
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 11:06:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE61I-0008BI-9I; Fri, 15 Dec 2023 12:06:16 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rE61H-00G0WP-TU; Fri, 15 Dec 2023 12:06:15 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rE61H-0076eO-R6; Fri, 15 Dec 2023 12:06:15 +0100
Date: Fri, 15 Dec 2023 12:06:15 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231215110615.GN1318922@pengutronix.de>
References: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_030617_639993_F63EB1A1 
X-CRM114-Status: GOOD (  19.79  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] ARM: dts: rpi4: drop disabling of SDHCI node used
 for WiFi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Dec 14, 2023 at 04:18:03PM +0100, Ahmad Fatoum wrote:
> Since commit 4ead6e90a9cb ("mci: handle SDIO cards gracefully"), barebox
> no longer chokes on SDIO cards, but skips them gracefully. We thus don't
> need to force disable them in the barebox DT.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/bcm2711-rpi-4.dts | 5 -----
>  1 file changed, 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/bcm2711-rpi-4.dts b/arch/arm/dts/bcm2711-rpi-4.dts
> index 3c0caa73f8f1..de748e2fc65b 100644
> --- a/arch/arm/dts/bcm2711-rpi-4.dts
> +++ b/arch/arm/dts/bcm2711-rpi-4.dts
> @@ -4,11 +4,6 @@
>  	reg = <0x0 0x0 0x0>;
>  };
>  
> -&sdhci {
> -	/* no use for SDIO WiFi in barebox */
> -	status = "disabled";
> -};
> -
>  &uart1 {
>  	/* VPU core clock is reported at 200MHz, but needs to be 500Mhz
>  	 * for ns16550 driver to set correct baudrate. Until that's
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


