Delivery-date: Tue, 02 Nov 2021 11:01:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhqbi-0006Nu-J1
	for lore@lore.pengutronix.de; Tue, 02 Nov 2021 11:01:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhqbh-0007u5-N4
	for lore@pengutronix.de; Tue, 02 Nov 2021 11:01:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+sktkv3gz0Z/NAOaj7WS73xhb5ulHqCQqHQPvZI+KAM=; b=aGGqERHKx/ubk0sV7AszZmllYi
	7oSpHkeuMaAd6+2Knd3WXYsWLsMMcbOEhJla+qNgFwdPTeg4t+px6qpQXEO/s11J/5rm5fOH/Z607
	vQxjVbMlay2DN18nmGjadtbOLtR9yMysEG27KeB5bPSfhvVJ85tv1DYG+msDYT3zT82IK5p42f519
	vrjzxcQPgIwsNLHbHg10RGJ1kAUCtaatJYA8JoBtdSe9J91X+eKOc5gvtz+/Mn0TD+gKk6bA28WrJ
	KGL+H9BX59qw410jB/vQfSxXUdx+nDWvIjw/LyFV5I4bA7/NeZPvQLJWsEo8TLc8hlLIkDCnOWjB5
	QfrRBl+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhqa6-001Ecn-NL; Tue, 02 Nov 2021 09:59:50 +0000
Received: from smtp125.iad3b.emailsrvr.com ([146.20.161.125])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhqZz-001Eaz-80
 for barebox@lists.infradead.org; Tue, 02 Nov 2021 09:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
 s=20190130-41we5z8j; t=1635847179;
 bh=sDFgGHSNgBD+9ksQnGCIf0PgicJBtwpD1c3NUzZOZkM=;
 h=Subject:To:From:Date:From;
 b=VjIjM/WB5Jx7uID/gUZyxoxVKr8jCsV07p6Fi17RlQmO1/Q5/c9oLdi0achOpaOUm
 RgwtQuB0gUUqB8IDiaOJCcPlojUyvTy7mw9HTJ6RMCxK6ggyliYrQR5CapsUQFnzAp
 vP1QbHG62E7GP7w0dNAlj+1jZxLQUExMIR4UlkTU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp8.relay.iad3b.emailsrvr.com (Authenticated sender:
 abbotti-AT-mev.co.uk) with ESMTPSA id F383E4008E; 
 Tue,  2 Nov 2021 05:59:38 -0400 (EDT)
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
References: <20211101174053.68486-1-abbotti@mev.co.uk>
 <20211102080130.GX25698@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <fa4ce3a7-3f01-eaaf-18cc-2f1a2e4d4930@mev.co.uk>
Date: Tue, 2 Nov 2021 09:59:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211102080130.GX25698@pengutronix.de>
Content-Language: en-GB
X-Classification-ID: 27f012ca-3774-4b9b-b200-a389e5c96935-1-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_025943_447867_B274CF72 
X-CRM114-Status: GOOD (  17.22  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: socfpga: Set reset-names property for &mmc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02/11/2021 08:01, Sascha Hauer wrote:
> On Mon, Nov 01, 2021 at 05:40:53PM +0000, Ian Abbott wrote:
>> Since commit 90bdf1e5d1e4 ("mci: dw_mmc: match against StarFive MMC
>> compatibles"), the dw_mmc driver requires a reset line called "reset".
>> The slightly earlier commit a3cf324593ea ("mci: dw_mmc: add optional
>> reset line") introduced the reset line support, but made it optional.
>>
>> The device tree node for SoCFPGA's MMC device has the "resets" property,
>> but is missing the "reset-names" property, so MMC no longer works.
>> Barebox produces the error message:
>>
>> ERROR: dw_mmc ff704000.dwmmc0@ff704000.of: probe failed: Invalid argument
>>
>> Add the missing "reset-names" property to the "&mmc" node in
>> "arch/arm/dts/socfpga.dtsi".  It probably needs fixing in the upstream
>> Linux device tree sources too!
> 
> The reset binding lists reset-names as an optional property, so it seems
> our reset code needs fixing and not the dtsi file.

I'll resubmit the patch later with a different commit message once 
things have been settled, since it seems like a good idea for the reset 
line in the socfpga.dtsi to be made use of, and it doesn't seem to do 
any harm!

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

