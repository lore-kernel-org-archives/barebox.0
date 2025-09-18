Delivery-date: Thu, 18 Sep 2025 12:21:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzBl6-004Qzr-2H
	for lore@lore.pengutronix.de;
	Thu, 18 Sep 2025 12:21:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uzBl6-0007LI-4f
	for lore@pengutronix.de; Thu, 18 Sep 2025 12:21:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GYj8fTaX7cFpJQHkwRQPFEyHg2LStEa3tgPCMh2DzN4=; b=h4S4gI5k688MOS2Z2Ay9dSdF+U
	G57ntgQiOx4bly14WxpxqMbAZLdCKA1NO5isg10TKccmMNnm2JIZcTDvPYWp7OZ5W3QsDJda9sADE
	c/UYV3+5I0QEV0TsrVTSG6XQ7CJsw2Pbktv8GdXDC9V8duT/DSpygcJseIkQ+p8IIYjIu/6nRzYxR
	G4HAzzR8uI/yw9NITLKXDrkZJpCgY4x0MkGRBG3Z2X6HTpTxbFuH5c+VIq+F+zz147PRenoTi99t2
	Vj6X+QrK0KbDbnF4+J0QM2VxzljUmk4vGpBHGntBVEDF56TR0oYyPKC0pLN3t5gm4c60XRbR2J4+K
	8GA1BSvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzBkf-0000000H1oK-2EOZ;
	Thu, 18 Sep 2025 10:20:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzBkc-0000000H1mw-2Thv
	for barebox@lists.infradead.org;
	Thu, 18 Sep 2025 10:20:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uzBka-0007EY-0x; Thu, 18 Sep 2025 12:20:28 +0200
Message-ID: <bd9b9c47-3f30-4cc5-9333-11e2291316fa@pengutronix.de>
Date: Thu, 18 Sep 2025 12:20:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: David Picard <david.picard@clermont.in2p3.fr>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <ahmad@a3f.at>
References: <20250917-boards-enclustra-sa2-add-support-v1-0-2de8f69107a1@clermont.in2p3.fr>
 <20250917-boards-enclustra-sa2-add-support-v1-4-2de8f69107a1@clermont.in2p3.fr>
 <aMung6AF1mKR6CUk@pengutronix.de>
 <3def4066-a30e-4e85-a018-deaa016ef3fa@clermont.in2p3.fr>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <3def4066-a30e-4e85-a018-deaa016ef3fa@clermont.in2p3.fr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_032030_627398_B464FA7E 
X-CRM114-Status: GOOD (  16.68  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/11] ARM: dts: socfpga: use upstream SA2 device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

On 9/18/25 12:09 PM, David Picard wrote:
> I tried to squash, but it kicked Ahmad off the author list...

That's no issue. If you want to credit me, you can add a

  Co-developed-by: Ahmad Fatoum <ahmad@a3f.at>

into the squashed commit directly before my S-o-b with your S-o-b at the
end.

Cheers,
Ahmad


> 
> Le 18/09/2025 à 08:32, Sascha Hauer a écrit :
>> On Wed, Sep 17, 2025 at 05:22:07PM +0200, David Picard wrote:
>>> From: Ahmad Fatoum <ahmad@a3f.at>
>>>
>>> The device trees from the Enclustra BSP are outdated and not compatible
>>> with what barebox expects. Drop them and use the upstream SoC device
>>> tree imported from Linux instead. For the board itself, we import the
>>> device tree in the most recent posting[1] to the kernel mailing lists.
>>>
>>> [1]: https://lore.kernel.org/all/20241116131025.114542-1-
>>> l.rubusch@gmail.com/
>>>
>>> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
>>> ---
>>>   arch/arm/dts/socfpga_cyclone5_mercury_sa2.dts      |  18 +-
>>>   arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi     | 150 ++++
>>>   dts/src/arm/intel/socfpga/skeleton.dtsi            |  13 -
>>>   .../intel/socfpga/socfpga_cyclone5_enclustra.dtsi  |  69 --
>>>   .../intel/socfpga/socfpga_cyclone5_mercury_sa2.dts | 128 ---
>>>   dts/src/arm/intel/socfpga/socfpga_enclustra.dtsi   | 971
>>> ---------------------
>>>   6 files changed, 152 insertions(+), 1197 deletions(-)
>> Please squash this into the previous commit. Or, to put it differently,
>> don't introduce files that you remove just in the next step.
>>
>> Sascha
>>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



