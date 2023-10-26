Delivery-date: Thu, 26 Oct 2023 23:32:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7xu-0053L9-Lk
	for lore@lore.pengutronix.de; Thu, 26 Oct 2023 23:32:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qw7xt-0005gN-LG
	for lore@pengutronix.de; Thu, 26 Oct 2023 23:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EVP7T7alOf+mfUYuAn0V3LBXGssk/kTBvN+hB92ID0A=; b=Hole97lZ1nnFonW3K2sH3REUic
	EtbFY12yGmvc/RHVq3jzzZHpoGv1TDtv5PLq5D0KqHJhGub9b0JtOPnq0gYUYDowHxYRUTFLhoRwI
	TGLzYv4TmjukLxl8KLg4X2Yj7J+fc7SmYvYU8Ns+N5qFxz6zr3VSLECJOm+fEfmIqEqneCSnXkI48
	8Uzy2hYNx+N2+zNYHfjxpAMekUEqiDYA+CPYmdF1xSkSjTwNNtOaHGMCBviA6OIzHDsNEeL2zgOfW
	Vy9D3DU6g1+Czs7eEkWnN8HCuzCzKCB3SSwTzkzwHRqGgOIEzv6HRxP0yYEFax5wJg67kbKr2n73s
	/BSC6/ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7wn-00FBLv-1V;
	Thu, 26 Oct 2023 21:31:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw7wk-00FBKy-0R
	for barebox@lists.infradead.org;
	Thu, 26 Oct 2023 21:31:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qw7wi-0005OZ-V3; Thu, 26 Oct 2023 23:31:17 +0200
Message-ID: <ad185e1d-416b-8621-7f32-dfe900aaeabf@pengutronix.de>
Date: Thu, 26 Oct 2023 23:31:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20231026144325.4172966-1-m.felsch@pengutronix.de>
 <20231026144325.4172966-2-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20231026144325.4172966-2-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_143118_174161_2F95A4E5 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] scripts: get_maintainers: drop --status
 enforcement
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26.10.23 16:43, Marco Felsch wrote:
> The status parameter is never used so drop it and stop bother the user
> of the script.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/get_maintainer.pl | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/scripts/get_maintainer.pl b/scripts/get_maintainer.pl
> index 7c0d50333400..a19c0e7305d0 100755
> --- a/scripts/get_maintainer.pl
> +++ b/scripts/get_maintainer.pl
> @@ -2,8 +2,6 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  # Dummy get_maintainer.pl script for checkpatch.pl to use
>  
> -die "USAGE: get_maintainer.pl --status\n" unless grep /--status/, @ARGV;
> -
>  print <<'EOT'
>  Sascha Hauer <s.hauer@pengutronix.de> (maintainer:BAREBOX)
>  barebox@lists.infradead.org (open list:BAREBOX)

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



