Delivery-date: Thu, 15 Apr 2021 17:00:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3UB-0007Y5-4t
	for lore@lore.pengutronix.de; Thu, 15 Apr 2021 17:00:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lX3UA-0004mm-Aw
	for lore@pengutronix.de; Thu, 15 Apr 2021 17:00:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TY/0xDb9QUwDvfyYHf6b7EXvhbOG11EuF3cmUYOSIQg=; b=qLL9eCcfZksMLPXa5+4OpABNg
	Zp/vZWOA+xOG8ojDA+/qf/SMUPmV4qTv5uXeWopTUPpmJz4c3IdjroSv8BEDInpZhyPehHZIw5r/a
	Tavy0YULdlUgQW/OWU6miH7avqI7BAEy1Mvpa4/jHhGO+/Veri57TYvquKdIAffVhiP0Kong7YPIu
	Pbru/YwgSbgt1JOCp8lOKXlY4f4NW/NUz+4l/G0hDvRJv7sqfgyb5fkpYZepusjjLvbQpoJGGUKcz
	OJKsXnt2MIR7CtampbQyoqDsQ4MmvldLfwzs2QA0axtHl3pOxI/65Q7eTQr9FrST4W+bsLDbyFcev
	YQa26hcvA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lX3T1-00GWoq-Om; Thu, 15 Apr 2021 14:59:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Sx-00GWoX-CM
 for barebox@desiato.infradead.org; Thu, 15 Apr 2021 14:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:To:From:Subject:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=XEpnWhhuCsvoiiS2D5wgGnXAFUbFfl/Er2ZaC73Ti3w=; b=0ZYPgsh34gk6bWNzRQq4PuH5ho
 j+MYfQZC6vQUqOFV1jJzs8zcTt0oij2mmrlvREC4V6x0Na2cXBe/1xHikrhHHTWU3JB/qsQq6ubfe
 +2/l6XG3/xj5P1NN5hlU4masUilaiG2/OYZ3h7dzvH/9ySZsHXXrUUAY/YlhQVORZjdUUqPKtUcFM
 G4kOsZw05lgzfOl6mdc/Jhm/lFAlivvqq+CKqCJDko1otus1atUy2q0S1l9YrXUI4GeP3k+8qi1cH
 AjXCJ8BPUIH58j3iVOt3rLA53SK0pEWSLT24moZ26Ee+/tEch/ahidRmG6OyCS8R7veQooPyOflej
 4OsNa6Bw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lX3Su-008gA2-Ix
 for barebox@lists.infradead.org; Thu, 15 Apr 2021 14:59:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1lX3Ss-0004Yg-O8; Thu, 15 Apr 2021 16:59:30 +0200
Message-ID: <ce2af9cf5f8b10a9595a7d5beec2497df0fdb172.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List
 <barebox@lists.infradead.org>
Date: Thu, 15 Apr 2021 16:59:30 +0200
In-Reply-To: <20210415140313.29161-1-s.hauer@pengutronix.de>
References: <20210415131617.3582-2-s.hauer@pengutronix.de>
 <20210415140313.29161-1-s.hauer@pengutronix.de>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_075932_652332_DFB66CF8 
X-CRM114-Status: GOOD (  16.52  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: sabresd: Add support for i.MX6QP board
 variant
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Donnerstag, dem 15.04.2021 um 16:03 +0200 schrieb Sascha Hauer:
> The SabreSD comes with different SoC variants. This patch adds support
> for the i.MX6QP based board. the DCD data has been taken from U-Boot
> 2021.04
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
> 
[...]
> new file mode 100644
> index 0000000000..52cc8aa73b
> --- /dev/null
> +++ b/arch/arm/dts/imx6qp-sabresd.dts
> @@ -0,0 +1,42 @@
> +/*
> + * Copyright 2012 Freescale Semiconductor, Inc.
> + * Copyright 2011 Linaro Ltd.
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include <arm/imx6qp-sabresd.dts>
> +
> +/ {
> +	model = "Freescale i.MX6 Quad SABRE Smart Device Board";
> +	compatible = "fsl,imx6q-sabresd", "fsl,imx6q";

I'm not sure I like this overwriting of the compatible string. AFAICS
we don't have any instances for "fsl,imx6qp" compatible checks in
either Barebox or Linux kernel, so it shouldn't cause any immediate
damage, but this still feels wrong.

Regards,
Lucas

> +
> +	chosen {
> +		stdout-path = &uart1;
> +
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &environment_usdhc3;
> +		};
> +	};
> +};
> +
> +&usdhc3 {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	partition@0 {
> +		label = "barebox";
> +		reg = <0x0 0xe0000>;
> +	};
> +
> +	environment_usdhc3: partition@e0000 {
> +		label = "barebox-environment";
> +		reg = <0xe0000 0x20000>;
> +	};
> +};



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

