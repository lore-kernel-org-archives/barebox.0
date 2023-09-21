Delivery-date: Thu, 21 Sep 2023 14:05:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIR6-005qiu-La
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:05:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIR4-0002gs-L3
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:05:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SMnYEBAt5G/QmmI/Q/EF3QVkmlue4mnKwXaJ8n4sQFk=; b=TUF2tMZ5m0VeHJ8SfVBIcrTd/y
	Dtftou9BzXE5Hj7mH4AU6D3UclpZRGdMfH8quLyoUz7S4pS8+5uMW8vcfIhpsa+EFuH0KBtTy2nXZ
	NrOkggSd+JjonvmSDgWyKeaSl/FnrMnfyjd4mJZROZ52RK5Cx9GlpsLl/nJXaSwpCc/A+7sFQu0dc
	IRK/oZZ8yYq7CB0bwmLBJVzlOtyndgX6DArGkIh0rSZTtMYagvlLJ3kanUmDds30B7vPCtxWoPCmG
	W1FjmcCHt1NEBCfe31C7XstIB47XsVEH6x1WWvHuVDWqu7CgQLD2PfQqAeux2ydDsTrUmU06j16d0
	jyNnv8fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIPx-005xt2-0G;
	Thu, 21 Sep 2023 12:04:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIPt-005xsS-17
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:04:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIPr-0002IA-T0; Thu, 21 Sep 2023 14:04:19 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIPr-007unp-Ga; Thu, 21 Sep 2023 14:04:19 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIPr-00AkpX-EF; Thu, 21 Sep 2023 14:04:19 +0200
Date: Thu, 21 Sep 2023 14:04:19 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Juergen Borleis <jbe@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <20230921120419.GJ637806@pengutronix.de>
References: <20230914095859.22166-1-jbe@pengutronix.de>
 <20230914095859.22166-2-jbe@pengutronix.de>
 <20230916160115.mp23mo2mxdfxfwix@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230916160115.mp23mo2mxdfxfwix@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_050421_386797_B31E68E7 
X-CRM114-Status: GOOD (  35.54  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] uncompress: add Android sparse image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sat, Sep 16, 2023 at 06:01:15PM +0200, Uwe Kleine-König wrote:
> On Thu, Sep 14, 2023 at 11:58:59AM +0200, Juergen Borleis wrote:
> > An Android sparse image file generated by the 'genimage' tool can be seen as a
> > kind of compression, since it contains only the data which should really be
> > written to a device.
> > 
> > This implementation writes only the intended content and skips anything else.
> > 
> > Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
> 
> Tested-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> 
> while this obviously works, I still have a comment below:
> 
> > ---
> >  lib/uncompress.c | 82 +++++++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 78 insertions(+), 4 deletions(-)
> > 
> > diff --git a/lib/uncompress.c b/lib/uncompress.c
> > index 0608e9f..f17e9ce 100644
> > --- a/lib/uncompress.c
> > +++ b/lib/uncompress.c
> > @@ -25,6 +25,10 @@
> >  #include <malloc.h>
> >  #include <fs.h>
> >  #include <libfile.h>
> > +#ifdef CONFIG_IMAGE_SPARSE
> > +#include <image-sparse.h>
> > +#include <linux/sizes.h>
> > +#endif
> >  
> >  static void *uncompress_buf;
> >  static unsigned int uncompress_size;
> > @@ -60,6 +64,71 @@ static int uncompress_fill(void *buf, unsigned int len)
> >  	return total;
> >  }
> >  
> > +#ifdef CONFIG_IMAGE_SPARSE
> > +static int uncompress_sparse(int source, int destination)
> > +{
> > +	int ret = 0;
> > +	struct sparse_image_ctx *sparse;
> > +
> > +	/* rewind after checking the file type */
> > +	lseek(source, 0, SEEK_SET);
> > +
> > +	sparse = sparse_image_fd(source);
> > +	if (IS_ERR(sparse)) {
> > +		pr_err("Failed to open or interpret sparse image file: %m\n");
> > +		ret = 1;
> > +		goto on_error_dev;
> > +	}
> > +
> > +	const size_t transfer_buffer_length = SZ_128K;
> > +	unsigned char *buf = malloc(transfer_buffer_length);
> > +	if (!buf) {
> > +		pr_err("Failed to alloc memory for the transfers\n");
> > +		ret = 1;
> > +		goto on_error_sparse;
> > +	}
> > +
> > +	while (1) {
> > +		loff_t write_offset;
> > +		size_t write_length;
> > +
> > +		int rc = sparse_image_read(sparse, buf, &write_offset, transfer_buffer_length, &write_length);
> > +		if (rc) {
> > +			ret = 1;
> > +			goto on_error_memory;
> > +		}
> > +		if (!write_length)
> > +			break;
> > +
> > +		discard_range(destination, write_length, write_offset);
> > +
> > +		write_offset = lseek(destination, write_offset, SEEK_SET);
> > +		if (write_offset == -1) {
> > +			pr_err("Failed to set next data's destination offset: %m\n");
> > +			ret = 1;
> > +			goto on_error_memory;
> > +
> > +		}
> > +
> > +		rc = write_full(destination, buf, write_length);
> > +		if (rc < 0) {
> > +			pr_err("Failed to write destination's next data: %m\n");
> > +			ret = 1;
> > +			goto on_error_memory;
> > +		}
> > +	}
> > +
> > +on_error_memory:
> > +	free(buf);
> > +on_error_sparse:
> > +	free(sparse); /* Note: sparse_image_close(sparse); would also close the input file descriptor */
> > +on_error_dev:
> > +	return ret;
> > +}
> > +#endif
> > +
> > +static int uncompress_infd, uncompress_outfd;
> > +
> >  int uncompress(unsigned char *inbuf, int len,
> >  	   int(*fill)(void*, unsigned int),
> >  	   int(*flush)(void*, unsigned int),
> > @@ -121,6 +190,10 @@ int uncompress(unsigned char *inbuf, int len,
> >  	case filetype_xz_compressed:
> >  		compfn = decompress_unxz;
> >  		break;
> > +#endif
> > +#ifdef CONFIG_IMAGE_SPARSE
> > +	case filetype_android_sparse:
> > +		break;
> >  #endif
> >  	default:
> >  		err = basprintf("cannot handle filetype %s",
> > @@ -131,16 +204,17 @@ int uncompress(unsigned char *inbuf, int len,
> >  		goto err;
> >  	}
> >  
> > -	ret = compfn(inbuf, len, fill ? uncompress_fill : NULL,
> > -			flush, output, pos, error_fn);
> > +	if (ft == filetype_android_sparse)
> > +		ret = uncompress_sparse(uncompress_infd, uncompress_outfd);
> > +	else
> > +		ret = compfn(inbuf, len, fill ? uncompress_fill : NULL,
> > +			     flush, output, pos, error_fn);
> 
> Wouldn't it be more natural to make uncompress_sparse use the same
> prototype as the other uncompress functions and then just have:
> 
> #ifdef CONFIG_IMAGE_SPARSE
> 	case filetype_android_sparse:
> 		compfn = decompress_sparse;
> 		break;
> #endif
> 
> Without the need to adapt the compfn call?

compfn() doesn't have access to the file descriptors which the current
sparse implementation needs.

It would be great though to let our sparse image support use an input
buffer and a fill() function.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


