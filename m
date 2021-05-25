Delivery-date: Tue, 25 May 2021 07:16:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPQu-00073r-41
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:16:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPQt-0005or-7d
	for lore@pengutronix.de; Tue, 25 May 2021 07:16:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3AoQZZbsmHxo9WH2iC/YgRWCNiw4HqdEaSYcs+GRDSU=; b=VkSIVMCwDTVTztu2OxrYPvLYs4
	TFWLpeyV913HEDQ5Lnl7lJPcUGH6FHx4sFS6aNvnJshJcgs++Kl+7MK6KUUap08eQQ2uuXdQ2n3Mh
	uLKk6CnPaq699j6OSRB4AUhU3Fm9LZ78l3LEZuIcCu/Sau5YJNPU4+yC10xcGQ0+gjk16OCd4p8aO
	ZD6Wl6Axvu539woj7xYX+lIetd4PTsipyCEvBPN8UhKSbVeebl2rf14mo8naqNwod7nTIqjBwhKih
	jratD5hJqiLYQ7QjhqW3Qx+6zDhyNCcp74YRAjJ/IQhapc6Mxmqnn8Q70vFSNt8W4QZNiRq88uagv
	C67IODZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPPb-003PJZ-JL; Tue, 25 May 2021 05:15:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPPW-003PIy-Nm
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:15:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPPV-0005Ze-4g; Tue, 25 May 2021 07:15:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPPT-0006Yo-Ta; Tue, 25 May 2021 07:15:19 +0200
Date: Tue, 25 May 2021 07:15:19 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210525051519.GK19819@pengutronix.de>
References: <20210521163435.17365-1-m.felsch@pengutronix.de>
 <20210521163435.17365-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210521163435.17365-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:10:15 up 96 days,  8:34, 75 users,  load average: 0.17, 0.17, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_221522_799694_7005BD7C 
X-CRM114-Status: GOOD (  22.48  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/4] commands: mount: replace printf by pr_info
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 21, 2021 at 06:34:32PM +0200, Marco Felsch wrote:
> This allows us to control the output behaviour e.g. booting silently
> to improve boot time.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  commands/mount.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/commands/mount.c b/commands/mount.c
> index ff1d8bc5e5..bb2d1d60f4 100644
> --- a/commands/mount.c
> +++ b/commands/mount.c
> @@ -74,7 +74,7 @@ static int do_mount(int argc, char *argv[])
>  		if (IS_ERR(path))
>  			return PTR_ERR(path);
>  
> -		printf("mounted /dev/%s on %s\n", devstr, path);
> +		pr_info("mounted /dev/%s on %s\n", devstr, path);

Applied all except this one. This is the output from the mount command
and as such it should be printed with printf.

I have no good idea to quiesce such output as we don't have any output
redirection. Maybe we need an additional control knob for printf output.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

