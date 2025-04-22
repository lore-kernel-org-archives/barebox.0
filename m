Delivery-date: Tue, 22 Apr 2025 10:37:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u798L-003yT3-1R
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u798K-0000mr-QN
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:37:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=50Xtj/sCFZLMYwUIGHUfpALYsX2rj7g9+j4PsmMQh5s=; b=dM72tlJk8ODx3RoHv2Q9SUG5eB
	lwlfbh4NblR9E1UXXF6B9HYvc1u1HoqOIz+uFRz0vb12fJWPst+G0DvIKW13arc+yHMbCiA2mqgja
	PvF/wVt7rHy9ZjZ8C4ESOrUlkQR3ZMnxSCm2gnV9aG/OhoDNN/WXwBf4AKhzpdzwK/qfcdKBHcN50
	qTVdGuUXYagp7NZ4UCz/3dV5LZVSyqPpgSwskofZuxrpbjOyWFLjotDV3fn8uQtZPfLCpaZov2RVY
	ZRYPbw84QXYO1/KV0J6bk6FLJ89xcrAA285Ph5saG5gddtZepa8a0bZ4tQcFgqSKSZCJPcyRhT4gY
	WPnIbRTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u797s-00000006LZ0-1mEv;
	Tue, 22 Apr 2025 08:37:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78QJ-00000006BQv-3b4Z
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:52:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78QI-0008Jv-LI; Tue, 22 Apr 2025 09:52:06 +0200
Message-ID: <792d3276-c0d2-4aa5-8c51-874160096991@pengutronix.de>
Date: Tue, 22 Apr 2025 09:52:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
 Michael Olbrich <mol@pengutronix.de>
References: <20250422063910.126829-1-a.fatoum@pengutronix.de>
 <174530773886.2993589.7402067742484019436.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <174530773886.2993589.7402067742484019436.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005207_898837_82033F5F 
X-CRM114-Status: GOOD (  13.80  )
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
Subject: Re: [PATCH] kbuild: treat char as always unsigned
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 22.04.25 09:42, Sascha Hauer wrote:
> 
> On Tue, 22 Apr 2025 08:39:10 +0200, Ahmad Fatoum wrote:
>> The C standard makes it implementation defined whether a plain char is
>> unsigned or signed and the architectures where barebox is compiled for
>> differ in that, e.g. chars are traditionally unsigned on ARM, but on x86
>> for example they tend to be signed.
>>
>> This caused different bugs[1][2][3] in the past, especially around
>> behavior when casted to int. Let's instruct the compiler to treat char
>> as always unsigned. This may fix some issues that flew under the radar
>> so far, but also break drivers that were compiled and used only for
>> specific architectures, which implicitly assumed char is signed, which
>> we'll have to fix.
>>
>> [...]
> 
> Applied, thanks!

Please wait with this until after the release, so it sits in next for
a whole month first.

Thanks,
Ahmad

> 
> [1/1] kbuild: treat char as always unsigned
>       https://git.pengutronix.de/cgit/barebox/commit/?id=2a6033a6610b (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


