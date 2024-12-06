Delivery-date: Fri, 06 Dec 2024 11:51:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVw8-004i4U-09
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 11:51:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJVw7-0005uU-R8
	for lore@pengutronix.de; Fri, 06 Dec 2024 11:51:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:CC:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V0ATVLxAwL3Q7ZA1rnzrNFoT8PRJxtmErmUNHoBIPzo=; b=S+jFELTnsNb9MZCXAOpNTFQQw9
	h5neUAqu+838+Bz6Gwv/INGifEp3TYkcSQWKHSLHui1sij0JAko98ayRq5YW6Tv8wtYJd2cXrmsLG
	8+fTnNLDLk+xtOA2kb6Mffz+XA44+w44dBG/xoV4hm6SgNOVBcS4jBf5xMfa+Gsn9sgXB1cWv2vWs
	Zg5SLVQq8tDRY3fuWUTBm6LsN8EFHxcjsKJlZhpz0Avpj4Tv1k2O09D0SeOtvv0ofh4uJeZGv11Kp
	L7gDpmDrD41T79th6j/tptiTqNnq4OdCJ2XrQMCS/eTvSAoZEW1RIeSvxkNVo4B577KlPj5nRr4DL
	r3DUOq8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVva-00000001Md3-2zPW;
	Fri, 06 Dec 2024 10:51:18 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJVoz-00000001LS0-0vf6
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 10:44:30 +0000
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B679KBO002443;
	Fri, 6 Dec 2024 11:44:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	V0ATVLxAwL3Q7ZA1rnzrNFoT8PRJxtmErmUNHoBIPzo=; b=P32HqXmAgTYBVJLh
	0gjfN3691OwMW0nZ6+Yf0YCEADXGJlWbyZWNU7wAzocFS7Mgj4LBPJkhHzio/mAv
	7YKsQpnSJqdSr19sXhYFeoJptNRC1irzATMs9xK7QS2wwQLIgfakhp8WLA5hrOSU
	3u+ZK9t0CEH1l3MaObtrIb5lXcE/EeXAec9B3Qzx2fdYICtG61zOWFtxB5xAxP9t
	aNwMNgJlR9ZvkRkWuPzP9a0Me9+0wqWmgNo5EkVx3MDnE66TL/NqrOJKQpUg5M60
	aQo/ZVHWZSsrfsJSBb8XYURc6xgolXB4JC2q8cUDGj/mL4TCWJ6plNUAA2s8NKqZ
	Mx35Sg==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 43bby7cukm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 06 Dec 2024 11:44:24 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id AF93640054;
	Fri,  6 Dec 2024 11:43:09 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node2.st.com [10.75.129.70])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D5D4326B63A;
	Fri,  6 Dec 2024 11:42:00 +0100 (CET)
Received: from [10.48.87.77] (10.48.87.77) by SHFDAG1NODE2.st.com
 (10.75.129.70) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Fri, 6 Dec
 2024 11:42:00 +0100
Message-ID: <9811a705-447a-4527-b3ca-be9d21059bf4@foss.st.com>
Date: Fri, 6 Dec 2024 11:41:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
        "linux-stm32@st-md-mailman.stormreply.com"
	<linux-stm32@st-md-mailman.stormreply.com>,
        Alexandre Torgue
	<alexandre.torgue@st.com>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
        "Oleksij
 Rempel" <ore@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
References: <e81f5b48-02e9-423c-984e-b7dfa7753f27@pengutronix.de>
Content-Language: en-US
From: Yann Gautier <yann.gautier@foss.st.com>
In-Reply-To: <e81f5b48-02e9-423c-984e-b7dfa7753f27@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.48.87.77]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE2.st.com
 (10.75.129.70)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_024429_783311_7E83EB07 
X-CRM114-Status: GOOD (  18.01  )
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
X-Spam-Status: No, score=-8.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [Linux-stm32] AXI ID 0x5c8 on STM32MP13
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 12/5/24 14:40, Ahmad Fatoum wrote:
> Hello,
> 
> After a kernel update to v6.13-rc1, we have been increasingly seeing
> following occasional OP-TEE (v4.2.0) panic:
> 
>    E/TC:0   dump_fail_filter:425 Violation @0xce01b000, non-secure privileged read, AXI ID 5c8
>    E/TC:0   Panic at core/arch/arm/plat-stm32mp1/plat_tzc400.c:30 <tzc_it_handler>
>    E/TC:0   TEE load address @ 0xce000000
> 
> This happens at kernel boot time, when loaded by barebox. The probability that
> this happens, seems to be inversely proportional to how long the system
> was powered off prior to Power-on reset...
> 
> The kernel /reserved-memory entry has a no-map entry for OP-TEE, so this
> looks correct.
> 
> barebox maps the OP-TEE range as uncached and with eXecute Never set.
> Indeed, if we jump to the OP-TEE memory directly, we get a prefetch error
> from within barebox without hitting the firewall as expected.
> 
> If the barebox MMU is disabled and we try to execute from 0xce000000, we
> get an expected panic from OP-TEE:
> 
>    E/TC:0   tzc_it_handler:26 TZC permission failure
>    E/TC:0   dump_fail_filter:420 Permission violation on filter 0
>    E/TC:0   dump_fail_filter:425 Violation @0xce000000, non-secure privileged read, AXI ID 4c0
>    E/TC:0   Panic at core/arch/arm/plat-stm32mp1/plat_tzc400.c:30 <tzc_it_handler>
>    E/TC:0   TEE load address @ 0xce000000
> 
> Note that this is a different AXI ID (0x4c0) than the one we see related
> to the spurious read (0x5c8).
> 
> In order to further debug this, it would be useful to know which AXI master
> has ID 0x5c8. The reference manual (RM0475) has Table 20. "NSAID and AXI_ID
> mapping" in RM0475 but it contains no 0x5c8. 0x4c0 is expectedly the CA7
> itself.
> 
> Can someone from ST please chime in with the information what AXI master
> ID 0x5c8 maps to?
> 
Hi Ahmad,

The table you mention gives most of the explanation but I agree this is 
not completely clear.
 From the table:
Master | NSAID[3:0] | ID_WIDTH  | AXI_ID[10:0]
CA7    | 0b0000     | AR:6/AW:5 | 11’b10XXXXXX000

The BIT[10] (0x400) is set in 0x5c8, so it is the Cortex-A7.
Then the 0x1c8 is the ARID or AWID, that you can find in Cortex-A7 TRM.
See tables 7.4 or 7.5.
As the TZC error mentions a read error, then it will be an ARIDM.
And 0x1c8 >> 3 correspond to:
0b111mmm[b] L2 Line-Fill Buffer
b. Where mmm is L2 encoding of the Line-Fill Buffer.

And 0x4c0 is then the Cortex-A7 Processor 0 Instruction.



Best regards,
Yann


> Thanks,
> Ahmad
> 



