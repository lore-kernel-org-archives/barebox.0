Delivery-date: Tue, 18 Mar 2025 12:24:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV3C-00117g-0W
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 12:24:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuV3B-0005pV-1V
	for lore@pengutronix.de; Tue, 18 Mar 2025 12:24:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ur+IIbUjznvQwhHMXt2wrhsE2mQOPb+KsQWUvvbxzD8=; b=LuOz2MpkA/XhLTUWCQzJ1yFXfy
	o3Yw+qMl6RPb3Tqwzl+Xi/+QUByEQSVkccO1RR9UTPiJcbEFiAty8k1lBjb/jqlYYwpChWb8VV+io
	i39bln4IcvL2/tGLJSEBmMCSeqVgpT7JDwJKyhmuM/1U+rjlWihysC3OeKtP6NnyHp9TrVMuwXwly
	hFCl5MFb0cn8YjjwmVmJwO0ZkFo0mP4mBoxRdX9VeAFg2rHahwIYFg1D4avIxv9jOd8MhuKRvirYc
	IyixmK3ZqmfTqWGaVTVhRx4hOVXkx/p5R+9P+2JktG8wSpItfznFaw8EYu7236WVuAlNSHP/df5RH
	Iw3CNGbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV2b-00000005iKp-1uPw;
	Tue, 18 Mar 2025 11:23:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuV2Y-00000005iK2-14HC
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 11:23:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuV2V-0005gB-Hu; Tue, 18 Mar 2025 12:23:19 +0100
Message-ID: <f66973ec-4516-4dd3-92d3-214fab6c035e@pengutronix.de>
Date: Tue, 18 Mar 2025 12:23:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: barebox@lists.infradead.org
References: <20250318082435.419053-1-a.fatoum@pengutronix.de>
 <p6sahp32nei5iesre27rbtdbsatui24ce53f3fx6sovbe2mis7@lkei2stdndjo>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <p6sahp32nei5iesre27rbtdbsatui24ce53f3fx6sovbe2mis7@lkei2stdndjo>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_042322_289379_B6F2808E 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] partition: fix reference to wrong cdev in warning
 message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Uwe,

On 3/18/25 12:16, Uwe Kleine-König wrote:
> This improves the error messages on my ts433 from
> 
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0
> 
> to 
> 
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.2
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.3
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.4
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.5
> 	WARNING: mmc0: Failed to create link from mmc0.primary to mmc0.6
> 
> I still don't understand why barebox intends to create mmc0.primary for
> all these partitions, but still it's an obviously right improvement.

Thanks for testing. I still suspect that you have multiple on-disk
partitions with the same label. What does lsblk -o name,label,partlabel
say?

Cheers,
Ahmad

> 
> Acked-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> 
> Best regards and thanks
> Uwe



