Delivery-date: Tue, 05 Aug 2025 13:20:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujFiN-007HCU-15
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 13:20:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujFiM-0006jb-Q4
	for lore@pengutronix.de; Tue, 05 Aug 2025 13:20:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Cc:To:Subject:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7UwLkVxj7iUggGhEbvQQe3B5JsA+5SRZUB4UNLu81ME=; b=tp6c+ouoHAvL4OKz/3D/AQIVu5
	UEChdjaax57OQuSZhH5NCIRxva4/nyODzU/Qs2zIF122+vvtM0wpKbUQmpWaOIzy/bo2PqqAgIhyf
	yGnhHYDBvDGKe2fTzw6RxzjzhOlihpq1vg/SpQ8a9SyIYdao6W8vg4PR76qqFZebHKtql6S/Plk2n
	Yf48QzwOxXQWV5PhimwKEaMGz3NmUHf4BrW9u42ybrzXDoDUwOmmvUVxAL8PKA4xPPOVGPG09j5ya
	T4pmF6EVyR0C0WK9NZ+oJBqBrXlrerin+s4YKGY3+/5/kBiH+eI7NV0TVwNoLhC5fW1E3LShohXY2
	hlgPY0yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFhy-0000000CamD-3qq9;
	Tue, 05 Aug 2025 11:19:54 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujFdf-0000000CaGJ-1slp
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 11:15:29 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b783d851e6so4586965f8f.0
        for <barebox@lists.infradead.org>; Tue, 05 Aug 2025 04:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754392525; x=1754997325; darn=lists.infradead.org;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=7UwLkVxj7iUggGhEbvQQe3B5JsA+5SRZUB4UNLu81ME=;
        b=MDPc/G7ziJKVPolp/TuKQ5wH++2y9NqkhBSiwjuVOSOYkXKGmcnr+NJZv4VeqIVh9z
         veOpIvcs9RYBsP2+M2x+LXVkvnENU6Yh+0A9BBe8f5AhtqcurrQCAByZNT9Z3azpovBX
         ewSJt+1IzXgoHB4qLGZgZGx22DtD2du2fu5UsNaNhtyTdDHaBHOpwFYgHBzk5J16qN8/
         WkQleeaz81GAKyScYooMuzyH8UcZGSHjHYgafIRnKMX8XwFaYcXQkxGrh6mQRoTMtnr9
         7dc0I7UILS5cMvKmDL8WO82sSCSUlUE/cH/qqXT7cGJMbmDaA496EMR8dsxnE+M/x2Rk
         CrqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754392525; x=1754997325;
        h=mime-version:references:in-reply-to:message-id:cc:to:subject:from
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7UwLkVxj7iUggGhEbvQQe3B5JsA+5SRZUB4UNLu81ME=;
        b=stnb2U0AM1G5pVl+arLiobqCV2lkhM3B0GyS/4HAo2WzaHc1ddgq1dlJ0lZEOfVpEU
         f/+DO9EOvP6pRg5wVAzkJQSQx0chJSiQ8RVSYzbyht5WPH08IRrhIq3IDfm31Qfb3loo
         Wfc3STMoGBs4EhZod1F78UcFuaYWpqKPCRcaeS/S80qvpKaPvNV5U4KAMinWRkFGuATJ
         ObpdwToGIPyFpK78vRPUa1z3Cm6lAtb4RyV9Y7DEYpJ9coeU/NVJ/Hf5bS+4qTDJiqxy
         Y5HcPi+b4GSXEgml/x2rmh5CutmuwPig66dRsHTinjZMr1HQ7VS3hJVcPxsR98kpWWSY
         e6UQ==
X-Gm-Message-State: AOJu0Yz4V5KAYmOMQd2ztk5bMf50xgdAVFI0DznZ2MrDFh+s4jwloES7
	OyQzhGQNHLvY2b05lwjbykGQmJoEg+Py8NU/6yoXklHDjZrhY+uw36psJnOVIw==
X-Gm-Gg: ASbGncvx32j/WsCbwfCBM8ojy2IL+uyo/2sEUmiIUG0dg4MC2fOGuyn3ndTBDLIRTPU
	tVh9CcPYQwBgxMtcYEt93xuTdKu0NnqidqKiCTkcRDAXRSR0VYOkNPZY5qF4oM8oJ2UTxjPzUKL
	HtMf67Ia4N/b+cdyHiJ1ZlQXtQZLvU5WCbTnWiDNStLxvh9N6ymW91T6oLop/Kb36P38bhv4m/m
	hIy5GVFeDHtq9Bfm0Z62PAfOd6E/aRu8CrZBK12zNCy9I77p4q/jCXQkAa7SIsQkmdh2R06h66J
	ofxx9bKlhdvlzvcpRUThnu+QDFWn2y7UxMkY1NwZRDGT3UM1G+8nzYRaXn7QSOjTMPYoTMK9lez
	YSsZsFkMHPok9yCh0sNyjI9Wrsh4EVnjuZfbkaUOQ6/cV2+MmHJkewH091Ve19879
X-Google-Smtp-Source: AGHT+IE0dKOhWZNz/aqhKZ1gszvVNRNyAM304Q+VGg/3tA5hKHkCXceiiY3XYH48EweOqnbKT35u2A==
X-Received: by 2002:a05:6000:26cb:b0:3b7:8c98:2f4c with SMTP id ffacd0b85a97d-3b8d94bac01mr9010202f8f.33.1754392524934;
        Tue, 05 Aug 2025 04:15:24 -0700 (PDT)
Received: from [192.168.241.169] (2-224-27-56.ip168.fastwebnet.it. [2.224.27.56])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b79c469582sm18558241f8f.52.2025.08.05.04.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 04:15:24 -0700 (PDT)
Date: Tue, 05 Aug 2025 15:14:56 +0200
From: Stefano Manni <stefano.manni@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum
	<a.fatoum@pengutronix.de>
Message-Id: <WGVI0T.84MQHXOHEEW01@gmail.com>
In-Reply-To: <20250805072537.3484221-1-s.hauer@pengutronix.de>
References: <20250805072537.3484221-1-s.hauer@pengutronix.de>
X-Mailer: geary/46.0
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_041527_484313_8E7DCAFC 
X-CRM114-Status: GOOD (  17.04  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] cdev: fix mtd partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On mar, ago 5 2025 at 09:25:37 +02:00:00, Sascha Hauer 
<s.hauer@pengutronix.de> wrote:
> devfs-core.c implements the partition handling only for devices that 
> are
> not MTD devices. MTD devices have their own partition handling in
> drivers/mtd/partition.c, see the special case in 
> __devfs_add_partition()
> for MTD devices. This means for MTD devices we have to pass the 
> original
> cdev to the ops, not the master cdev.
> 
> Fixes: 6d2b6f399c07 ("cdev: pass master cdev to cdev ops")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/devfs-core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 52490576b7..9c2dae5545 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -226,6 +226,10 @@ int cdev_find_free_index(const char *basename)
> 
>  static struct cdev *cdev_get_master(struct cdev *cdev)
>  {
> +	/* mtd devices handle partitions themselves */
> +	if (cdev->mtd)
> +		return cdev;
> +
>  	while (cdev && cdev_is_partition(cdev))
>  		cdev = cdev->master;
> 
> --
> 2.39.5
> 

Tested-by: Stefano Manni <stefano.manni@gmail.com>







