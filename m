Delivery-date: Fri, 16 Jan 2026 11:22:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggyL-001vc5-2s
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 11:22:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vggyK-0005Q4-Qk
	for lore@pengutronix.de; Fri, 16 Jan 2026 11:22:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jl7UVS8uy1zn6tf/hDzcs4XQ+VVixODB9tZgRjjK/pY=; b=4E1NySwLn7pFEtAuMPLQRu05wE
	BrjxxcNtsa1Wokq27TTK7umesAgFkDLNuUy43fXO1/uma2cEXfkXj4OlWL7iRLngvYhaIgOCfTu05
	IbkrKUxBfSRz/gYeWj3sdYTXdg27bc/u2cpT7JomdTzAYc9DzY1JzS9kOzD7w+9+N0AmetYTIuBYD
	BWYDsuWdF2XgXziow5Z8tHmR0mBzggjdVIWTVS1S3Y7cHtcwn+pvlj3qvJE1NthmNr0A6mBn33+0W
	Xxd56cDkPZOiylMxTrlerRCPXeY5vwl290MV51u6S8Jeg40mPjQkisGi5+Nqj32DcmGYKPiq0lupX
	1Foa2Csw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggxu-0000000Dwma-27wB;
	Fri, 16 Jan 2026 10:22:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggxr-0000000Dwm9-3XXv
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 10:22:00 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vggxq-0005J5-6m; Fri, 16 Jan 2026 11:21:58 +0100
Message-ID: <84b47759-5755-4c55-9d50-2ee9e05ff6b8@barebox.org>
Date: Fri, 16 Jan 2026 11:21:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, David Dgien <dgienda125@gmail.com>
References: <20260115115924.3428886-1-a.fatoum@barebox.org>
 <20260115115924.3428886-3-a.fatoum@barebox.org>
 <aWn36P7Q9UKkpkkd@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <aWn36P7Q9UKkpkkd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_022159_905852_5758C678 
X-CRM114-Status: GOOD (  11.96  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 02/12] ARM: qemu-virt: add image for use as -bios
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/16/26 09:33, Sascha Hauer wrote:
> On Thu, Jan 15, 2026 at 12:54:28PM +0100, Ahmad Fatoum wrote:
>> +	printf("Using %s device tree at %p\n", origin, fdt);
> 
> Doesn't make a difference for PBL, but I think pr_info would be more
> appropriate here.

Sure.

>>  #define BAREBOX_BOARDDATA_COMPRESSED_DTB_MAGIC 0x7b66bcbd
>> diff --git a/test/arm/virt-el2@multi_v8_defconfig.yaml b/test/arm/virt-el2@multi_v8_defconfig.yaml
>> new file mode 100644
>> index 000000000000..8aa514fb4179
>> --- /dev/null
>> +++ b/test/arm/virt-el2@multi_v8_defconfig.yaml
> 
> You anticipated ARM32 above, how about adding these for
> multi_v7_defconfig as well?

Ah, the name is misleading anyway, because it still runs in EL1 (which is good,
as we can use hvc for PSCI, but I was not aware of that yet when I named the
file).

I can rename and add a new v7 YAML in v2.

Cheers,
Ahmad

> 
> Sascha
> 



