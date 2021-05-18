Delivery-date: Tue, 18 May 2021 13:35:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy09-00047b-P8
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:35:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liy08-0007ka-Vv
	for lore@pengutronix.de; Tue, 18 May 2021 13:35:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=49dHlBkGPUf6+pFZsG2JQyHOPkor9U/DQqrQx+JBoHc=; b=U16GjHRO/SuSv1unRXTnLhZKD
	TfL++HbURVeCLMyPGUBoNAilkWguF0hD0qTknRhGf//CAjBcuFNFVBRaeDYSnBPXqAMGap4ny8eLO
	btrfg+mKLiodmXRfOvRRhxqF1FQDsMe2vG5EvDrmfEa3C8Skn+tw8X9AZDYXqHP0+WspmPVJyb3TO
	rP2OM1SNzh38mqq8K1n7aKKRr2migTJ+dSXmJTUv2TJ15jalB+d3I9mO2hZsY6IHSqGkqSovzRWDO
	25tDgL0hc9oEh379nlXHDBMdLj9dzH5nPEkmj/lLqPBpbenWbXTxUTXBRvd+aJ/CCxksOQQVvMoKv
	yQdf3jssw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lixz6-000Zow-7I; Tue, 18 May 2021 11:34:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lixyt-000Znv-Oq
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=Y1huTX/l5xN/wG2HImoMx13ZBG3zr+V0xltjUtIsK8g=; b=ngXuVJQULQPk6iqiyDeJgvi1Pn
 9L16j23M+3hkTBufs05Ms2SR+ugQZEjavDoeUdFSKf0XB7y8hW85meIH0tmtNcdg5bDsQuFFVOpxx
 dA7Pp9F4lnT1vCkQ4Wsx1FMmql8/763TSHycn9Av2gEaprVKuvtZI6WQ71qom7GcXCSePVstQa715
 qD52wkc1EUr5duui72E5/NJ4P3O/pvuaVFCJZP7c6QrDIhzhKscC2xHmX+qywiO43E67bvCzRGvTd
 uddkeezFMhJYE5rnYFCOVpBrdM1r8HpgU4fKuprvn9wQFguCuraOcB3m2nW9ynWG5enw5RtI49kQJ
 MYzab0pQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lixyq-00Ebbb-V1
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:33:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lixyp-0007bv-DT; Tue, 18 May 2021 13:33:43 +0200
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
References: <20210518105759.4604-1-h.assmann@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <9fd00674-7953-f510-f2e5-fe076ef00b9b@pengutronix.de>
Date: Tue, 18 May 2021 13:33:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210518105759.4604-1-h.assmann@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_043345_034283_D9EA1154 
X-CRM114-Status: GOOD (  12.51  )
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
Subject: Re: [PATCH v3] ARM: webasto-ccbv2: Add variant with 512MB RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


On 18.05.21 12:57, Holger Assmann wrote:
> -$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2, imx6ul-webasto-ccbv2)
> +$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-256, imx6ul-webasto-ccbv2-256m)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_WEBASTO_CCBV2, start_imx6ul_ccbv2, webasto-ccbv2/flash-header-imx6ul-webasto-ccbv2-512, imx6ul-webasto-ccbv2-512m)

I think this is the first board that uses the exact same entry point, but different
*.imxcfg. I built the patch to see if this actually does what it should and it
doesn't seem to be the case: both images/barebox-imx6ul-webasto-ccbv2-256m.img
and images/barebox-imx6ul-webasto-ccbv2-512m.img are identical..

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

