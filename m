Delivery-date: Thu, 18 Sep 2025 12:10:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzBb0-004Qo0-2k
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 12:10:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzBb0-0005WM-AQ
	for lore@pengutronix.de; Thu, 18 Sep 2025 12:10:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkHyihfci1y+7h9sCn4IdcpNyF/KrEd3YYcd1ZOuelE=; b=GgLE71oeUmXkdiswekjQMB9u+Q
	vB41o8A9OvVvxPUTbiKRpz+CsxIY7XTxqusaR+ZqRZZchKjZy/oLLU8R/7hZBhtA3/J241YPBDe/C
	5fdeE7mMW4hd+2fz9LD45Ipu16kFrPS8gXkQJGdFZi/3kCb4KvheX188ChwgiEfX7Ka4kJkxM5OBN
	Zsv2ftY3Dnyh03DHH3RtQTUSzPbq32ag6NV60oC6LmBarWgorYN5vbEbeUTPThHM6qjqEdXi9r622
	3mLDsEg3z28x/lnlm1okr8wB7i5lCQJL5+4AiU1P+40XFuHjLOJSzw7YqVA9byUuwmYTe2Oe99lMk
	iznj8new==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzBaU-0000000Gyad-0IDW;
	Thu, 18 Sep 2025 10:10:02 +0000
Received: from cczrelay02.in2p3.fr ([134.158.66.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzBaQ-0000000GyZ7-3I0T
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 10:10:01 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(authenticated bits=0)
	by cczrelay02.in2p3.fr (8.14.4/8.14.4) with ESMTP id 58IA9ftb015933
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NO);
	Thu, 18 Sep 2025 12:09:47 +0200
Message-ID: <3def4066-a30e-4e85-a018-deaa016ef3fa@clermont.in2p3.fr>
Date: Thu, 18 Sep 2025 12:09:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-4-2de8f69107a1@clermont.in2p3.fr>
 <aMung6AF1mKR6CUk@pengutronix.de>
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr, en-US
In-Reply-To: <aMung6AF1mKR6CUk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_030959_092858_0E598EA2 
X-CRM114-Status: GOOD (  12.60  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/11] ARM: dts: socfpga: use upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I tried to squash, but it kicked Ahmad off the author list...

Le 18/09/2025 à 08:32, Sascha Hauer a écrit :
> On Wed, Sep 17, 2025 at 05:22:07PM +0200, David Picard wrote:
>> From: Ahmad Fatoum <ahmad@a3f.at>
>>
>> The device trees from the Enclustra BSP are outdated and not compatible
>> with what barebox expects. Drop them and use the upstream SoC device
>> tree imported from Linux instead. For the board itself, we import the
>> device tree in the most recent posting[1] to the kernel mailing lists.
>>
>> [1]: https://lore.kernel.org/all/20241116131025.114542-1-l.rubusch@gmail.com/
>>
>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>> ---
>>   arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  18 +-
>>   arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 150 ++++
>>   dts/src/arm/intel/socfpga/skeleton.dtsi            |  13 -
>>   .../intel/socfpga/socfpga_cyclone5_enclustra.dtsi  |  69 --
>>   .../intel/socfpga/socfpga_cyclone5_mercury_sa2.dts | 128 ---
>>   dts/src/arm/intel/socfpga/socfpga_enclustra.dtsi   | 971 ---------------------
>>   6 files changed, 152 insertions(+), 1197 deletions(-)
> Please squash this into the previous commit. Or, to put it differently,
> don't introduce files that you remove just in the next step.
>
> Sascha
>



