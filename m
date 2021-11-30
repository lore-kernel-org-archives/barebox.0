Delivery-date: Tue, 30 Nov 2021 11:25:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0KE-0002qj-L6
	for lore@lore.pengutronix.de; Tue, 30 Nov 2021 11:25:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ms0KD-0008Bu-Fk
	for lore@pengutronix.de; Tue, 30 Nov 2021 11:25:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/sUW8gTNJO0GymNnUEZnbXCQQaDXKmpf+SijnvTYSuE=; b=oULvr9UqWxdGjQyoOQf4copzCN
	EnkpjVlUFEC0O/kfI0U675KwRDZ0wQ1b0i8fbQ3vosJu1g0Co8G7rZy9d11gRhPvuugqBA3Bmz/35
	gZdfIDXSGdENGeovKzkn477NbvnJJkOOGuc8PFOkmZZEzzuoxvREcb3qF0F+MPwiHjv9e82YgQbXX
	jchpnEFduDCq7izX5zohCZUN2cKkAkbd8twT0W8AtkIWH+0W0KdLqx4xjrb/ueqIksMAgHNXXlL9s
	VxZcqZanjmtoy/DB3hrL2ew7foJxwxyW6Jjdeis9TYCBakYSn+Lzg7AjYZ3NbGnm6NGHvDLsSAHtY
	qJ/2Ic8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms0Ig-004aOV-Ba; Tue, 30 Nov 2021 10:23:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms03W-004VQ5-Cn
 for barebox@lists.infradead.org; Tue, 30 Nov 2021 10:08:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms03U-0005y4-HM; Tue, 30 Nov 2021 11:08:08 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ms03U-00076j-4E; Tue, 30 Nov 2021 11:08:08 +0100
Date: Tue, 30 Nov 2021 11:08:08 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, David Jander <david@protonic.nl>
Message-ID: <20211130100808.GM28260@pengutronix.de>
References: <20211126133108.3003431-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211126133108.3003431-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:07:52 up 285 days, 13:31, 144 users,  load average: 0.10, 0.19,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_020810_487318_244DCD7E 
X-CRM114-Status: GOOD (  19.45  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] nvmem: bsec.c: Use SMC_READ_OTP in
 stm32_bsec_read_mac()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 26, 2021 at 02:31:08PM +0100, Oleksij Rempel wrote:
> From: David Jander <david@protonic.nl>
> 
> TF-A (version >= v2.4?) apparently does not copy all of OTP to shadow
> registers so reading the MAC address area will read all-zeroes.
> Make sure to read the _real_ OTP register in this case.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  drivers/nvmem/bsec.c | 21 ++++++++++++++-------
>  1 file changed, 14 insertions(+), 7 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

