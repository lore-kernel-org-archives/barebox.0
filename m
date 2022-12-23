Delivery-date: Fri, 23 Dec 2022 10:08:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e2D-005u27-TL
	for lore@lore.pengutronix.de; Fri, 23 Dec 2022 10:08:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p8e2B-0004cK-Ol
	for lore@pengutronix.de; Fri, 23 Dec 2022 10:08:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=73xlaZ69EhcKVwVvlYoygGXmJv+4IF4w+h5IS3ri6SM=; b=d2LWbe1Nv3qaov6pn/hmvtIoCy
	zn1P0dnOifhArd3HUtXqxiAmup/gbOpcKMHLQLuFZ25x4mNfgte9Baz++PJUcsWUgYg/M9hgKL/ZH
	YWk6UetMyk/ZV46V2UTmHgVPjGY3zt/8J5F8E3G0Rf7QfaQ9lUM2BEdwIBm+3A0s1dOzwEG3sI1Eq
	REnKhRk+HzODxkiWp/rjV6SRliIXo4oLrPN8VmpCyLSZUgcplKlxk2l9nj2EIyli4fGzmJngtNdw5
	8d+KqFSHKEb+TuVFpff5HJxOo1MA+GRa35aWOJ9g+q+28+75iORiuHHrcim//Om83TuN9+HCrZQ7y
	tShV2kUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e0S-005WQ5-3s; Fri, 23 Dec 2022 09:06:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8e0G-005WNn-GI
	for barebox@lists.infradead.org; Fri, 23 Dec 2022 09:06:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e0E-0004Sr-JZ; Fri, 23 Dec 2022 10:06:06 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p8e0D-0000wi-Pf; Fri, 23 Dec 2022 10:06:05 +0100
Date: Fri, 23 Dec 2022 10:06:05 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org,
	Leif Middelschulte <leif.middelschulte@klsmartin.com>,
	uol@pengutronix.de, ore@pengutronix.de,
	=?utf-8?B?U8O4cmVu?= Andersen <san@skov.dk>
Message-ID: <20221223090605.zis4mcft72crswfm@pengutronix.de>
References: <20221222141201.3087192-1-a.fatoum@pengutronix.de>
 <20221222141201.3087192-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222141201.3087192-6-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_010608_621420_82CEBE77 
X-CRM114-Status: GOOD (  17.52  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 5/6] video: edid: print debug message on EDID read out
 error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 22-12-22, Ahmad Fatoum wrote:
> EDID readout errors happen often, e.g. because the HDMI port doesn't
> have a display connected. However, when a monitor is connected, but some
> other error occurs, barebox is silent. Add a debug message with an error
> code for this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/video/edid.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/video/edid.c b/drivers/video/edid.c
> index 96489f2a372c..7e6747ccd521 100644
> --- a/drivers/video/edid.c
> +++ b/drivers/video/edid.c
> @@ -847,20 +847,27 @@ edid_do_read_i2c(struct i2c_adapter *adapter, unsigned char *buf,
>  		ret = i2c_transfer(adapter, &msgs[3 - xfers], xfers);
>  	} while (ret != xfers && --retries);
>  
> -	return ret == xfers ? 0 : -1;
> +	if (ret == 0)

When does the i2c_transfer() return 0? According the API documentation
this shouldn't happen and if otherwise is a bug in i2c_transfer().

Regards,
  Marco

> +		ret = -EPROTO;
> +
> +	return ret == xfers ? 0 : ret;
>  }
>  
>  void *edid_read_i2c(struct i2c_adapter *adapter)
>  {
>  	u8 *block;
> +	int ret;
>  
>  	if (!IS_ENABLED(CONFIG_I2C))
>  		return NULL;
>  
>  	block = xmalloc(EDID_LENGTH);
>  
> -	if (edid_do_read_i2c(adapter, block, 0, EDID_LENGTH))
> +	ret = edid_do_read_i2c(adapter, block, 0, EDID_LENGTH);
> +	if (ret) {
> +		dev_dbg(&adapter->dev, "EDID readout failed: %pe\n", ERR_PTR(ret));
>  		goto out;
> +	}
>  
>  	return block;
>  out:
> -- 
> 2.30.2
> 
> 
> 


