Delivery-date: Wed, 21 Jan 2026 08:53:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viT1m-003gYn-2d
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 08:53:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viT1l-0005yP-PR
	for lore@pengutronix.de; Wed, 21 Jan 2026 08:53:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L59Ey2jV+JC5+QzS7oW3q+fSBo0V5YAFZEqT/5qLqVA=; b=S+OnVKATrqcN0x+4AZJ9YkpJy/
	eb8CWC7tLGdtF/TsYebUBI4jA/1XkQrOfbP6caNowWGOMgUgGZpyZoBd9ZZXpq5C710WBviu9vspq
	dYL9XdC7w8Wc19+7q7+zzZRh9tyVDp5Abk120pKgRmVZYjrd+FTAXOutalRW0BkMEu+EIhfrBhQZW
	JWWH7wr9KLszpR4sWANztsL11K2zoyw6rXptObbB9a6HgmhNvoMJDqsyJfWu9UShm0gLZLuQDnh0s
	h9ixZKsX5QrBZY19lO26tkxAb/+fXmLMMAqAVCb3u0k7p2KqPlvVYCR38CoXi/FqRoKHTG4EFgUQN
	LzDCCZgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT17-000000052Z2-3X6L;
	Wed, 21 Jan 2026 07:52:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT17-000000052YW-1zI0
	for barebox@bombadil.infradead.org;
	Wed, 21 Jan 2026 07:52:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=L59Ey2jV+JC5+QzS7oW3q+fSBo0V5YAFZEqT/5qLqVA=; b=FqyFsddUfbCGGaFUI1z2dFzMiL
	PdgeVgGxKCz+4TP7GMaP93Q3L8PSm4QGe7FYptTcApOrkc3WwZxS+vuR7TcMGZM2X0vg3IeDmwyZQ
	40fdVZ9T0vnkSln/kaabRtpm2UkQsIS331f6dgGbOdHQE9ei6Xvuot3oagbLz13rGsK+WUCXr7HO8
	80XN5g57XfL0fOJBLPBDBwJd2pBZG6Vk7Lhcan0Pjsz8lasPzdVy7KjSi659f5qiocR/DRlc0pFWo
	Zpn+Msk72a0/2wACg2Jiv8XtSDP7HK2y8vGFnVci0FtruQCGUV8Pep5mTv9JisAMFlkfnJZUukYdv
	NqO4zEJg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viT14-0000000FYNQ-1L7p
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 07:52:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viT12-0005o3-O7; Wed, 21 Jan 2026 08:52:36 +0100
Message-ID: <c31a90f3-7a3a-4f30-80c8-64bfbf0bd641@pengutronix.de>
Date: Wed, 21 Jan 2026 08:52:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
 <20260120181333.3375979-2-a.fatoum@pengutronix.de>
 <20260121000711.dyjo4pd56c6frd4x@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260121000711.dyjo4pd56c6frd4x@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_075238_534568_CCAE2A3A 
X-CRM114-Status: GOOD (  24.89  )
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
Subject: Re: [PATCH 2/2] arm: dts: rk356x: rock3a: disable pcie3x2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Marco,

On 1/21/26 01:07, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 26-01-20, Ahmad Fatoum wrote:
>> The board hangs occasionally on PCI probe after:
>>
>>   phy7: lane number 0, val 1
>>
>> On other boots, it continues to:
>>
>>   rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up
>>
>> In both cases, the hang affects the second PCIe host controller
>> to probe and the first probe never hangs:
>>
>>   rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up
>>
>> This hang happens on the very first read access to the PCI controller
>> at register PCIE_ATU_VIEWPORT. Reading Linux code, the first access
>> seems to be to PCIE_VERSION_NUMBER (0x8F8), but accessing that in
>> barebox equally hangs from time to time.
>>
>> My board doesn't have any PCIe devices connected and this hang
>> doesn't happen in Linux and doesn't happen on the QNAP
>> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
>> probed normally.
>>
>> Disable the device in barebox, so the board is usable with
>> rockchip_v8_defconfig, which enables the PCI driver.
>> barebox,status is used, so the Linux device tree is not affected.
> 
> The barebox internal device-tree is passed to Linux? Else we just can
> make use of the "normal" status field since it would be not propagated
> to Linux as well.

With barebox as EFI loader, we always install the barebox DT in a configuration
table and leaves it to grub or whatever to decide whether it wants to use it or
if it wants to use another DT it finds itself.

The support for the Android fastboot's protocol boot command also doesn't pass
a DT and expects the bootloader to pass its.

Cheers,
Ahmad
> 
> Regards,
>   Marco
> 
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  arch/arm/dts/rk3568-rock-3a.dts | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
>> index bcbfab14a580..b7258d7e61b3 100644
>> --- a/arch/arm/dts/rk3568-rock-3a.dts
>> +++ b/arch/arm/dts/rk3568-rock-3a.dts
>> @@ -55,3 +55,7 @@ environment_sd: partition@408000 {
>>  		};
>>  	};
>>  };
>> +
>> +&pcie3x2 {
>> +	barebox,status = "disabled";
>> +};
>> -- 
>> 2.47.3
>>
>>
>>
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


