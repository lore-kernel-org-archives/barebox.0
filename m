Delivery-date: Thu, 03 Jul 2025 09:18:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXEDi-00DZF2-1s
	for lore@lore.pengutronix.de;
	Thu, 03 Jul 2025 09:18:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uXEDi-0001c8-1V
	for lore@pengutronix.de; Thu, 03 Jul 2025 09:18:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:From:To:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+Jgx4HIe40JyZ6HNKTY7H/VavLPvz0r+NhTXLL+8GyM=; b=icaK8S+/skjrxeM77r4ZWeykme
	QGSouwinJ5AYDuzbW0VVewxyk33ZvYSFzj5GyDbeKxj8UehPv3Rmwx8KJTLRKpr/YHyNfz8xKZEp6
	TtbrcAGFYU1eIO/MfPZh63+rQklPP68m9QG7n0kmvsXNARURiYV4uZSRNWmk9+MFDD5cGmvaAc2oV
	1Kto2ONV+F7CIEWCXzCaoJKCdPwT+NDC9NhV7no/EL834eiQc6dfWkqCebT2x7MLj6xtCBZVJdo0X
	E88cT4LXnt9hngmtlwUcD/sbi6Yi/vbO6rog+UOcg0THK1BxvPCkJsXw+H/jaoNvv5EwrZjf8s0fA
	1eIACzpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXECz-0000000AUQX-431p;
	Thu, 03 Jul 2025 07:18:13 +0000
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXECx-0000000AUOX-1nIx
	for barebox@lists.infradead.org;
	Thu, 03 Jul 2025 07:18:13 +0000
Received: from [IPV6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d] (unknown [IPv6:2a01:e0a:efa:53b0:468a:5bff:fe9a:3c4d])
	by smtp1-g21.free.fr (Postfix) with ESMTP id 2A930B0056A
	for <barebox@lists.infradead.org>; Thu,  3 Jul 2025 09:18:06 +0200 (CEST)
Message-ID: <db21b526-ba6f-4714-8dca-3ed57d7bf028@trabucayre.com>
Date: Thu, 3 Jul 2025 09:18:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
Content-Language: en-US
From: Gwenhael Goavec-Merou <gwenj@trabucayre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_001811_606819_D311DEB0 
X-CRM114-Status: UNSURE (   2.04  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: MMC prepare for zynq
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear all,

I'm trying to uses my zedboard with barebox but can't be able to boot this.

According to mails found in this mailing list I have done this sequence:

export ARCH=arm
export CROSS_COMPILE=$SOMEWHERE/arm-buildroot-linux-gnueabihf-

make zynq_defconfig
make -j$(nproc)

And copied in the first SDCard FAT partition:
- images/barebox-avnet-zedboard.img as BOOT.bin
- barebox.bin

But I have nothing displayed through serial port.

Are there somewhere details on how to prepare SD Card for a zynq board?

Thanks

Gwenhael


