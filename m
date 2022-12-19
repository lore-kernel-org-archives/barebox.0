Delivery-date: Mon, 19 Dec 2022 23:28:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7Ocr-0024bY-De
	for lore@lore.pengutronix.de; Mon, 19 Dec 2022 23:28:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p7Ocp-0007CF-AV
	for lore@pengutronix.de; Mon, 19 Dec 2022 23:28:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UaGW347ys413W05eYmRxsTKYtpq9A5vOpmJnZS0p7yA=; b=hqQl6z7DvueC2KPnxrXjDT4Ng/
	kyvkX4PVUbNoi9FPX7hJ7jvELrxdEvLrj9JAa3K/azM5wqp5Ds4YSvU5dcM/1FG9lyl+7vNLvbtnO
	CSgP/g+Z971dEZKgz3K1oE7vIXZST5dpFodzmnWCizKzHLrx4P313qwvLEObWJ7PFz9S3f8Z9S1vg
	GgmB/b8HQ0KGkTkPpWpkE3MZvjdEgcw7izEFN/H73X9/Egr2Tx3FPydl5jpXDLN8mgP6xsoeMzMtr
	ss5CkBqX9RBYy+9PxCCRTuj+f7lo79g/upsAM53Qlqop9fZFzP8CLxSTq/Dn92BM/tX9AnwGNbBeA
	sW7rMqAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Ob3-004R5j-1C; Mon, 19 Dec 2022 22:26:57 +0000
Received: from mailrelay5-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:404::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7Oau-004Qv9-PG
	for barebox@lists.infradead.org; Mon, 19 Dec 2022 22:26:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=UaGW347ys413W05eYmRxsTKYtpq9A5vOpmJnZS0p7yA=;
	b=H5VkcTgmg8nhqoWfnXxxP4HKZJISlM25hws2A4ddLLNp7Ek4sBggTAam1tfD+mARF2lncugJhJDZt
	 EwZ9qbmb/v5KElsWxNnKscygipW/JEoHIlnzzIpo+B4HX9bUpQ5ARYiRgCikEujULLaSe9l9DlaJT1
	 uzYn6mwfWrLZ0MurdttI1DkMMDXesJFghmsLcK6hxom9v7TnBa2OS0wpcqlx1tr8NMSzu7DzEsLTZi
	 AKye9jZd8SYs0AtLbgvLUlVoZcNmdJMAsh6TUNXZerbJOu9Pn6T4481t02jEbqHufsyOsgTISuT3gH
	 xU2sd8TPHd8RBuLHErnXHPCV4NHfTyw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=UaGW347ys413W05eYmRxsTKYtpq9A5vOpmJnZS0p7yA=;
	b=n0HPtVP0VLx2VT//IU1gPaYoVRxPZmbcS1i57PIxQ1RyXDANwjDWmymjgNjAEQx4yNlGTAO95CVgM
	 QCJKF1LCg==
X-HalOne-ID: 337eeaf1-7fec-11ed-b599-7703b0afff57
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay5 (Halon) with ESMTPSA
	id 337eeaf1-7fec-11ed-b599-7703b0afff57;
	Mon, 19 Dec 2022 22:26:38 +0000 (UTC)
Date: Mon, 19 Dec 2022 23:26:37 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de, ore@pengutronix.de
Message-ID: <Y6DlHesIliQCtP3N@ravnborg.org>
References: <20221219181839.2397967-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221219181839.2397967-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_142650_444136_7C23C3B1 
X-CRM114-Status: GOOD (  19.32  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: skov-imx6: fix wrong display-timings
 native-mode binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad.

On Mon, Dec 19, 2022 at 07:18:39PM +0100, Ahmad Fatoum wrote:
> The value of the native-mode property is supposed to be a phandle to
> the entry in question, but instead the full node path was used because
> the <angle brackets> were missing. Fix this. This should not involve any
> functional change as the default mode would've been the first element,
> which is the same element the malformed native-mode now points at.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-skov-imx6.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/dts/imx6qdl-skov-imx6.dtsi b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> index f4610ee1e7ba..156722b95a3c 100644
> --- a/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> +++ b/arch/arm/dts/imx6qdl-skov-imx6.dtsi
> @@ -146,7 +146,7 @@
>  		};
>  
>  		display-timings {
> -			native-mode = &l2rt;
> +			native-mode = <&l2rt>;

The fix is OK, but could you also fix the other similar bugs in the
tree?

A quick grep identified the following that all looks wrong:

arch/arm/dts/imx6q-var-custom.dts:                      native-mode = &claawvga;
arch/arm/dts/imx6qdl-skov-imx6.dtsi:                    native-mode = &l2rt
arch/arm/dts/imx6qdl-skov-imx6.dtsi:                    native-mode = &mi1010ait_1cp1;

I took a quick look, and to my surprise I found no similar bugs in the
kernel.

	Sam


