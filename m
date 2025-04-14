Delivery-date: Mon, 14 Apr 2025 12:59:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HWy-000brN-0U
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 12:59:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4HWx-0005Wk-Jr
	for lore@pengutronix.de; Mon, 14 Apr 2025 12:59:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Bd/JX8/v13StgguLVgxNnIISRnZQ3yy8ito36r/EoG0=; b=S2xcZoF47WCX0UDo23LqGb9L8+
	/vSWXnEGMuVoU29lD2UuL90186sRwPfwXZC0F/SFkNdrxgzs8R5EGFJwU5nvg7uoUU3ft5bfXWY96
	eswIV64Y0ULNN5mAHPz//BMEvyQlZZbc7IrqTAJiYcrtn6x5hOQ5O0uVos29jq8xySSgtiVq0a3i8
	cBGhoso/WTjJLH6M15KNQvmSjHBhn5EBiapobV6gEsxSoGvDBaV3n7qnRuhcQfSzuJEU9fFEvm9fb
	CA4RjIl9o17Qept1u947NK4ssJke32WYS5ytc/l8vYnsJfkctY71wsw5jOqtVT+ceJwa1oCveJ3Dl
	ijchp3yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HWW-00000001dRL-1GpW;
	Mon, 14 Apr 2025 10:58:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4HA3-00000001Z7i-1Gb6
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 10:35:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4HA2-0005fc-00; Mon, 14 Apr 2025 12:35:30 +0200
Message-ID: <7b4cf70a-6acd-4d2d-9eb2-9d4ed83922a0@pengutronix.de>
Date: Mon, 14 Apr 2025 12:35:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250414063152.2736649-1-a.fatoum@pengutronix.de>
 <20250414063152.2736649-13-a.fatoum@pengutronix.de>
 <20250414103121.tak6wi5ze7k3qy5g@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250414103121.tak6wi5ze7k3qy5g@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_033531_344952_AE8EA596 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 12/18] misc: storage-by-uuid: prepare for generalizing to
 different aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 4/14/25 12:31, Marco Felsch wrote:
> On 25-04-14, Ahmad Fatoum wrote:
>> -static struct of_device_id storage_by_uuid_dt_ids[] = {
>> +static int sba_probe(struct device *dev)
>> +{
>> +	int (*init)(struct sba *);
> 
> This does the job but a proper driver_data struct would be the more
> aligned to all other drivers.

IMO if we ever need more than one member in driver_data, it should
probably be a separate driver and not a storage-by-alias.

Cheers,
Ahmad

> 
> Regards,
>   Marco


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



