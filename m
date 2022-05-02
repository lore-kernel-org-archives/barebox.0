Delivery-date: Mon, 02 May 2022 16:03:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlWdk-006AA0-SP
	for lore@lore.pengutronix.de; Mon, 02 May 2022 16:03:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nlWdi-0006uv-1N
	for lore@pengutronix.de; Mon, 02 May 2022 16:03:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HljMtt2x2buX+GKP8i5ujpdg3Ks3CvS4askp2fNLfRE=; b=0VoKD/rb5jPz5A
	3FGnEMTH7IVrFri2jkUWQzyuHe4euW/dp6/jduIAPYVDusbf9y9u0PNTllto0QQ/dsjAu+xHxAlOe
	XleIo9dxPA5315QMIszRMfNWcQ1h5XbpCVgZiieOdY5gGG/MAEow+SCWm1Yc5L5MxBegbyvmnPJjr
	cwRA0O/v98A+tS5gIZsXxgecQTMO9n+hYiVpHGtqDE+ciU82VsrvGQQKwpd/V7DCKwZMwRZB5yHJ8
	9XqAwM2MtQWvV4eTUFs75sQitIumScgNifOMlp9NX9lPhBRwEw5E3uxgjPzIF4Sv0sDrJ1jkL96Lp
	+9RGXRvXsT+bRuov5CNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlWbt-001Kmc-Mu; Mon, 02 May 2022 14:01:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlWbk-001KkE-3X
 for barebox@lists.infradead.org; Mon, 02 May 2022 14:01:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1nlWbe-0006HB-4b; Mon, 02 May 2022 16:00:54 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1nlWbc-0001w0-Is; Mon, 02 May 2022 16:00:52 +0200
Date: Mon, 2 May 2022 16:00:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Matthias Fend <matthias.fend@emfend.at>
Cc: barebox@lists.infradead.org
Message-ID: <20220502140052.GC2021@pengutronix.de>
References: <20220501182607.38125-1-matthias.fend@emfend.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220501182607.38125-1-matthias.fend@emfend.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:42:29 up 33 days,  2:12, 89 users,  load average: 0.02, 0.08, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_070100_187916_C653369D 
X-CRM114-Status: GOOD (  32.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: zynqmp-fpga: do not load PL with ONLY_BIN flag
 unless necessary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 01 May 2022 20:26:07 +0200, Matthias Fend wrote:
> Since pmu-fw release 2018.3, the ZYNQMP_FPGA_BIT_ONLY_BIN flag is no
> longer used. This wasn't a problem for a while, but in newer versions a
> validation sequence will fail if this flag is set. This means that the PL
> can no longer be loaded.
> 
> Do not set the ZYNQMP_FPGA_BIT_ONLY_BIN flag unless absolutely necessary
> to avoid this problem.

Thanks for the patch.

> 
> Signed-off-by: Matthias Fend <matthias.fend@emfend.at>
> ---
>  drivers/firmware/zynqmp-fpga.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
> index 63d7398fd..db34ac2be 100644
> --- a/drivers/firmware/zynqmp-fpga.c
> +++ b/drivers/firmware/zynqmp-fpga.c
> @@ -261,9 +261,10 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
>  		goto err_free_dma;
>  	}
>  
> -	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
> +	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
> +		flags &= ~ZYNQMP_FPGA_BIT_ONLY_BIN;

I would prefer if the flag is initialized as unset and only set, if the
bitstream does not have headers. This would be a lot clearer, than resetting
the flag based on a version dependent feature flag with a different name.

If I understand correctly, the newer versions of the PMUFW don't support
loading a bitstream without headers at all. Maybe we should have a feature
flag for bitstreams without headers, but maybe it is enough to just let the
PMUFW reject the bitstream in these cases.

Michael

>  		buf_size = body_length;
> -	else
> +	} else
>  		buf_size = addr + body_length;
>  
>  	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
> -- 
> 2.25.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           | Michael Tretter             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

