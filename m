Delivery-date: Fri, 15 Dec 2023 13:15:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE76M-003bYl-0E
	for lore@lore.pengutronix.de;
	Fri, 15 Dec 2023 13:15:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rE76M-0002wz-B0
	for lore@pengutronix.de; Fri, 15 Dec 2023 13:15:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q3fa1ASmepiALA6kZl5yT9tcvYCBs6+p94F06XkzGdc=; b=bRL1HwDzkxi6RYaDbX3lti+50b
	QJV8CXrlF/mlYg9nuLolQbWJpKj1xinBLNUGfCm/z4ZR+ej1TFGrbz2kWA4URsZtlNoM3AX3DHCff
	wzughFZ80gIPcG4hqDSIIgoYLFuIAEKzVwMHgaJB4ohnEHapcdcIo8mSlCat3Qgag2kqQkaFz34XH
	yTJKetUrB3ka75TSNWYRpM8G1eOuJdxaALJXolUVwnp0MnGrviEQ/NRuVGB+aT5yAL8vKaURgzP3p
	ncI4PT86SUcaDo0DlomXaqUM9YpcNEEPjOTt/4zpKXnQzoTeJSUTO3VzTpBWKIBhBKk9VDY6pzJjJ
	uAaB1L6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE75P-003BmD-0N;
	Fri, 15 Dec 2023 12:14:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE75L-003BlO-1W
	for barebox@lists.infradead.org;
	Fri, 15 Dec 2023 12:14:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rE75K-0002iR-2m; Fri, 15 Dec 2023 13:14:30 +0100
Message-ID: <b87ec729-467d-44c0-841a-82f0d339fb68@pengutronix.de>
Date: Fri, 15 Dec 2023 13:14:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20231215-doc-fit-images-for-chainloading-v1-0-9b704facdc3b@pengutronix.de>
 <20231215-doc-fit-images-for-chainloading-v1-1-9b704facdc3b@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231215-doc-fit-images-for-chainloading-v1-1-9b704facdc3b@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_041431_504233_70D03B9E 
X-CRM114-Status: GOOD (  16.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] doc: user: barebox: bootz instead of bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 15.12.23 13:11, Stefan Kerkmann wrote:
> barebox-dt-2nd.img is in the `zImage` format, therefore use the proper
> command for booting on 32-bit platforms.

S-o-b missing.

With this address:

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/barebox.rst | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index 80f0f96a98..f4e600bde0 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -212,7 +212,7 @@ like a Linux kernel that is passed an external device tree. For example:
>  
>    U-Boot: tftp $kernel_addr barebox-dt-2nd.img
>    U-Boot: tftp $fdt_addr my-board.dtb
> -  U-Boot: bootm $kernel_addr - $fdt_addr # On 32-bit ARM
> +  U-Boot: bootz $kernel_addr - $fdt_addr # On 32-bit ARM
>    U-Boot: booti $kernel_addr - $fdt_addr # for other platforms
>  
>  For non-DT enabled-bootloaders or other architectures, often the normal barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



