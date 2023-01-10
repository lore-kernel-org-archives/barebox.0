Delivery-date: Tue, 10 Jan 2023 15:34:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFiC-007q1t-0t
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 15:34:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFFiA-0003Zx-Ah
	for lore@pengutronix.de; Tue, 10 Jan 2023 15:34:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4B0ZEStLZuPVIiS7KV43un4mPxebkJ9gubUuJD3eMrI=; b=t4gpo7I7H5s+8ZfSVaURJBBAuy
	5I28RZxo0dPqvmJV7IB4ydQYTmsnWEr2UqM9GDX41kwNwjU7fSu5bfRtNrWUwv6oh11DTJ4j9VjFT
	Zz58dY7UOMtGw6rkpelvzhcdZzaCfLwsP8n+LUVZPANUGsNPzk3IwEAQHFnXyGpur6hoJj/lteVwQ
	RA5i36I0MFIIkKcu8nLDA01+KzU1SVp0LfW+vZYWEOm6AWIkddVSNLKC3zlYE3Nn1046xd73nbLu3
	FzM8Hbk3Vj0OswpMeDuuJXU5W1Lrq6B8FGn+3EYlmrvmFNxNMsC6dPxFAHu1xC1xHTMm0bwxtCi3b
	AAwt3JkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFh0-007JtW-B6; Tue, 10 Jan 2023 14:33:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFFgv-007Jsj-DA
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 14:33:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFgu-0003Rj-4b; Tue, 10 Jan 2023 15:33:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFFgt-0004Fq-TR; Tue, 10 Jan 2023 15:33:27 +0100
Date: Tue, 10 Jan 2023 15:33:27 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230110143327.GE28911@pengutronix.de>
References: <20230110085237.3440824-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230110085237.3440824-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_063329_465928_34C93DEC 
X-CRM114-Status: GOOD (  17.63  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] i2c: imx: increase timeout in i2c_fsl_poll_status
 from 1 to 5ms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 10, 2023 at 09:52:37AM +0100, Ahmad Fatoum wrote:
> The current wait time of 1 ms is apparently too short in some
> circumstances leading to following error when communicating
> with a KSZ switch with 100 kHz from an i.MX8MN I2C controller:
> 
>   ERROR: ksz9477-i2c ksz85630: error detecting KSZ9477: I/O error
> 
> Increasing the poll time to 5ms resolved this issue:
> 
>   ksz9477-i2c ksz85630: Found KSZ9893
>   ksz9477-i2c ksz85630: chip id: 0x00989360
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/i2c/busses/i2c-imx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


