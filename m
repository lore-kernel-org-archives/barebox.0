Delivery-date: Tue, 27 Sep 2022 19:47:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEfq-00GikL-Fv
	for lore@lore.pengutronix.de; Tue, 27 Sep 2022 19:47:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odEfp-0004gD-CM
	for lore@pengutronix.de; Tue, 27 Sep 2022 19:47:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XkDkDtOwzVXrqlCqF61bEI1aqVson7WxKLRaENjoNE0=; b=FZ+emj7cx3hwBMfMLxLFVnEljc
	21s+J3Gb5bdWLtVp5IhJWP6ZANWV1mO9vGhf2MmhbNk57Q5gpNbGYj7FTcwRkabT0JkGQLMunAxvF
	xWlW31zE+AuklLCnZuyffJyy9M/GdbptRS9+CcTZkGGoIbOJJgzBtQb6PVofeMrNPutuJlhBiB/ML
	zanWQ1b7IXPL/j2bhSiFctpS/WXy9+6maWxO9QjaUVPxWQeR5sWJUmrKl+pcnLTN2ImdBFcGEeJcS
	cOVVKYEgRC2ORjFteG93SyjtmjAtORpaBSZ4u48eiDeKGOBtojL0gCxUzHPIUmvBwT2MIiRy0mTV3
	HNGpQPnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEeY-00C1Hf-L3; Tue, 27 Sep 2022 17:45:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEeU-00C1Gp-BD
	for barebox@lists.infradead.org; Tue, 27 Sep 2022 17:45:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1odEeS-0004M0-UX; Tue, 27 Sep 2022 19:45:48 +0200
Message-ID: <f3f0d847-c37f-599c-fb3a-14de696e4270@pengutronix.de>
Date: Tue, 27 Sep 2022 18:45:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
 barebox@lists.infradead.org
References: <lyr0zw68de.fsf@ensc-pc.intern.sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <lyr0zw68de.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_104550_416154_6ECDDFD3 
X-CRM114-Status: GOOD (  15.32  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Broken ubifs-zstd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Enrico,

On 27.09.22 18:21, Enrico Scholz wrote:
> Hello,
> 
> trying to mount a zstd compressed ubifs fails on an iMX6ULL with
> 
> | ERROR: UBIFS error (ubi0:0): 9fe6691d: cannot decompress 2612 bytes, compressor zstd, error -22
> | ERROR: UBIFS error (ubi0:0): 9fe6692d: cannot decompress 2612 bytes, compressor zstd, error -22
> | ERROR: UBIFS error (ubi0:0): 9fe66a65: bad data node (block 0, inode 815)
> | ERROR:  magic          0x6101831
> 
> (2022.09 and master).
> 
> 
> After reverting
> 
> | commit b4a9782d4f56333e897dccc35c2c27e2605f6b93
> | Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
> | Date:   Wed Jul 13 12:09:18 2022 +0200
> | 
> |     lib: zstd: sync with Linux
> 
> it works again (both in Linux 5.15 and barebox).
> 
> 
> ubifs was created by recent OpenEmbedded kirkstone with
> 
> | MKUBIFS_ARGS = "-F -m 2048 -e 126976 -c 2048 --compr=zstd"
> 
> 
> Warnings are triggered (after fixing assert()) at
> 
> | WARNING: at lib/zstd/decompress/../common/bitstream.h:390/BIT_reloadDStreamFast()!
> 
> 
> Is anybody else experiencing these problems?


I am afraid, I didn't properly test this with UBIFS..

> 
> 
> 
> Enrico
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


