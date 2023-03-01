Delivery-date: Wed, 01 Mar 2023 18:43:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXQUc-005oiS-QV
	for lore@lore.pengutronix.de; Wed, 01 Mar 2023 18:43:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXQUc-0004Iq-PM
	for lore@pengutronix.de; Wed, 01 Mar 2023 18:43:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sFtlx4ZBzOCg9yZS2ixZLAX52kMiuN38Ms1+dl6CBUQ=; b=kTgn5PkcUGGM73zBoaoGgCwJJ/
	AKbxYwwA/dxtzS8iukMXiy1Kgixu+mbfKs3NUwaducGzj69cL2Xqc9Ec+tkNI1rXelrLh/0B6USAx
	hHOYaxDlRo19+v1VT4ZWBOIoHG9ugCxWLET63y5DKCj4H8qDZilLfVwG+Iy0yRIlWZmm59SYIobKV
	94mCLlMjdz1muqztdq7kSJPzOXT7xsEN35gm2r14BQgAJLen30yarUTslYMKvAwKYi64jDxm8BNMz
	ul4HPWR2/K1CiuyRG05Fz9Caom7hLr/Rodi07flW4nnOIbQYrj2OKHxBsHikaxLdAFdGh8/gqda9E
	uHE7XmjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXQTX-00Gzuy-Mj; Wed, 01 Mar 2023 17:42:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXQTS-00GzuI-QQ
	for barebox@lists.infradead.org; Wed, 01 Mar 2023 17:42:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pXQTR-0004Dl-I1; Wed, 01 Mar 2023 18:42:41 +0100
Message-ID: <dfcc7a56-e062-2527-02d9-1b27e1d9afa9@pengutronix.de>
Date: Wed, 1 Mar 2023 18:42:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
 <20230228143031.1718565-10-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230228143031.1718565-10-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230301_094242_906102_A1643760 
X-CRM114-Status: GOOD (  14.31  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: pxa: Move plat/ include files to mach/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.02.23 15:30, Sascha Hauer wrote:

> diff --git a/arch/arm/mach-pxa/include/mach/mfp.h b/arch/arm/mach-pxa/include/mach/mfp.h
> index 271e249ae3..fd8c810552 100644
> --- a/arch/arm/mach-pxa/include/mach/mfp.h
> +++ b/arch/arm/mach-pxa/include/mach/mfp.h
> @@ -1,7 +1,7 @@
>  /*
> - * arch/arm/mach-pxa/include/mach/mfp.h
> + * arch/arm/plat-pxa/include/plat/mfp.h

Not that it matters much, but could you revert
this line change?

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



