Delivery-date: Tue, 28 Oct 2025 10:04:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDfd7-00CdOO-0z
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 10:04:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDfd6-0000dv-Pn
	for lore@pengutronix.de; Tue, 28 Oct 2025 10:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LMbGaoJwWm7WhmasV2DZpSwnechLPWMSubonWBlatG4=; b=QzsMFjXwwA0CI0uewtYOSbxOM6
	bYUy1coH6iTIUdXlO86h++lnjU5mXCiO9957Zmw4Z8PnPT3WKOxbJb5hoN3KzN54+JfhickECKcrQ
	mQsanADPWmvB5MsdlsPJCxczFfj2ulsxrAaSkZOhxZbNe+sFvEVt38V7AYuCdpbVEHNKm+FFnmJ9y
	XmsXuA2nvdu3jbP6tsR64OgJ5cokh+yjPhQLx0gH4NlDxT1WvytWE9o65t9j2p3v3HXrrIk3TYAiq
	HudGRqLbi79BSWzBu1E8O2nMm86Q+4+OXbGurCAKQ0tCzppgGoHx04N0oQ9FUn8VAEc94GUT1xSxc
	2FJqSndQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfcg-0000000Fbds-1JmM;
	Tue, 28 Oct 2025 09:04:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDfce-0000000Fbd5-0rLq
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 09:04:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDfcc-0000YZ-GV; Tue, 28 Oct 2025 10:04:06 +0100
Message-ID: <10308082-4d36-488f-b87c-9357e0e7125d@pengutronix.de>
Date: Tue, 28 Oct 2025 10:04:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
References: <20251027192938.2586566-1-a.fatoum@barebox.org>
 <20251027192938.2586566-5-a.fatoum@barebox.org>
 <aQCFYqNbaavn3pYU@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <aQCFYqNbaavn3pYU@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_020408_280409_C036F873 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 5/5] pmdomain: add Rockchip power domain support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/28/25 9:57 AM, Sascha Hauer wrote:
> On Mon, Oct 27, 2025 at 08:28:20PM +0100, Ahmad Fatoum wrote:
>> +static int rockchip_pm_add_subdomain(struct rockchip_pmu *pmu,
>> +				     struct device_node *parent)
>> +{
>> +	struct device_node *np;
>> +
>> +	for_each_child_of_node(parent, np)
>> +		return -ENOSYS;
>> +
> 
> I gave it a quick try on RK3588 and driver probe fails here. RK3588 has
> several subdomains in its power controller.

I need it on rk3566 though, otherwise the probe hangs. Should I drop the
rk358x compatibles?

Thanks,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



