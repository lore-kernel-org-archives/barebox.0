Delivery-date: Tue, 19 Aug 2025 10:54:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoI7L-002BWy-10
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 10:54:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoI7K-0001md-47
	for lore@pengutronix.de; Tue, 19 Aug 2025 10:54:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wfOiC4NAjpwAEimNnKhyQb2iyiq+OVXSuA01kfDKH/Y=; b=1HygItn5rGvP1bA67HSzrSE62U
	h9J+ad/YLP0ceiAzAfAwbY4k8EmS+wzyusLtqPEYiiJacQVaObz9CjRhSBVB1GOIR6cndflXrUtT9
	MU2Zboefb17jNdhSw/OqmggGUmUprCMQoRyP9u3taEpZxEa7g4rYLpbaJbgyOq2VhLAhkKUlGJePU
	80ZDi0jURT5EAmCegwoe7xTV9bmwr7QJHiVtd2Qt8dYJrY/QcYsfR1ltgn57P3u7Gop3xaroyjNNJ
	iv0woI0RWG+qikiHqDlWX2F91JePWfU9OfLzZRQuVhUY+8YEfPqYwhIVtcuQk5Nf51q3m0sFm5Lwb
	inzl7Y6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoI6t-00000009rUa-0EdX;
	Tue, 19 Aug 2025 08:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHZG-00000009mnz-3ngv
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 08:19:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHZF-0005aC-LV; Tue, 19 Aug 2025 10:19:41 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHZF-0012S7-1Z;
	Tue, 19 Aug 2025 10:19:41 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHZF-003mHO-1E;
	Tue, 19 Aug 2025 10:19:41 +0200
Date: Tue, 19 Aug 2025 10:19:41 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250819081941.eq44wdcuvdkvd7rj@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
 <20250818-v2024-05-0-topic-fit-overlay-v5-9-b92e466a1d32@pengutronix.de>
 <aKQhpqWmUjZvWdfY@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKQhpqWmUjZvWdfY@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_011942_942059_066F1AF7 
X-CRM114-Status: GOOD (  25.88  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v5 09/11] FIT: fit_open: make filename handling more
 robust
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-08-19, Sascha Hauer wrote:
> On Mon, Aug 18, 2025 at 07:26:17PM +0200, Marco Felsch wrote:
> > Require the filename to start at the root '/' directory and resolve any
> > possible link to make the filename handling more robust.
> > 
> > This is in preparation of adding cached fit_open support.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/image-fit.c | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/image-fit.c b/common/image-fit.c
> > index 0067f46e60bc954b418aef3398e2c10856b41c02..1cb407d4d86cb3d0a643149bb08c46caadcd56fe 100644
> > --- a/common/image-fit.c
> > +++ b/common/image-fit.c
> > @@ -972,12 +972,25 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
> >   *
> >   * Return: A handle to a FIT image or a ERR_PTR
> >   */
> > -struct fit_handle *fit_open(const char *filename, bool verbose,
> > +struct fit_handle *fit_open(const char *_filename, bool verbose,
> >  			    enum bootm_verify verify, loff_t max_size)
> >  {
> >  	struct fit_handle *handle;
> > +	char *filename;
> >  	int ret;
> >  
> > +	if (*_filename != '/') {
> > +		pr_err("The FIT filename must start with '/'\n");
> > +		return ERR_PTR(-EINVAL);
> > +	}
> 
> Drop this. We want to be able to call fit_open() with relative pathes...

IMHO FIT containers are only used in verified-boot setups. I wouldn't
allow relative paths in such use-cases.

> 
> > +
> > +	/* dirfd is ignored, since _filename is absolute */
> > +	filename = canonicalize_path(AT_FDCWD, _filename);
> 
> ...and you are calling canonicalize_path() anyway which gives you an
> absolute path from the potentially relative input path.

But we don't know the base directory to which this path would relative
too.

> > +	if (!filename) {
> > +		pr_err("Failed to resolve %s with %s\n", _filename, strerror(errno));
> 
> 		pr_err("Cannot open %s: %m\n", filename);
> 
> I think the "Failed to resolve" is misleading here.

You're right, I will change this.

Regards,
  Marco

> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


