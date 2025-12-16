Delivery-date: Tue, 16 Dec 2025 11:51:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSeG-00C55g-1Y
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 11:51:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSeF-0007TT-TU
	for lore@pengutronix.de; Tue, 16 Dec 2025 11:51:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0N7EOcCDEjCXdjx2cAU8w9rYhtv7E54ufvbKaAeuCoE=; b=3mUQlHV6FLGts0JmvmY54oB6LC
	uhMVKTua4wKLf4IrGpXWpoSO9jfsw4Q0QcLXijMVwKfudSKR6K7k7XVYj6BwO57sFI0wUc0CUvC68
	jZf5gLjYIKYXmbIh9TsNR5H96A5mAKUFeDWV6qCGiBVLOfSN8EL9MTN+WdZr0Uu3OOlaoTX4CLL4d
	AIe2GwcDXP7HTMTQeEXPkYmUDh4r+LBMJcuAFdxws1LC+3MAcdBSwrcnXqbUMyFYmX+3au2t1+Fh3
	ecpyDUBPG21winwt6s7qxAkNIEej7IvDX2OmYIOtqAjW9SDSDBP/pFvtmRCv5TPAAmlGQLyrvx09M
	8o4Sc2JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSdn-0000000542X-1Pur;
	Tue, 16 Dec 2025 10:50:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSdj-00000005429-25GR
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:50:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSdh-0007OE-KU; Tue, 16 Dec 2025 11:50:45 +0100
Message-ID: <0bbe5f5b-bf29-4202-bf17-1817745fc82a@pengutronix.de>
Date: Tue, 16 Dec 2025 11:50:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251216-genpd_fix-v2-1-1dddd24a61ef@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_025047_616395_BE9F0EF2 
X-CRM114-Status: GOOD (  20.83  )
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
Subject: Re: [PATCH v2] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/16/25 11:47 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> After adding the imx8m-blk-ctrl driver errors started appearing about
> the genpd device already being registered.
> 
> incorperate some extra device details in the device name so this
> possible collision goes away.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

@Sascha, I think this is a candidate for master as this can affect other
setups as well, when there are multiple power domain drivers (e.g. with
SCMI)

Thanks,
Ahmad

> ---
> Changes in v2:
> - Change virt_dev->id into DEVICE_ID_SINGLE to drop the trailing index
>   number.
> - Link to v1: https://lore.kernel.org/r/20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com
> ---
> 
> It wasn't just errors, it started crashing but that is a seperate issue.
> It at least loads normally with this change
> ---
>  drivers/base/power.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/base/power.c b/drivers/base/power.c
> index c71389422a..cffd043627 100644
> --- a/drivers/base/power.c
> +++ b/drivers/base/power.c
> @@ -506,11 +506,11 @@ struct device *genpd_dev_pm_attach_by_id(struct device *dev,
>  	if (!virt_dev)
>  		return ERR_PTR(-ENOMEM);
>  
> -	dev_set_name(virt_dev, "genpd");
> +	dev_set_name(virt_dev, "genpd:%u:%s", index, dev_name(dev));
>  	virt_dev->bus = &genpd_bus_type;
>  	virt_dev->parent = dev;
>  	virt_dev->of_node = dev->of_node;
> -	virt_dev->id = index;
> +	virt_dev->id = DEVICE_ID_SINGLE;
>  
>  	ret = device_register(virt_dev);
>  	if (ret) {
> 
> ---
> base-commit: 63898c48611dfe51409ff1f4e1c30de4b2737c48
> change-id: 20251216-genpd_fix-0f1ed7d8cbb2
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



