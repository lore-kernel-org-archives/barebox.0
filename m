Delivery-date: Mon, 12 Sep 2022 12:41:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgsH-002AEb-MQ
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 12:41:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgsF-0007Uc-OR
	for lore@pengutronix.de; Mon, 12 Sep 2022 12:41:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1qsKssO+Y54GnlJxrL1aGsizGtFsyPUOHNOK7bw5xqU=; b=u0feJBUEEm4z47t4ALXw6sHLkB
	EoGNCdVu0RfuI94XE0oQ/ruURFVEPWYasUWV54yPHcfAMBQk1SsatrlFxHTuGXI7p8G24ZkxAjgmE
	+btyNUjak/FREJ9lNWdi9c0eENSpB3pO0L8k6kJ3T7kCSd+q69ZDAJnUIcyG1F/D1i3M7i5DzFRxm
	moAIKe61fLqOujGIKTULbETO+QQIcFbJENLAoiAffBzJZw3WiCZnYCR+EiluLNCeWxLKwROrWKtCy
	4KyCDPfSDxNenpHq219EFPz6Np2/XBQ8YNTjXJYExHGD3lf9osJEpFFrZx8oqKpx8Ozk+Vpaoeg+N
	OjTi9Zyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXggl-008kWe-Ag; Mon, 12 Sep 2022 10:29:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXgSm-008eFP-1W
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 10:14:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgSk-0003jn-Ka; Mon, 12 Sep 2022 12:14:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgSk-00023x-Bq; Mon, 12 Sep 2022 12:14:46 +0200
Date: Mon, 12 Sep 2022 12:14:46 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912101446.GD6477@pengutronix.de>
References: <20220902100458.2597350-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220902100458.2597350-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_031448_133631_009CDAB8 
X-CRM114-Status: GOOD (  20.79  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] commands: mm: don't ignore pread() errors for larger
 access sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 02, 2022 at 12:04:58PM +0200, Ahmad Fatoum wrote:
> Error check was before pread was called and because ret was initialized,
> compiler didn't warn about it. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/mm.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/mm.c b/commands/mm.c
> index 9ce883964485..8fe87a80a18e 100644
> --- a/commands/mm.c
> +++ b/commands/mm.c
> @@ -16,7 +16,7 @@
>  
>  static int do_mem_mm(int argc, char *argv[])
>  {
> -	int ret = 0;
> +	int ret;
>  	int fd;
>  	char *filename = "/dev/mem";
>  	int mode = O_RWSIZE_4;
> @@ -65,9 +65,9 @@ static int do_mem_mm(int argc, char *argv[])
>  			goto out_write;
>  		break;
>  	case O_RWSIZE_4:
> +		ret = pread(fd, &val32, 4, adr);
>  		if (ret < 0)
>  			goto out_read;
> -		ret = pread(fd, &val32, 4, adr);
>  		val32 &= ~mask;
>  		val32 |= (value & mask);
>  		ret = pwrite(fd, &val32, 4, adr);
> @@ -75,9 +75,9 @@ static int do_mem_mm(int argc, char *argv[])
>  			goto out_write;
>  		break;
>  	case O_RWSIZE_8:
> +		ret = pread(fd, &val64, 8, adr);
>  		if (ret < 0)
>  			goto out_read;
> -		ret = pread(fd, &val64, 8, adr);
>  		val64 &= ~mask;
>  		val64 |= (value & mask);
>  		ret = pwrite(fd, &val64, 8, adr);
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


