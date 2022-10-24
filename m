Delivery-date: Mon, 24 Oct 2022 14:25:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwVx-000gXU-Kq
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 14:25:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omwVw-0001u0-ER
	for lore@pengutronix.de; Mon, 24 Oct 2022 14:25:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NwMHNYxr2FeopuulFNbFu/gpII7ym/qWSSfsUD9IsqI=; b=ypSuh6mDMSw+8ODPsG1NdRCVfx
	6jB+EDTVNphQPI/bJ1KahbADkQmfFqAbRBFs5uYrCQrwuxqTnypqMYM6W8gYPMzMcEpWAxuMLGkVs
	Rpkt0aOEAladbSxBvC5Jjz7Jp8DWgeBtNyrk/y7JQ4+iEQVb4oakHjIy7CmgE5dmkUvEUMToXJPNg
	c8ROeSP5eSflvNkEbELtY8bmfyLZMsLfdld1oiJrRiCjz7zJk5Eak52aQi4ftl6KcnjV+U1jtglP9
	O577VEx1qbywJqgp3irawPs5rJbnj1xJyR2zYSsKPkQKf76SpeLUVcQJishseuQqgOCRr/IcSIVIW
	IPF6k5cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwUj-001Ma5-NP; Mon, 24 Oct 2022 12:23:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omwUa-001MWs-Gp
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 12:23:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1omwUZ-0001WH-7X; Mon, 24 Oct 2022 14:23:43 +0200
Message-ID: <1b42c934-4fc0-f342-b829-660927167bee@pengutronix.de>
Date: Mon, 24 Oct 2022 14:23:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Holger Assmann <h.assmann@pengutronix.de>, barebox@lists.infradead.org
Cc: =?UTF-8?Q?Leonard_G=c3=b6hrs?= <l.goehrs@pengutronix.de>
References: <20221024120952.2162839-1-h.assmann@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221024120952.2162839-1-h.assmann@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_052344_594248_9ABA2DDA 
X-CRM114-Status: GOOD (  17.57  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX8MP: add TQ mba8mpxl board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 24.10.22 14:09, Holger Assmann wrote:
> This commit adds support for the TQ MBa8MPxL with TQMa8MPxL module with
> i.MX8M Plus Quad/Dual SoC. This very combination results in configuration
> symbol "MACH_TQ_MBA8MPXL". A possible variant based on i.MX8M Plus Dual
> would be supported transparently, once barebox deleted the CPU nodes
> when it detects that they were fused away. It already does so for
> i.MX8MM and i.MX8MN.
> 
> We use the respective Linux upstream device trees and their implications
> regarding hardware support.
> 
> Known to be unsupported for now is the second Ethernet interface around
> the eqos dwmac IP. This has to be resolved by porting over the fitting
> wrapper from Linux.
> 
> Signed-off-by: Leonard Göhrs <l.goehrs@pengutronix.de>
> Signed-off-by: Holger Assmann <h.assmann@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +/ {
> +	chosen {
> +		environment-sd {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc2, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +		environment-emmc {
> +			compatible = "barebox,environment";
> +			device-path = &usdhc3, "partname:barebox-environment";
> +			status = "disabled";
> +		};
> +	};
> +};

Sascha recently removed many instances of the partname: binding.
I just sent a fixup for your commit doing the same. If there are
no objections to v1, Sascha can squash patches at apply time,
otherwise, please fold it into your patch for v2.

Cheers,
Ahmad


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


