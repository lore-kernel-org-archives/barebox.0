Delivery-date: Wed, 26 May 2021 14:09:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llsLg-0007nV-AK
	for lore@lore.pengutronix.de; Wed, 26 May 2021 14:09:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llsLe-0005mo-K1
	for lore@pengutronix.de; Wed, 26 May 2021 14:09:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIQF1umMKGtANMsbrmr91wknVOmYgPMbXUbbRJrJRck=; b=4/SSgSa6h21jgA
	C73ImGLhEeQlKzBv4d6XLxGeEwFu7rWFvs4Xa8zdcyPy/bnyYXvIyXcWp2J9y+RflaoJrswIt8ygJ
	kM5MuCWa1zGBw7t0csUO6rh1IelecPgFBf3izYaZhZpK7OLv7rbv921x+idmLl6KwDm2HIcoMCm3O
	2WijJzRJSZjRKEa+mDZn6A0m7CC/NikiJZSjlrjNT6aHyKwH0w9gwqmH77xigGIhh437hnFOJ+zqn
	3bIEMT+PKILDopooYOOb6/AxLXwvhbT6LXKwgAZc+YVM4n+o+rpu0TaSAyxZ1h9+Syw4uBWkp7uUu
	KYfVyZdRlty3fVhhT3cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llsK3-00Dp2L-4Y; Wed, 26 May 2021 12:07:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llqJB-00D2xN-T7
 for barebox@lists.infradead.org; Wed, 26 May 2021 09:58:39 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1llqJA-0006G8-F0; Wed, 26 May 2021 11:58:36 +0200
Message-ID: <ce90316cb8908dcbebee9bcf510611d244841153.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 26 May 2021 11:58:35 +0200
In-Reply-To: <8389275f-beb6-2b85-d031-3407b571109c@pengutronix.de>
References: <20210525183733.3345497-1-l.stach@pengutronix.de>
 <20210525183733.3345497-2-l.stach@pengutronix.de>
 <fbe5be0e-a312-c34d-ccbd-cbfdb0bb698d@pengutronix.de>
 <4037510acbba84d59bdacfd787ac598a075b03a9.camel@pengutronix.de>
 <8389275f-beb6-2b85-d031-3407b571109c@pengutronix.de>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_025838_004802_0B07FC29 
X-CRM114-Status: GOOD (  28.91  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] bootm: add support for booting compressed images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Am Mittwoch, dem 26.05.2021 um 11:41 +0200 schrieb Ahmad Fatoum:
> On 26.05.21 11:39, Lucas Stach wrote:
> > Hi Ahmad,
> > 
> > Am Mittwoch, dem 26.05.2021 um 11:17 +0200 schrieb Ahmad Fatoum:
> > > Hello Lucas,
> > > 
> > > On 25.05.21 20:37, Lucas Stach wrote:
> > > > ARM64 does not have a self extracting image format, but relies on the image
> > > > being externally compressed with one of the standard compression algorithms.
> > > > 
> > > > Add support for decompressing the bootm OS image. It is added in common
> > > > code as it may also be useful for other images/architectures.
> > > > 
> > > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > > ---
> > > >  common/bootm.c | 92 ++++++++++++++++++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 92 insertions(+)
> > > > 
> > > > diff --git a/common/bootm.c b/common/bootm.c
> > > > index 092116beb94a..2bfb5cb01593 100644
> > > > --- a/common/bootm.c
> > > > +++ b/common/bootm.c
> > > > @@ -12,6 +12,7 @@
> > > >  #include <environment.h>
> > > >  #include <linux/stat.h>
> > > >  #include <magicvar.h>
> > > > +#include <uncompress.h>
> > > >  
> > > >  static LIST_HEAD(handler_list);
> > > >  
> > > > @@ -808,6 +809,85 @@ err_out:
> > > >  	return ret;
> > > >  }
> > > >  
> > > > +static int do_bootm_compressed(struct image_data *img_data)
> > > > +{
> > > > +	struct bootm_data bootm_data = {
> > > > +		.oftree_file = img_data->oftree_file,
> > > > +		.initrd_file = img_data->initrd_file,
> > > > +		.tee_file = img_data->tee_file,
> > > > +		.verbose = img_data->verbose,
> > > > +		.verify = img_data->verify,
> > > > +		.force = img_data->force,
> > > > +		.dryrun = img_data->dryrun,
> > > > +		.initrd_address = img_data->initrd_address,
> > > > +		.os_address = img_data->os_address,
> > > 
> > > I am wondering whether it makes sense to directly extract
> > > to os_address to avoid the extra copy. Depending on the subsequent
> > > bootm handler, the image may still need to be relocated, but if
> > > we choose a generous alignment here, the copy later on could
> > > be avoided.
> > 
> > For the common case where we let Barebox/the bootm image handler decide
> > where to put the OS image, we don't know this address yet when
> > decompressing the image here. I don't think it makes sense to optimize
> > the special case where the OS address is already known.
> 
> I see. A debug print for higher verbosity levels, just before invoking
> bootm_boot would be nice, so it's easy to find out how long the
> extraction took.

Actually due to the way this is implemented as nested bootm you kind of
get this naturally. The output when booting a compressed image looks
like this:

blspec: booting someboard from somewhere
Loading LZO compressed 'somewhere/Image.lzo'
Loading ARM aarch64 Linux image '/tmp/bootm-compressed-6504dc00'
Loading devicetree from 'somewhere/someboard.dtb'

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

