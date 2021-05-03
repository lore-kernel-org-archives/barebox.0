Delivery-date: Mon, 03 May 2021 13:21:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWdu-0002uX-Ku
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:21:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWdt-0004lZ-RO
	for lore@pengutronix.de; Mon, 03 May 2021 13:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aGmTBSWSPqqy+GzkKi+fYDeDuXRuvog43++L4yIaPIo=; b=XYNtY9iTNJVq+BFAtwGix5Rf5
	bJKVGb0V4t9lYMbVvOmupIjtGcwNmU0Rf/RD3SwiEs+qFyY9c6EAsFCp8V+jCiN+UFSdHugENqT/c
	xZ0pBDRSlwH5MZqn3XnPS6QhceOZ9uoV0NWqaU3l29avtpEjXd6Kpa3eRsr8uwzfFY/QqlsBaKCk8
	sX2V3X78Enq30pOF6oWNEAw0AFps2X3IvvkYELiR63YodZpzHSXtDDxpFlxKevQsPaIluBi2FMqzY
	ObU5VGeqSu/DXCrlLu/xdRVazTXaiOQ+CIlOIjsLk0JFY6WS/5wuTzvJxB/Z28U+0zpu/y+gmcIfF
	HUQRvkNSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWcC-00Djn5-22; Mon, 03 May 2021 11:19:52 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWZE-00Djgd-26
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:17:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=qZn58WZ6Y0azg7vc9+pduCQibrJAk0QxRXdN32ZvVqo=; b=e885ahCsS3Oxrd7qkgMRWUlrlo
 xDlf5x7KOP/No5cpwnZGmvlVnen0E9LavC3M3hsBob2OskK97iD05q+1imv9C+njyUiXVwjJHGFxF
 0Kb8S5W0L8UOCEALTYAzW1IOmqRiJRER3kJFEQqRrjAGcJ3gjoTH+KhzQZU0Ja1730ggDid9jzR3h
 gUSF5IrwzKWQrMr+6FdiyH83htXyFxCinglhTfuFWT3gIztGBhrkcSvwsTIepH0ke/7OfYqmPUZk2
 A1xFanD+Mz5Ar7TjJNmV+EDDtzLtWNs9t2OfPWfUohIp4e/MZegGK9ZF6rcXW2MJc+NuIiV91fXhI
 F2Trg+lg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWZB-0030N2-7u
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:16:46 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWZ9-00049x-Mg; Mon, 03 May 2021 13:16:43 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWZ9-0000yo-6S; Mon, 03 May 2021 13:16:43 +0200
Date: Mon, 3 May 2021 13:16:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210503111643.GY19819@pengutronix.de>
References: <20210426143025.149717-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210426143025.149717-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:53:35 up 74 days, 14:17, 101 users,  load average: 0.01, 0.05,
 0.07
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_041645_303617_2A825081 
X-CRM114-Status: GOOD (  23.14  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Antony,

On Mon, Apr 26, 2021 at 05:30:25PM +0300, Antony Pavlov wrote:
> The global.endianness variable makes it possible
> to determine current endian mode from command
> line or from script on bi-endian capable system.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  common/globalvar.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/common/globalvar.c b/common/globalvar.c
> index a55b38b00f..75ce6331b7 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
>  
>  static int globalvar_init(void)
>  {
> +	const char *endianness;
> +
>  	register_device(&global_device);
>  
>  	if (IS_ENABLED(CONFIG_NVVAR))
> @@ -651,6 +653,13 @@ static int globalvar_init(void)
>  	if (strlen(buildsystem_version_string) > 0)
>  		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
>  
> +	if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
> +		endianness = "big";
> +	else
> +		endianness = "little";

PowerPC is for sure big endian, but doesn't set CONFIG_CPU_BIG_ENDIAN,
so will be erroneously be identified as little endian with this patch.
Either you fix that or depend on something like #if __BYTE_ORDER ==
__LITTLE_ENDIAN

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

