Delivery-date: Wed, 19 Mar 2025 12:04:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turDO-001QU5-1A
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 12:04:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1turDN-0005rg-88
	for lore@pengutronix.de; Wed, 19 Mar 2025 12:04:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HIi10dc7r2FFDVUh31I0dSe82R+f95Z5EZDZ66nnZEw=; b=U/uHBauwRT+h4NJ7JtiHjfyXiM
	uXEARWb13eHRY6AslfPOe9O6Ol0LAji1pg3PD+n/5D52T915mcjYfF3kODS3HQd9SO4f9wxdSj+AO
	ds6RZhcY3I9YBoZ1pVq/uK4WiTvVEjK8sJQOVcTVox1aa9Tl0U4jNOFbK8neWYmx0Y5ZDBefNrKgy
	Fk52gCAA3BHyJw5zd/yN+HKH/kZc8wbWyC/a+RERU6GiWW6raduIZ5tVwoJYboNdj0hFv/lFFijWE
	lsnT/Hd86By8NAPAF1JVHSU04ElTnYBTBc4auspDpf2P/dS9yjuumnKRvoihGYN8qS5teLO3sUjBK
	99aTTEPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1turCx-00000008jug-0eml;
	Wed, 19 Mar 2025 11:03:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1turCu-00000008jsb-2GIt
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 11:03:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1turCt-0005lQ-BF; Wed, 19 Mar 2025 12:03:31 +0100
Message-ID: <92d6e357-4620-4c3e-ac28-48804d74d192@pengutronix.de>
Date: Wed, 19 Mar 2025 12:03:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20250319102228.2401563-1-s.hauer@pengutronix.de>
 <50522640-eedf-4c34-81ad-9238aa6d39b9@pengutronix.de>
 <Z9qkCsnzeOjtnJkh@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z9qkCsnzeOjtnJkh@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_040332_581011_16C4D264 
X-CRM114-Status: GOOD (  11.31  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 3/19/25 12:01, Sascha Hauer wrote:
> On Wed, Mar 19, 2025 at 11:55:53AM +0100, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 3/19/25 11:22, Sascha Hauer wrote:
>>> Depending on the configuration Linux on OMAP SoCs either needs ttyO or
>>> ttyS as console name. We used to pass ttyO, but c1c0d18973
>>> ("serial: omap: Use ttyS as Linux console name") recently changed this
>>> to ttyS which breaks setups that used to work earlier. Make the
>>> name configurable to allow for setups requiring ttyS and use ttyO
>>> as default to keep existing setups working.
>>>
>>> Note that with ti,am4372-uart we used to pass ttyO as well, but this
>>> specific compatible is only supported by the 8250 based driver which
>>> needs ttyS as console name. 
>>
>> This reads as if 8250_omap supports only ttyS, but it has logic to
>> support ttyO as well.
> 
> s/needs/prefers/ maybe

Ye, further below there is also 'will also have no effect', which is not
true as it hides an ugly error message.

Can you reword these two parts and make the option default ARCH_K3?

Thanks,
Ahmad

> 
> Sascha
> 



