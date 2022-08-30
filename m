Delivery-date: Tue, 30 Aug 2022 09:41:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvsB-001UI7-A5
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:41:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvs9-0003PN-L0
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:41:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WzEEsgdF0PRs/3Ae4q53jAMl5TtkLv95lN7D0ArFUiM=; b=sOgy15Lyyete3tji6LtNrMGeKM
	Fbxnumv/jXeODIYUz65Ywsi2dyTmCMP+wOhvv9L3czGuDsUzdMEx05ap9+qp5ToLlIYM1FSFjvrhy
	iAQrNaXT2ubEYap0LmvO8YFAUeZrRCds9ZAhMUtQ6mN6m5EeuwaCq+WJsIOwudyLSmzYHDPerViy4
	GT5sqsB+a+rHVJdWJx+0YtnYg7WaeYU4yenrRqGdwYx6AA1NqQfX5U01Z7AHURmbajHbrNYSivexi
	/lbPEEjxBxohBEJqFNBtLXTZeKxSBfs7A4rYNGD7WPm4r/7jZBY3ObbFXXQT9l3wJpnQLGPvvgpxD
	lATmhpQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqd-00EpZk-TG; Tue, 30 Aug 2022 07:39:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvpr-00EpEN-Ru
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1oSvpq-0002jO-1J; Tue, 30 Aug 2022 09:38:58 +0200
Message-ID: <395895f6-0d75-9935-a42d-1c089d5c6272@pengutronix.de>
Date: Tue, 30 Aug 2022 09:38:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, lst@pengutronix.de, ukl@pengutronix.de
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
 <20220830073248.GF24324@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220830073248.GF24324@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003906_354605_4994DDC4 
X-CRM114-Status: GOOD (  24.33  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 00/10] Add new feature controller framework
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 30.08.22 09:32, Sascha Hauer wrote:
> Hi Ahmad,
> 
> On Thu, Aug 18, 2022 at 07:19:45AM +0200, Ahmad Fatoum wrote:
>> The i.MX8MM exists in a Lite variant with no VPUs as well as Solo and
>> Dual variants with one or two cores respectively instead of the default
>> four. For i.MX6, we had a manual fixup taking care of deleting the
>> excess CPUs, but for e.g. the i.MX8MP, we have fuses for the M7, VPUs, CAN,
>> CAN-FD, ISPs, NPU, ... etc. Describing all that in the DT is overly verbose
>> as we need to take care not to rely on specific device node names that
>> should be disabled. There has been an upstream attempt to get a binding
>> for U-Boot to act on:
>>
>>   https://lore.kernel.org/all/20220324042024.26813-1-peng.fan@oss.nxp.com/
>>
>> This was refused by the DT maintainer, because any solution to this
>> problem should also be flexible enough to cover the case of partitioning
>> devices between the secure and normal world.
>>
>> There's a patch series upstream to describe a domain-controller binding
>> that allows a hypervisor to partition devices into domains. With the
>> naming generalized, this fits nicely the use case of gating devices
>> behind specific features:
>>
>> https://lore.kernel.org/all/3ca7cd75-4b62-2380-adb0-646bbeb647a2@pengutronix.de/
>>
>> This series does that. See the first two commit messages for details.
>> We use a barebox, prefix as the naming isn't set in stone, but the intention
>> is to drop the prefix and potentially rename once an upstream binding is
>> approved.
> 
> I am fine with this series. Is this still the way you want to have it
> merged or do you have an update?

No updates, please apply series, except for last two RFC commits.
I'll revise the naming once there is an upstream binding,
but we can do with the barebox, prefixed binding until then.

Cheers,
Ahmad


> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


