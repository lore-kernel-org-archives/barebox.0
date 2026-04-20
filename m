Delivery-date: Mon, 20 Apr 2026 09:46:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjKT-00EGbk-32
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 09:46:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEjKT-0007rO-CM
	for lore@pengutronix.de; Mon, 20 Apr 2026 09:46:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OyB+GtXdcG6LcFIfJP2HFO5v/wSXeY1iaSygMyHoQGU=; b=ijjBpeEv5KKHJbkLbulUFAp1FL
	tSjBEjWasH6Ftnpf0tz13dF+2iZ3LQaPoKwnfQt2OrDZyZlQ2pUa64ygClWfpK8JcR89Qu7vTDMqj
	gz6kVGNzSI9wlce1J/Jaj8a+luh9DDjZcx3c2wsF9I6/oqpHkt7rGnIzjXY0naguFcMrrR+p3jE44
	rphmkvrLHvLxXShfob6DPe+ao/tZD4rcnsERT1KtFgv8k51dNjjDAikKmNlkzW76cJt+uLduG/xN6
	Y2YVZzRFQd2mguHFZpTFzPJaVhVh3hmWmFqQ36YR1qMv2iPz47y36qRYDyq0CHeBKxRVa7JvihpxD
	xH5cR4NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjJk-00000006YwG-2Ozq;
	Mon, 20 Apr 2026 07:45:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEjJh-00000006Yvg-3lLu
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 07:45:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjJd-0007cL-VK; Mon, 20 Apr 2026 09:45:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjJd-006IM9-2W;
	Mon, 20 Apr 2026 09:45:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wEjJd-00000004Dlz-2sdD;
	Mon, 20 Apr 2026 09:45:09 +0200
Date: Mon, 20 Apr 2026 09:45:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Message-ID: <aeXZhavfJQ2OGz34@pengutronix.de>
References: <20260417084414.137087-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260417084414.137087-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_004514_069740_504A702D 
X-CRM114-Status: GOOD (  20.99  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fs: avoid setting root or rootopts to literal string
 "<NULL>"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Apr 17, 2026 at 10:44:14AM +0200, Sascha Hauer wrote:
> linux.bootargs.root and linux.bootards.rootopts might be unspecified in
> which case dev_get_param() returns a literal "<NULL>" string. Avoid
> setting root and rootopts to that string.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 6a73a5baa2..0c53881a92 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1251,8 +1251,14 @@ void fsdev_get_linux_root_options(struct fs_device *fsdev,
>  				  const char **root, const char **rootopts)
>  {
>  	if (fsdev) {
> -		*root = dev_get_param(&fsdev->dev, "linux.bootargs.root");
> -		*rootopts = dev_get_param(&fsdev->dev, "linux.bootargs.rootopts");
> +		const char *s;
> +
> +		s = dev_get_param(&fsdev->dev, "linux.bootargs.root");
> +		if (s)
> +			*root = s;

This can't work. I said in the commit message dev_get_param returns a
literal "<NULL>" string, so testing for non NULL here makes no
difference.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


