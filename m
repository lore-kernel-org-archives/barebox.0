Delivery-date: Mon, 01 Dec 2025 11:29:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1AG-006mrK-2w
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 11:29:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ1AG-0007D7-CK
	for lore@pengutronix.de; Mon, 01 Dec 2025 11:29:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pXIn0TN5KI6UG+Gvb9E5B048Ux3cFJIAg9CAyE7/f9U=; b=j6b6aVGRg3uUhPJcpBPhPeLHwU
	k13FbVc3mj62zPLOu2T3xePhF85aaSaTMp7PZzTgxrwAXqAG7LyndZN4yiyPra+G7AgQFQv0TNgL3
	gDKFaEqmALChcfRS521Q+CUnn9Vv8sQCUY42YLYSXGh0J9Iqwj7uZBwdPaLEewEzfFjJ/BwSVXDo1
	k2wG66cJBCv7qvAxaXhMH4SmHuHoAQV3TOigWoiJVvT99NI1Pk+YFzgmTmPlYON9vyht8hqjavkmE
	9VABrkJPpzJ6eNvsTHAmBbd83qN1Fhhx4ppDIWeAJModNezKXgBUyIqJNe65nmGc3M1IguhA4pPqF
	gaN1TMXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ19s-00000003Kjd-2Yhg;
	Mon, 01 Dec 2025 10:29:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ19o-00000003KjF-3fPH
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 10:29:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ19m-00078H-KM; Mon, 01 Dec 2025 11:29:22 +0100
Message-ID: <8c9282fe-e615-4c5f-884f-435b2726844c@pengutronix.de>
Date: Mon, 1 Dec 2025 11:29:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251201-imx_usb-v2-0-95ec2a0e8694@gocontroll.com>
 <20251201-imx_usb-v2-1-95ec2a0e8694@gocontroll.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251201-imx_usb-v2-1-95ec2a0e8694@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_022924_936678_B502D8AE 
X-CRM114-Status: GOOD (  14.22  )
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
Subject: Re: [PATCH v2 1/3] scripts: imx: Makefile.mingw64: add _GNU_SOURCE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/1/25 11:26 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> imx.c uses asprintf which requires _GNU_SOURCE to be defined, include
> defines.h to define it.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/imx/Makefile.mingw64 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/imx/Makefile.mingw64 b/scripts/imx/Makefile.mingw64
> index e012d833f1..101b39e917 100644
> --- a/scripts/imx/Makefile.mingw64
> +++ b/scripts/imx/Makefile.mingw64
> @@ -30,7 +30,7 @@ $(if $(obj),, \
>  # $(realpath ...) resolves symlinks
>  obj := $(realpath $(obj))
>  
> -CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/
> +CPPFLAGS := -I $(LIBUSB_MINGW)/include/libusb-1.0 -I $(src)/../include/ -I $(src)/../../include/mach/ -include $(src)/../include/defines.h
>  LDFLAGS := -L $(LIBUSB_MINGW)/lib -lusb-1.0 -static
>  
>  OBJECTS := $(addprefix $(obj)/, imx.o imx-usb-loader.o)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



