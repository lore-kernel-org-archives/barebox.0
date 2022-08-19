Delivery-date: Fri, 19 Aug 2022 09:23:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwLW-003pxl-4y
	for lore@lore.pengutronix.de; Fri, 19 Aug 2022 09:23:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOwLT-0003kh-WE
	for lore@pengutronix.de; Fri, 19 Aug 2022 09:23:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G80hIEpRrre0/RvJFftRDGy9WQ6nMcc7XsAL2EQvl1g=; b=Sd1tvX+uk+Tw0JvLu3DORariDX
	Yz+uIQzoDfuWX0dJJQw3kfvT3I4LDE6cuvsOpl42+k2SDUFBQGJBYDrsdNp3YLSLSYcf6VzRb04Dl
	LJQql997STZ+K8gLki977egDVuY5rx7VrCgtMiWDLNGhEGOowvZnYFVLaGB8XFlVoqPQnvudZo0G6
	PcfqKZ6YpRjWhYBatGTffXaLcWD4i4u8aSVcRrxDf3B4D9b4awaOHMjVPF1UD+CAgBYZev/wdW+Rb
	5vGX+8eN46jJxVNGIwJZgWuqHuMNIrYu+9uq0ivCjBPM6gExumeXrIl/Olkx1mIYqJqD7utAfYfeb
	nFxAQhYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwKP-003GnZ-5a; Fri, 19 Aug 2022 07:22:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOwKL-003Gjm-6m
	for barebox@lists.infradead.org; Fri, 19 Aug 2022 07:21:58 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOwKJ-0003Xx-BV; Fri, 19 Aug 2022 09:21:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oOwKJ-0006Tl-2k; Fri, 19 Aug 2022 09:21:55 +0200
Date: Fri, 19 Aug 2022 09:21:55 +0200
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220819072155.GY17485@pengutronix.de>
References: <cover.1660552646.git.enrico.scholz@sigma-chemnitz.de>
 <71267fc55b72c3d2c86e9b58ef95f3e2f3ba93f4.1660552646.git.enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <71267fc55b72c3d2c86e9b58ef95f3e2f3ba93f4.1660552646.git.enrico.scholz@sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_002157_277094_E6E64C7A 
X-CRM114-Status: GOOD (  26.38  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v3 01/18] progress: add close_progress() to display some
 statistics
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 10:42:05AM +0200, Enrico Scholz wrote:
> With a later patch, this will produce output like
> 
> | :/ cp -v /mnt/tftp/tmp /tmp/
> |         [########...#########] 29138411 bytes, 127413 bytes/s
> 
> Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
> ---
>  include/progress.h  |  1 +
>  lib/show_progress.c | 25 +++++++++++++++++++++++++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/include/progress.h b/include/progress.h
> index 7230bd3a9bd5..219d772201bf 100644
> --- a/include/progress.h
> +++ b/include/progress.h
> @@ -16,6 +16,7 @@ void init_progression_bar(loff_t max);
>   * spinner is printed.
>   */
>  void show_progress(loff_t now);
> +void close_progress(loff_t total);
>  
>  extern struct notifier_head progress_notifier;
>  
> diff --git a/lib/show_progress.c b/lib/show_progress.c
> index 1b624bcb9af8..5b42a2d74b8f 100644
> --- a/lib/show_progress.c
> +++ b/lib/show_progress.c
> @@ -24,6 +24,7 @@
>  static loff_t printed;
>  static loff_t progress_max;
>  static unsigned spin;
> +static uint64_t start_tm;
>  
>  void show_progress(loff_t now)
>  {
> @@ -47,11 +48,35 @@ void show_progress(loff_t now)
>  	}
>  }
>  
> +void close_progress(loff_t total)
> +{
> +	uint64_t now = get_time_ns();
> +	unsigned long speed;
> +	unsigned long delta;
> +
> +	if (now <= start_tm) {
> +		pr_crit("tm mismatch");
> +		return;
> +	}
> +
> +	if (total < 0)
> +		return;
> +
> +	/* convert to ms and add '1' to avoid div-by-zero */
> +	delta = div_u64(now - start_tm, 1000000) + 1;
> +
> +	/* speed is bytes/s */
> +	speed = div_u64(total * 1000, delta);
> +
> +	printf("] %llu bytes, %lu bytes/s", (unsigned long long)total, speed);
> +}

show_progress() doesn't necessarily show the progress in bytes, it could
also be percent, megabytes or anything else. We could maybe rename this
to close_progress_bytes(). Also it would be nice to print the sizes in
human readable form, maybe size_human_readable() could be used here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


