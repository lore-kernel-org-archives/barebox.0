Delivery-date: Tue, 19 Aug 2025 11:23:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoIZE-002C5G-2S
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 11:23:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoIZD-0005so-HR
	for lore@pengutronix.de; Tue, 19 Aug 2025 11:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eLc4mIUSw2cfnH7HrD5HHofpnLHe0vNgk3B5RTJ5L2c=; b=shpVNWxZ/5jraxMM9j3JnRXD0p
	dQ2/Bvdn9DEcr/75X96eK70INwrw6UYUjxRWSrozmB/TQnYSAIz2HqOexuCIWxdF209iUufrJ1KPg
	h9ECouEiRrWteV6K1EuEz3NV9yqnaSdJOhI5HiLNvziwewCBhCSiB6vqzc3jm81AQkPMc9qgAKu3C
	tGbi+i/jqbMUMTFIITjHKfiXSoR/A2tFFwa4VYNc1L1GbHIKZcLMxz2j0fymxsEXB8ehEZHywzYY8
	IzQUy0FczwA1/Knc2rlv1SSAvOWjNWPQT7De9PIbex54kOnbscvTm9f1YXXwFb9aaQq+zX479XGje
	fmaDILgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoIYk-00000009wVh-2jIG;
	Tue, 19 Aug 2025 09:23:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoHzW-00000009qaf-1oiv
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 08:46:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHzU-0000jZ-NC; Tue, 19 Aug 2025 10:46:48 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHzU-0012ZS-1j;
	Tue, 19 Aug 2025 10:46:48 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uoHzU-003ml0-1L;
	Tue, 19 Aug 2025 10:46:48 +0200
Date: Tue, 19 Aug 2025 10:46:48 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20250819084648.yfyw47v44af7qjku@pengutronix.de>
References: <20250818-v2024-05-0-topic-fit-overlay-v5-0-b92e466a1d32@pengutronix.de>
 <20250818-v2024-05-0-topic-fit-overlay-v5-9-b92e466a1d32@pengutronix.de>
 <aKQhpqWmUjZvWdfY@pengutronix.de>
 <20250819081941.eq44wdcuvdkvd7rj@pengutronix.de>
 <aKQ2njyOTBzNn2jp@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aKQ2njyOTBzNn2jp@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_014650_492511_70D4D356 
X-CRM114-Status: GOOD (  32.54  )
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
> On Tue, Aug 19, 2025 at 10:19:41AM +0200, Marco Felsch wrote:
> > On 25-08-19, Sascha Hauer wrote:
> > > On Mon, Aug 18, 2025 at 07:26:17PM +0200, Marco Felsch wrote:
> > > > Require the filename to start at the root '/' directory and resolve any
> > > > possible link to make the filename handling more robust.
> > > > 
> > > > This is in preparation of adding cached fit_open support.
> > > > 
> > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > ---
> > > >  common/image-fit.c | 18 +++++++++++++++++-
> > > >  1 file changed, 17 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/common/image-fit.c b/common/image-fit.c
> > > > index 0067f46e60bc954b418aef3398e2c10856b41c02..1cb407d4d86cb3d0a643149bb08c46caadcd56fe 100644
> > > > --- a/common/image-fit.c
> > > > +++ b/common/image-fit.c
> > > > @@ -972,12 +972,25 @@ struct fit_handle *fit_open_buf(const void *buf, size_t size, bool verbose,
> > > >   *
> > > >   * Return: A handle to a FIT image or a ERR_PTR
> > > >   */
> > > > -struct fit_handle *fit_open(const char *filename, bool verbose,
> > > > +struct fit_handle *fit_open(const char *_filename, bool verbose,
> > > >  			    enum bootm_verify verify, loff_t max_size)
> > > >  {
> > > >  	struct fit_handle *handle;
> > > > +	char *filename;
> > > >  	int ret;
> > > >  
> > > > +	if (*_filename != '/') {
> > > > +		pr_err("The FIT filename must start with '/'\n");
> > > > +		return ERR_PTR(-EINVAL);
> > > > +	}
> > > 
> > > Drop this. We want to be able to call fit_open() with relative pathes...
> > 
> > IMHO FIT containers are only used in verified-boot setups. I wouldn't
> > allow relative paths in such use-cases.
> 
> That's your/our usecase, but you don't know what others are doing and a
> "bootm foo.fit" should just work without complaining about a relative
> path.

Okay, albeit I'm still not convinced that 'bootm foo.fit' is a good
idea. But you're right, enforcing an absolute path may be a bit too
strict.

> > > > +
> > > > +	/* dirfd is ignored, since _filename is absolute */
> > > > +	filename = canonicalize_path(AT_FDCWD, _filename);
> > > 
> > > ...and you are calling canonicalize_path() anyway which gives you an
> > > absolute path from the potentially relative input path.
> > 
> > But we don't know the base directory to which this path would relative
> > too.
> 
> canonicalize_path() returns an absolute path.

I know and it does the job to resolve the whole path to use it for
caching purpose. But as said, I just using the CWD may trigger
unintentionally behaviors. Anyway, I will drop the '/' root restriction.

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


