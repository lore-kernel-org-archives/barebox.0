Delivery-date: Mon, 01 Dec 2025 10:46:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0UQ-006m58-22
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:46:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0UQ-0001Qx-2g
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:46:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V/yNy+fuqIMj9ae5QC0xlVvT3BWJneRgh0Q9i4Dwcx0=; b=SnnaK3WiUJ7Q4m82/73urpH96k
	SRFWP8qXIpGJivwQMtsZuhMRODTBSEGRyFfzhJ0Bih/BcK5U02LZCMwbMAPXEz2PizBMIwHyAgher
	DtVtxRg6ANLywSyo1u5Ai6y90IA5KDv+OfeSTHy7R25gSpIWARYgMr6n6nodJuJvqQ1BGxLV5gkqp
	EtipTsV09SO9IPKCYoa7kPEiHP2T1XS8C9g07Uxe+W1s984nL1ZTyzO3FNwfLT04saLTO3zPOPCSI
	mc/KC5nsnSqrHFhJvVcVliajLYlnuOYOmAUpgH0cb4JjonNs+xS485fUssNLb0XUvsEN+0arfI4ub
	8GZdDNFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0U1-00000003Ecm-3Q9h;
	Mon, 01 Dec 2025 09:46:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0Tz-00000003Ec7-1fJo
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:46:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ0Tx-0001KW-U1; Mon, 01 Dec 2025 10:46:10 +0100
Message-ID: <f110aef5-cd44-4689-ad84-955807385b78@pengutronix.de>
Date: Mon, 1 Dec 2025 10:46:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20251128172107.35323-1-a.fatoum@pengutronix.de>
 <20251128172107.35323-3-a.fatoum@pengutronix.de>
 <aS1jt08kSRmkuyUk@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aS1jt08kSRmkuyUk@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_014611_892431_6BA69F10 
X-CRM114-Status: GOOD (  16.78  )
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
Subject: Re: [PATCH 3/3] test: arm: qemu-raspi1ap the default
 multi_v5_v6_defconfig.yaml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/1/25 10:45 AM, Sascha Hauer wrote:
> "qemu-raspi1ap the default multi_v5_v6_defconfig.yaml" doesn't have a
> verb, I am not sure how the sentence was meant to read.

The missing verb is a "make" at the beginning.

Thanks,
Ahmad

> 
> Sascha
> 
> On Fri, Nov 28, 2025 at 06:21:03PM +0100, Ahmad Fatoum wrote:
>> This allows running pytest without --lg-env argument after having built
>> multi_v5_v6_defconfig.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  test/arm/multi_v5_v6_defconfig.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>  create mode 120000 test/arm/multi_v5_v6_defconfig.yaml
>>
>> diff --git a/test/arm/multi_v5_v6_defconfig.yaml b/test/arm/multi_v5_v6_defconfig.yaml
>> new file mode 120000
>> index 000000000000..5131c0b82c3d
>> --- /dev/null
>> +++ b/test/arm/multi_v5_v6_defconfig.yaml
>> @@ -0,0 +1 @@
>> +qemu-raspi1ap@multi_v5_v6_defconfig.yaml
>> \ No newline at end of file
>> -- 
>> 2.47.3
>>
>>
>>
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



