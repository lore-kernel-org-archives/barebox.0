Delivery-date: Tue, 13 Jan 2026 14:06:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfe64-000svc-3B
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 14:06:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfe63-0004N5-Vc
	for lore@pengutronix.de; Tue, 13 Jan 2026 14:06:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cXoBWLtqSFOB+X5YwV99pKkDVi23ng22OB4xADwfxI8=; b=l3gDPIOX7+jB+Kzl9K0dmp27zz
	qqARKfA54mGF8VtpSeD303r+qBSrYzwKD2SH5nbQh9ETE2Oszp76fcV/YR0QXhq9mY+mlps1KOPpa
	oDfeECtatHN3HSv05b5EI6iibrY2Ih4IoLXawXjnFh6591835JTKvVokvALVnZd/QTJCLj6n60mJT
	elrQ2c2jwKuqESiUlXyWZSqw2TIrFCJn1XuZrcxrLDzxrKflez/7v/iB1pWK9ATPtpCAKRcFFY8gV
	PTEByQO84rldPqNui1a7JX1ynV7GmQX3NPrM96uWY4mxghHG3VR6YEREyNeZ6oBrytEoV+Vny6nOU
	r+P0Sk0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfe5M-000000077ym-2wcn;
	Tue, 13 Jan 2026 13:05:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfe5K-000000077yJ-2nzi
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 13:05:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vfe5H-00049z-HE; Tue, 13 Jan 2026 14:05:19 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vfe5I-000Qgt-01;
	Tue, 13 Jan 2026 14:05:19 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vfe5H-009sja-0n;
	Tue, 13 Jan 2026 14:05:19 +0100
Date: Tue, 13 Jan 2026 14:05:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aWZDD7Ro-4Dj1pHO@pengutronix.de>
References: <20260112085617.2952747-1-a.fatoum@barebox.org>
 <20260112085617.2952747-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260112085617.2952747-2-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_050522_708245_3EDDBEB5 
X-CRM114-Status: GOOD (  19.96  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] commands: md: fix OOB read when mmapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jan 12, 2026 at 09:56:05AM +0100, Ahmad Fatoum wrote:
> md -s /dev/mmappable.device will read out-of-bounds if the byte count to
> read exceeds the device size.
> 
> Limit the size read from the memmap to fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  commands/md.c    | 4 ++++
>  common/ratp/md.c | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/commands/md.c b/commands/md.c
> index f3758f571fb2..401538d4d8be 100644
> --- a/commands/md.c
> +++ b/commands/md.c
> @@ -25,6 +25,7 @@ static int do_mem_md(int argc, char *argv[])
>  	loff_t	start = 0, size = 0x100;
>  	int	r, now;
>  	int	ret = 0;
> +	struct stat st;
>  	int fd;
>  	char *filename = "/dev/mem";
>  	int mode = O_RWSIZE_4;
> @@ -54,6 +55,9 @@ static int do_mem_md(int argc, char *argv[])
>  		return 1;
>  	}
>  
> +	if (!fstat(fd, &st) && st.st_size != FILE_SIZE_STREAM)
> +		size = min(size, st.st_size);

This should take start into account.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


