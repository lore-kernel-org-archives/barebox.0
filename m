Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH7XR-00039l-0l
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 13:25:12 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 940DF213E5
 for <barebox@lists.infradead.org>; Mon, 29 Oct 2018 14:24:43 +0100 (CET)
Date: Mon, 29 Oct 2018 14:24:14 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181029142414.30b99d88@yaise-pc1>
In-Reply-To: <20181029115553.uyz3u7cpaxgczguz@pengutronix.de>
References: <20181028142451.23205-1-p@yai.se>
 <20181029115553.uyz3u7cpaxgczguz@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] bootm: abort if kernel is outside the first 128MB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Patrick Boettcher <p@yai.se>, lst@pengutronix.de

On Mon, 29 Oct 2018 12:55:53 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> > index 4cf570e57..42febdc71 100644
> > --- a/arch/arm/lib32/bootm.c
> > +++ b/arch/arm/lib32/bootm.c
> > @@ -121,6 +121,12 @@ static int get_kernel_addresses(size_t
> > image_size, spacing += image_decomp_size;
> >  	}
> >  
> > +	if ((*load_address - mem_start) > SZ_128M) {
> > +		printf("boot aborted: kernel address outside
> > 128MiB "
> > +		       "(0x%08lx)\n", *load_address);
> > +		return -ENOMEM;
> > +	}  
> 
> This is a bit harsh. The 128MiB problem only exists with
> CONFIG_AUTO_ZRELADDR enabled in the kernel, otherwise it's fine to
> put the kernel above that limit.

My patch was also a test-balloon for me to learn. Instead of returning
maybe a warning could be emitted - maybe in verbose mode only?

Hmm, no not in only-verbose-mode, because it my case it silently didn't
work, whereas with an error/warning I would have immediately understood
what's wrong.

> We only put the kernel above the 128MiB limit because we want to find
> a place where the kernel doesn't have to move itself around in order
> to not overwrite itself during decompression.
> 
> Could we instead just use 128MiB as an upper limit to put the kernel
> to?

Would that mean the maximum address is (always):

  load_address = mem_end > SZ_128M ? mem_start + SZ_128M : end_of_ram;
  load_address -= image_size + 1MiB_margin_for_dtb;

or is it only the start_address which has to be inside the first 128MB?

regards,
--
Patrick.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
