Delivery-date: Mon, 15 Dec 2025 12:32:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6oi-00Bj9C-1j
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:32:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6oh-0006TE-Ux
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:32:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7LcQ2Fy8T9oXvIzHQ9ksdZkEytXmfUeCLfgM6v2GDtc=; b=g+cw5spKZGh6Wn2i8mrhvZK0Ks
	dtHfyLROIQ8J6QmQ0kaL6MJEvJ+/MYaX2dloNxxQuLfB/d/2p3P5OEMA87VE0kHn1tWlVjlI0mRal
	lT0yifEfntVHJyQb9Fio/kB1F365dlZNV3Ss6Vdz5S6DwRc5G99/VBOpTMMroI+2hw+qWRK9zZZK+
	kzsuvulRo9XhIukZfRQvBg884mX5UfHVQh4gnDuNEaGvDo4b5Axwp4TrrU5wgasOdj7VE/4ouLr+x
	3X8fvupbds0T3GiFeqHrb/UG722qmaJ9ZZ5LGG0u0FAka6pkyvQWopkPiRNOfXsoXE231ZftRSUUP
	tawuf+ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6oF-00000003WwJ-3v3F;
	Mon, 15 Dec 2025 11:32:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6oD-00000003WvN-2bOR
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:32:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6oC-0006Mg-1s; Mon, 15 Dec 2025 12:32:08 +0100
Message-ID: <b55647ec-22b6-412c-a1bb-72b6156c026f@pengutronix.de>
Date: Mon, 15 Dec 2025 12:32:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-13-62ae16698cff@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251209-devfs-v2-13-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_033209_682004_C9E26904 
X-CRM114-Status: GOOD (  16.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 13/13] ls: use ~0 for FILE_SIZE_STREAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> For stream size files we used to show ((loff_t) -1) as file size which
> is quite unreadable. Use ~0 in this case.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  commands/ls.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/ls.c b/commands/ls.c
> index 1ccd44f7bbc00a03b773b56020a7117ce94b24cd..5c9e0f738b03ae36655b04ec1037811a4abc0423 100644
> --- a/commands/ls.c
> +++ b/commands/ls.c
> @@ -33,8 +33,12 @@ static void ls_one(const char *path, const char* fullname)
>  		return;
>  
>  	mkmodestr(s.st_mode, modestr);
> -	printf("%s %*llu %*.*s", modestr, SIZELEN, s.st_size, namelen,
> -	       namelen, path);
> +	if (s.st_size == FILE_SIZE_STREAM)
> +		printf("%s %*s %*.*s", modestr, SIZELEN, "~0", namelen,
> +		       namelen, path);
> +	else
> +		printf("%s %*llu %*.*s", modestr, SIZELEN, s.st_size, namelen,
> +			namelen, path);
>  
>  	if (S_ISLNK(s.st_mode)) {
>  		char realname[PATH_MAX];
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



