Delivery-date: Fri, 10 Nov 2023 14:17:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ROP-005t21-2E
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:17:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ROP-00019W-N1
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:17:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RZghUNZagGI095uK/xMH1I/H80Yh2SnN8UjSnp0CFz8=; b=J/O9KrmbPqk0DfGKLMCfMHbV8B
	fagzs/9CvUjXYQ4RLt6vkPH1XF1473nSaK5BwBOIL0Az5n1Cd4cg1xmWGANBAaHx/ARW5i64ZwMau
	CKV5D8MpSovy55rXOMApjT72wQqVy55e9Sb6BQ4P/zoD43Zkvsg3YYNITc5jUJJTOFwIqI7DHXywb
	4DtIFpGwO0WTvUKq1cMqD6eol98u7Wbe1WtSI041VBR+4PfMSKWQjdbB/rzXsiRl3pBbFNh8ump+Y
	0CLxnfo4SswixKi8t/YfRw1PzXmQeoDqVRnj9Us1VqV//H+fSl3j+qIrpViqKUN6I/b3dPrs4hsq2
	bAGbn0gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RNS-008pIt-0s;
	Fri, 10 Nov 2023 13:16:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RNP-008pIL-0M
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RNN-0000vw-Sa; Fri, 10 Nov 2023 14:16:45 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RNN-00823W-GA; Fri, 10 Nov 2023 14:16:45 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RNN-001LXO-Do; Fri, 10 Nov 2023 14:16:45 +0100
Date: Fri, 10 Nov 2023 14:16:45 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231110131645.GC3359458@pengutronix.de>
References: <20231109121012.1474536-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231109121012.1474536-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051647_143892_FCC32CC0 
X-CRM114-Status: GOOD (  26.99  )
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
Subject: Re: [PATCH master] phy: stm32-usbphyc: fix unbalanced phy exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Nov 09, 2023 at 01:10:12PM +0100, Ahmad Fatoum wrote:
> On the STM32MP1, shutting down barebox can result in a
> 
>   ERROR: phy1: phy exit failed --> -22
> 
> message printed to the console. This is because the regulator is disabled
> more often than it was enabled, because stm32_usbphyc_pll_disable
> is called twice:
> 
>   - Once from stm32_usbphyc_remove calling stm32_usbphyc_phy_exit
>   - Once from dwc2_remove calling phy_exit -> stm32_usbphyc_phy_exit
> 
> The code is taken from Linux and likely causes no issues there, because
> devices are removed in reverse probe order, which barebox doesn't
> enforce. Properly solving this would be a larger endeavour, so for now
> just fix the stm32-usbphyc driver to ignore reference count dropping
> below zero and only call __stm32_usbphyc_pll_disable once.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/phy/phy-stm32-usbphyc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index ac82b019f44c..91f4e7f7e08d 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -277,7 +277,7 @@ static int __stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
>  static int stm32_usbphyc_pll_disable(struct stm32_usbphyc *usbphyc)
>  {
>  	/* Check if a phy port is still active or clk48 in use */
> -	if (atomic_dec_return(&usbphyc->n_pll_cons) > 0)
> +	if (atomic_dec_return(&usbphyc->n_pll_cons) != 1)
>  		return 0;
>  
>  	return __stm32_usbphyc_pll_disable(usbphyc);
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


