Delivery-date: Mon, 21 Oct 2024 10:05:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nQA-006zh0-1j
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 10:05:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2nQ9-0003RK-V6
	for lore@pengutronix.de; Mon, 21 Oct 2024 10:05:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=njcFOzVAAw3uJ7BkqBMHBP9rjyvu1hHJAm2b6CxmoHk=; b=atMe0eNd8MmJ+KACpUU7gVrnMX
	htPzJrJ9acvPNhV+yV+sp1sIQ0Js+aYD4ZXSv27VJesemwepDbdOZAZptNkPkFToJgtjG5VsRd2QN
	fdT6b87Lo15jiHHdlofhnKwrPvbZGPTAVaWsta3+RUaegVB7dX/WqVVnAui1g20ZsfBMfCCBNKMox
	4w+CQcvQq+br3p71wzfmAd/gMHYACUKqVNikX1rco3u5bb/1u44bvZn6qC9a9FP981BirahHWpq0L
	zaYBm9x81jJwY//ZhARroLA5hyK5DmCkpP/MeFJt24n/XyYBxP8VuTkSfQPk1PRnG+PPJLMmf3piT
	OjpzmBpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nPe-00000006U4d-22Xk;
	Mon, 21 Oct 2024 08:05:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nNS-00000006Tny-1miJ
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 08:02:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2nNR-0002vq-2c; Mon, 21 Oct 2024 10:02:57 +0200
Message-ID: <499a5527-fc61-457c-a07f-b863d04b907a@pengutronix.de>
Date: Mon, 21 Oct 2024 10:02:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241021-arm-layerscape-tfa-v1-0-0980697b6f66@pengutronix.de>
 <20241021-arm-layerscape-tfa-v1-9-0980697b6f66@pengutronix.de>
 <3435d9d4-2a71-48b6-879a-1dbf043ff6d7@pengutronix.de>
 <ZxYJga-58XM-f4uy@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZxYJga-58XM-f4uy@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_010258_497448_804F76D8 
X-CRM114-Status: GOOD (  19.53  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: Layerscape: LS1046a: add PSCI node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 21.10.24 09:57, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Mon, Oct 21, 2024 at 09:33:23AM +0200, Ahmad Fatoum wrote:
>> Hello Sascha,
>>
>> On 21.10.24 09:21, Sascha Hauer wrote:
>>> Unlike other SoCs the LS1046a upstream dtsi files do not have a PSCI
>>> node. Add one for barebox and Linux to find the PSCI support.
>>>
>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> I am wondering how powering CPUs on and off worked before?
>> I see no enable-method = "spin-table" in the kernel DT for the SoC.
> 
> The PPA is PSCI compatible. The barebox PPA adapter called
> of_psci_fixup() to register a PSCI node.

Ah, I see.

>> Anyhow, barebox should probably fixup enable-method = "psci" into each
>> CPU in /cpus in the kernel DT.
> 
> This is already done in of_psci_fixup().
> 
> The PSCI node in the barebox dts is only needed to probe the psci-client
> driver which in turn creates/fixups the PSCI node for the kernel. We
> already know that we started the TF-A. I thought about using this
> knowledge to register the PSCI client driver without explicitly creating
> a device node for it, but on the other hand there isn't too much gain in
> doing so, so I just created a node for now.

Sounds perfectly sensible.

Thanks for the clarification,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


