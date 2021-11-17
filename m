Delivery-date: Wed, 17 Nov 2021 14:04:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKcR-0006D2-2y
	for lore@lore.pengutronix.de; Wed, 17 Nov 2021 14:04:55 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mnKcQ-0001vT-8T
	for lore@pengutronix.de; Wed, 17 Nov 2021 14:04:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Olm43Ob2ZDTD2gM5bLCpeGGQtGcHK+Knfw+21LIdLPU=; b=OQ/0F9VJDwDEMbtDAeC76Rgylr
	N09DZbisws6/gvicf8omHSjxLfYWQEuarjAmniqG6QXgT4yZlW2tY7WUCFah1+QkfzRg/0Bjddg5w
	Yqx1K9Axynga93H97mu7UhkXjhTMMyOcMAo4ms6lh43h723QDwtoBOtjtbr7nsAdapuX0O6iY/owQ
	OdKaEJ69QMvpYIHXW1K2VGOX20a6av1LV14E1Ss5M76LQZnvlWqeeZVAJv5vl1UjzviBqmBqLir/U
	A+slnTEBcCERPRXj/4YoOYE20b1IL2cGtzvVmek2mUvJ7sKcYtibFfpZ1pGPYA0zGPUBhegLvQ/6x
	VGRTXrgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnKbB-004mQp-EC; Wed, 17 Nov 2021 13:03:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnKb7-004mQE-2J
 for barebox@lists.infradead.org; Wed, 17 Nov 2021 13:03:34 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mnKb5-0001rb-RG; Wed, 17 Nov 2021 14:03:31 +0100
To: Sascha Hauer <sha@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
References: <20211115090432.147448-1-ahmad@a3f.at>
 <20211117064019.GF6556@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a361d8fd-a4b9-6800-fa9c-37d85758c755@pengutronix.de>
Date: Wed, 17 Nov 2021 14:03:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211117064019.GF6556@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_050333_143983_6C0F0A20 
X-CRM114-Status: GOOD (  16.40  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pci: add ECAM generic controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 17.11.21 07:40, Sascha Hauer wrote:
> On Mon, Nov 15, 2021 at 10:04:32AM +0100, Ahmad Fatoum wrote:
>> This has been tested with QEMU AArch64 Virt. The default (-M
>> virt,highmem=on) will have two ranges specified in the device trees for
>> memory bars. One 32-bit and the other 64-bit. As barebox can't yet
>> handle 64-bit BARs, the driver will prefer the 32-bit memory region if
>> available. If none is available, consider using -M virt,highmem=off or
>> fixing 64-bit support.
> 
> Looks straight forward. What can I do with it?

I wanted video output with qemu-system-aarch64 for my EFI loader
work. The Bochs PCI driver is the only driver I tested so far:

  test/emulate.pl qemu_virt64_defconfig -- -device VGA

You'll need some config changes. See the series, I just sent out.

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

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

