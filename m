Delivery-date: Wed, 16 Aug 2023 16:29:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWHWx-006QZc-R5
	for lore@lore.pengutronix.de; Wed, 16 Aug 2023 16:29:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWHWw-0006Q6-41
	for lore@pengutronix.de; Wed, 16 Aug 2023 16:29:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RprDn6Xpjpp1ufTsrqQrc1tYxSzkYmz2SX9/ogZeCBg=; b=0q2RjNZUIQl7ZtQpcy9EN1AwXK
	Kjh1EzCQhk5OX+DQ9QH7kmK1b8vPXEiO9wJmNveb8irPqvVKm6MNIv/e2SRDWuVmzYl4hxtvI2Maz
	oe0wjyLcxw1m54UNSNRCV87Sd/vGP9n9dL+Xnfv4dhyIhW/czxRSdz5tolOcAUW2CRnBhe2V9XxZ5
	eQ8Z5Nb6Y4H+eGpu3eKEU7AeUTeCyQVYjSK0gTO3sWljJalzlsQUqjz1SixMr8fVoGNb4AH1oG4bN
	XLcms/PvaqgOu266sAhCqsAbbIw19gNjFSKoMhV5LbSjpxp8jPP2hoR3Ud5r4RErtpWy2/8qSNr2s
	7SPLvWVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWHVb-004MlZ-37;
	Wed, 16 Aug 2023 14:28:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWHVY-004MkW-2S
	for barebox@lists.infradead.org;
	Wed, 16 Aug 2023 14:28:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWHVU-0006Du-Eg; Wed, 16 Aug 2023 16:28:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qWHVT-0006yx-VW; Wed, 16 Aug 2023 16:28:19 +0200
Date: Wed, 16 Aug 2023 16:28:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Lior Weintraub <liorw@pliops.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230816142819.GH5650@pengutronix.de>
References: <PR3P195MB0555163C72FCE82E3A4052F1C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
 <20230816104429.GG5650@pengutronix.de>
 <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PR3P195MB0555F57333C5D9E6A4951C00C315A@PR3P195MB0555.EURP195.PROD.OUTLOOK.COM>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_072824_802280_B1C34E1F 
X-CRM114-Status: GOOD (  24.38  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Barebox PBL with uncompressed barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Aug 16, 2023 at 11:23:26AM +0000, Lior Weintraub wrote:
> Thanks Sascha!
> 
> Before applying the recommended change the trace showed:
> uncompress.c: memory at 0xc000000000, size 0x00300000
> uncompress.c: uncompressing barebox binary at 0x000000c000002b60 (size 0x00030def) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> uncompress.c: jumping to uncompressed image at 0x000000c000100000
> 
> After applying this configuration, the .img file was increased (as expected) and the trace shows:
> uncompress.c: memory at 0xc000000000, size 0x00300000
> uncompress.c: uncompressing barebox binary at 0x000000c000002480 (size 0x0005a9a4) to 0xc000100000 (uncompressed size: 0x0005a9a0)
> uncompress.c: jumping to uncompressed image at 0x000000c000100000
> 
> Indeed is seems link an uncompressed image because the sizes of the
> "compressed" match to the uncompress (well except 4 bytes which
> probably indicate the image size or the compression type (just a
> guess)).
> 
> I assume that the decompress function detects the header and know that
> it is an uncompressed image and then just copy it to another location
> (in my case 0xc000100000).
> 
> Can we avoid this step?
> Since the image was loaded into SRAM we wish to run locally without
> the extra relocation (which also takes simulation time).

I don't think this is easily possible, at least not in an upstreamable
way. Normally barebox puts itself at the end of available RAM and puts
the malloc space directly beneath it.

What you describe here seems to be a very special purpose barebox. What
you could do is to disable PBL support and only build a barebox proper.
Then add your own entry point and jump to start_barebox() from there.
You'll need to copy/adjust the useful things from
barebox_non_pbl_start() as well.

I am not sure what you are trying to archieve here, because copying the
binary usually takes time in the order of milliseconds and that is
normally not a problem.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


