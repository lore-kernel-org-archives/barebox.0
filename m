Delivery-date: Mon, 11 Nov 2024 12:30:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tASdF-000ayc-2k
	for lore@lore.pengutronix.de;
	Mon, 11 Nov 2024 12:30:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tASdF-00049O-AM
	for lore@pengutronix.de; Mon, 11 Nov 2024 12:30:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JRsWHZMJ9CN3SU1KBRRrF7+so/+8rTNCj0r4uNCW4sA=; b=kwFxGyKtCsO4bT9d0EGpt+HBXk
	x5ouLtQKqD/7TeIW+0xIt5Amwz17LTSeK+V3zO4JZdIzxb+wFd6h2/Wkww59ZZlvLWch1miPXyW8+
	V5P5q8OG0zewOlgHCwsGkNPeC/DyU/sKFsqLyCMHohXgLUNgvcfLSJVLwiurX6h5nT5GMkAkPFABg
	3YTqp5n4snMxuYozfO1XhdsglFpEj0Y76SmOHVrwC2h9/NdAEwtBFWFnOaKP2OuVT2z13qNL8acRm
	VmyoKN2kQ6tbN+/ZvHpMqshfDAN2b8pTC3YzlEGB2lxCzRbS70JSAGuV7a+X9zLj8oxMQIKZUEFMc
	bEaWua9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tASco-0000000HT2v-2cB6;
	Mon, 11 Nov 2024 11:30:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tASck-0000000HT0P-1rGY
	for barebox@lists.infradead.org;
	Mon, 11 Nov 2024 11:30:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tAScg-0003wy-EQ; Mon, 11 Nov 2024 12:30:22 +0100
Message-ID: <8c0fde0a-3d8b-4262-8b57-1c09b628a121@pengutronix.de>
Date: Mon, 11 Nov 2024 12:30:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Renaud Barbier <Renaud.Barbier@ametek.com>,
 Barebox List <barebox@lists.infradead.org>
References: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_033026_517975_CFAAFCF0 
X-CRM114-Status: GOOD (  14.20  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NVME o nLS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Renaud,

On 07.11.24 14:42, Renaud Barbier wrote:
> I have installed a NVME device on a LS1046A-RDB:
>       `-- pci-1957:81c0.1
>             `-- pci-126f:2263.0
>                `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1
> 
> My barebox version is 2022.03

This version is quite old. Do you see the same issues with v2024.10.0?

There has been changes to the DMA handling on the LS1046A, which are
not included in your old barebox version.

Cheers,
Ahmad

> 
> Is there a way to format or mount the device from barebox?
> 
> 
> barebox@LS1046A RDB Board:/ mount -t ext4 /dev/nvme0n1 /mnt/nvme0n1/
> mount: No such file or directory
> running automount command 'mount nvme0n1' failed
> mount: No such device
> 
> Cheers,
> Renaud
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


