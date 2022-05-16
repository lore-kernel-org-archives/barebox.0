Delivery-date: Mon, 16 May 2022 11:13:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWmj-00FPRJ-Hh
	for lore@lore.pengutronix.de; Mon, 16 May 2022 11:13:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqWmh-0001E3-TY
	for lore@pengutronix.de; Mon, 16 May 2022 11:13:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:CC:To:Subject:
	MIME-Version:References:In-Reply-To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JWlbWDt3iH/ejKNFM1P/Ro9w5I4ODPML1mYLAvXYygk=; b=0zidBLvSlTi/+JkX1eyriaIWiE
	lcweNCtI8PU8GeI3Sy6gb3x6q4+DPV3QVR6J08HL067R5myw+dqUBVEClas9Hbqcazl6cA0FAbaw7
	uPKBHIdSFdlhk78osp2nxGUL4KHgneHlKN5vdl6thiTqUdU5FK864QG3nxTL6dRl2Tvs5MjSaL9Uo
	uIS+JvF3i2vHWLy5U+OUSCQeGsKEiEeciLm7uuemB3BxivZJRRWd49U/2Vl02qalIi1M8os620nYE
	1z1M/oQhoYXlCQEm0Pm4YL+jj6vWGij0myXCFDp53RkebRYfH6HagQTkP2FUWoTVV0J2OXCTc4s5l
	S9NtTCpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqWlF-006qfH-4m; Mon, 16 May 2022 09:11:29 +0000
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqWl8-006qc8-MN
 for barebox@lists.infradead.org; Mon, 16 May 2022 09:11:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1652692276;
 bh=IN3yvVa3Kcee30FxWaG6TJco2NwEcWMSmaaVypKYpgw=;
 h=X-UI-Sender-Class:Date:In-Reply-To:References:Subject:To:CC:From;
 b=RLdKPyHNwBCGXMOD/8/RwsYl+Ax2nG1gAAo8glQDEVtiHxSb+cGXgU9a5j+h5R9/V
 OjIk8o/3DoxXpAOIP7V4gu2h0Nqxgkx4f7S3J0bCnYBVNQVELAOqhuSdA2rAuZX8GC
 VWxGA4Racl97AP82EvLC7Pqleq8/VryV5TfEMPQs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from frank-s9 ([80.245.74.14]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MVN6j-1oHqnj2JLL-00SOBW; Mon, 16
 May 2022 11:11:16 +0200
Date: Mon, 16 May 2022 11:11:12 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <20220516084126.GL25578@pengutronix.de>
References: <20220514155609.8306-1-linux@fw-web.de>
 <20220516084126.GL25578@pengutronix.de>
MIME-Version: 1.0
To: Sascha Hauer <s.hauer@pengutronix.de>,Frank Wunderlich <linux@fw-web.de>
CC: barebox@lists.infradead.org
From: Frank Wunderlich <frank-w@public-files.de>
Message-ID: <1E485C63-33A8-4A4B-8C5A-A3BD5B4A8467@public-files.de>
X-Provags-ID: V03:K1:mFXyq5LKs0jsePEvNYhmhpCxItOLpGA7ORcLXZM0ZZ3WsE+Kflf
 cAwoMAdq47I+jjgc0hja07bswAhiUSwdxcoNGxvJv4f05SHyAYE416B7wHXm7Kg6DnwN+h+
 44oBa/k4LVB0c3LeIt8TUxOWcb91Vc5qR+X1AuGCsKQEVyuXUTZIcSQPpLAiJuhKtTJjzcA
 ZvSfb4Le60xGuptLhQGTQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:BLnEKKVHGBA=:tm/KDITwDxAcf3Fg/c8BZr
 x+pj0lD0BpJJRorPDlKUUJ9E2aqkAVZUZ35/aCIx7QoixAMTotn88jLhxP/vQypjI+mg086nj
 3j18vIxsqxUX9imlRWMJWAB9QWl/72gocdGTBoMjiCUcH8cMCIdWIe1pV6LSOZkxO6ItZ4t0U
 8HxQcOtoEsHf3SZZPO6b81UhFpt2r5tjc3+z/MIknmc6ZNbu0OEbw1WWe629inU3hjN9DQQa3
 vghtnX/6dsVhycbemnNGN0C2/aJ4Tk48OHgMG+uxlCTQ05kUC+bf7tZxzn+v6BzZW2kqAwFoy
 JLWOKcNFLijn94tR7ST0m9VTZwTuchfAHzy6AVT4zUVbTMVd3KiBo7FLeVjt9TakZQDJzgIY3
 vJXstU/fuaRwTJzq6OX3FZthga3ErLR+LD6MRLM1M2kpq2+c3/Y3peSwEIi8J46FaYQVFYjKG
 hFQZar2MLOD02Wfzub+3IjAbfXmG1b+eQpcfXygoVn4yokicrMRtNYUxjnkjmndTmAdbZyiAn
 tWnjjPUW7Xrvho1GjndjJ+MIwF9I5SMH+8EbpwVt8u7IcOdO+CVgOn14oOYDgrf0HvNaZ2Y5b
 O6F9pC4PLKHT87TUiHABI2YkJ0j8NEgKP1QEyIFOEq31E96XK5ZrOpjMOb86Cdh+nXj4tGjRp
 tGPwSZuYyGQ1YuJp0LIxCRQvAKVbrXZrajrr0mlvz0mR6s6BdGvBrDKYP//C5mUz7tWbi7L+7
 HDBv6GV3D7pynAVzBaHyqihgQ9axpVyNatS8VR+TCITYY+LkLe32o1uMkw+vuDPSELC+Jr0LH
 EmOajIatmaHexfexjbwCyM4kUryiRkP1/ZZLaLvl41ktwK6Ig0IPKR4zxNsi/mhbPZJ4UZbIv
 lqNhVEFB9WCH9YfOIOh//gzbYMCpAwheSTfaU3jupFgMEVWMNrS8gAm3lri+PQYV3tWhwrs0k
 7IBRLvSxNFv9kba73CRcEpYqlsyc7TyiSDEWIExZbQOxmZeXt9ilYvXr8Db2OfLptfNq8XhG+
 EgiWuca3e/6fv1j7XSOYK+stxv7DGm/dvvokj8l01prQ0NObbTcITqb/I7a7zmt409pRZP0Vi
 HC20br1FKy8/78=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_021123_325228_BCBBC2F5 
X-CRM114-Status: GOOD (  15.40  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [urgent] ARM: rockchip: fix iodomain for r2pro V1.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am 16. Mai 2022 10:41:26 MESZ schrieb Sascha Hauer <s.hauer@pengutronix.de>:
>On Sat, May 14, 2022 at 05:56:09PM +0200, Frank Wunderlich wrote:
>> From: Frank Wunderlich <frank-w@public-files.de>
>> 
>> Current code sets vccio4 and vccio6 both to 1v8. R2Pro v1.0 needs 3v3
>> setting on vccio4, else gmac0 (switch for lan-ports) will be damaged.
>
>By damaged you mean physically damaged? How can this happen? Does that
>mean some input signals are not 3v3 tolerant when the domain is
>supplied
>with 1v8?

Yes, if iodomain is set to 1v8 and board works with 3v3 signals it breaks hardware physically (affected me). I know this for device tree,but did not noticed this direct register write.

>Sascha
>
>> 
>> IO-domain is per default 3v3 so only vccio6 needs to be set to 1v8
>and
>> clear this bit in the 3v3 register.
>> 
>> Fixes: 8ba96c5942d6 ("ARM: rockchip: add BPI-R2-Pro V00 board")
>> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
>> ---
>>  arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c | 9 ++++++---
>>  arch/arm/mach-rockchip/include/mach/rockchip.h       | 3 +++
>>  2 files changed, 9 insertions(+), 3 deletions(-)
>> 
>> diff --git a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
>b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
>> index 4c5b4751b3fb..2a6e0700233a 100644
>> --- a/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
>> +++ b/arch/arm/boards/rockchip-rk3568-bpi-r2pro/lowlevel.c
>> @@ -17,10 +17,13 @@ static noinline void rk3568_start(void
>*fdt_blob_fixed_offset)
>>  	void *fdt;
>>  
>>  	/*
>> -	 * Enable vccio4 1.8V and vccio6 1.8V
>> -	 * Needed for GMAC to work.
>> +	 * set iodomain vccio6 to 1.8V needed for GMAC1 to work.
>> +	 * vccio4 (gmac0/switch) needs to stay at 3v3 (default)
>>  	 */
>> -	writel(RK_SETBITS(0x50), 0xfdc20140);
>> +	//set bit 6 in PMU_GRF_IO_VSEL0 for vccio6 1v8
>> +	writel(RK_SETBITS(BIT(6)), PMU_GRF_IO_VSEL0);
>> +	//clear bit 6 for 3v3 as it was set to 1v8
>> +	writel(RK_CLRBITS(BIT(6)), PMU_GRF_IO_VSEL1);
>>  
>>  	fdt = fdt_blob_fixed_offset;
>>  
>> diff --git a/arch/arm/mach-rockchip/include/mach/rockchip.h
>b/arch/arm/mach-rockchip/include/mach/rockchip.h
>> index f24db36f0161..ff8b1109f858 100644
>> --- a/arch/arm/mach-rockchip/include/mach/rockchip.h
>> +++ b/arch/arm/mach-rockchip/include/mach/rockchip.h
>> @@ -23,6 +23,9 @@ static inline int rk3288_init(void)
>>  
>>  #ifdef CONFIG_ARCH_RK3568
>>  int rk3568_init(void);
>> +#define PMU_GRF		0xfdc20000
>> +#define PMU_GRF_IO_VSEL0	(PMU_GRF + 0x140)
>> +#define PMU_GRF_IO_VSEL1	(PMU_GRF + 0x144)
>>  #else
>>  static inline int rk3568_init(void)
>>  {
>> -- 
>> 2.25.1
>> 
>> 


regards Frank

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

