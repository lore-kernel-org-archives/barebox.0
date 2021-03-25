Delivery-date: Thu, 25 Mar 2021 13:27:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPP5J-00081o-QY
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 13:27:33 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPP5J-0006er-0G
	for lore@pengutronix.de; Thu, 25 Mar 2021 13:27:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rE6TDNcjudqyUQJlGv5tI2NBIiWghI8LadXiTtgQ77Q=; b=DrW+CMcP1xXdOH8Gn/Kltuz7r
	O4C4mt1A9tVmTQmhYcXJwm8Qcs0NR3Sppdc/zJd6kzvZKUwbws3m4EHwvxdZv3JEo9zSgNO6wA/UY
	nBONvUTISaSYEqkHMPLBRRmtk6GXyvF6gkSIIRAG6p0Q3ztzzBahizMbPpJfg0/coKYDcHVbbYlwr
	BCDlZhDtV6BNOdYucpeg15nlpxMKIGlBSE+VXd8yR2wKHKIlS3REtKOjS2DAF4BOG6XVGXSC8xv3W
	NcqN2fKZjpdLsPO39RxWz5rJffJxdeioT0oYHNQhLH06z5VN3wh+j2RfH0nuUu9Vf+TR5Y7ffXpOb
	zhHDbd+7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPP44-001NFJ-Kl; Thu, 25 Mar 2021 12:26:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPP3x-001NEi-UN
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 12:26:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPP3v-0006PK-TL; Thu, 25 Mar 2021 13:26:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lPP3v-0007jV-J3; Thu, 25 Mar 2021 13:26:07 +0100
Date: Thu, 25 Mar 2021 13:26:07 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de
Message-ID: <20210325122607.GA609@pengutronix.de>
References: <20210323075035.26816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323075035.26816-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:25:57 up 35 days, 15:49, 94 users,  load average: 0.50, 0.36, 0.39
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_122610_233767_AD32A117 
X-CRM114-Status: GOOD (  22.17  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] common: drop done TODO about 4G partitions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 23, 2021 at 08:50:33AM +0100, Ahmad Fatoum wrote:
> With recent changes, barebox can handle partitions bigger than 4G.
> Remove the todo.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/partitions.c | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/partitions.c b/common/partitions.c
> index 1f0c544c6067..10ce53a6a125 100644
> --- a/common/partitions.c
> +++ b/common/partitions.c
> @@ -7,7 +7,6 @@
>   * @file
>   * @brief Generic support for partition tables on disk like media
>   *
> - * @todo Support for disks larger than 4 GiB
>   * @todo Reliable size detection for BIOS based disks (on x86 only)
>   */
>  #include <common.h>
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

