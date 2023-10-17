Delivery-date: Tue, 17 Oct 2023 16:59:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslXz-00Bsyn-Fk
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:59:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslXy-0005Wi-2u
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:59:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ig2jQJazN9W3C08m0/7HW6KiQnOLhf9eJNC27eczvk=; b=OHcqJQBJArwOqRR+FCp7B900N6
	BmG1wGJ9jpwBkKLhoECbckdwrVaPVqa52DLtMQfs0xpbxS/VY+OB5qRMiIxUBzlFRpMlB7KIlIs6p
	BcQYLQD2TYR1OKiaPr5OX13boURpKZkoPF3Qqxcy9I2pefsbDLwzWR+7dTMTVwCpMlIoA24eageI9
	bpqDS3HY3/q8sf4XROAPzWqg9CMDVx/aWvzvrRqKs6Iw44C95G3whH67A+qu5fOMPMk5BgW0puFr7
	phobofrrVpI8ZS026f2VwS3wVC98R9tK6vmj5kaHjzCmjTBYLResOaaJNEVSccFjWPMirB1P6R2e8
	UxMA/qIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslWw-00Ch1l-1W;
	Tue, 17 Oct 2023 14:58:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslWu-00Ch1Z-1W
	for barebox@bombadil.infradead.org;
	Tue, 17 Oct 2023 14:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=2ig2jQJazN9W3C08m0/7HW6KiQnOLhf9eJNC27eczvk=; b=aBtk47C5yq6ydVWLyppcAcrh6W
	ZBy5hkJhAUBqgGBExCJ5WUVsH4XLNLBqm+Qh6gSEtNMAibWQEnjpyiWuddUHd3X8j6qER3k+Ja51p
	sOTUJv4dmdJTCBW4En9H1MvfGfpQ5dKHDCE9Hqqv1fgQ/GQd+pE+OakQ0fukvuzCdIt5qhP8p5ahR
	QoKEK7RJu7VxX/yFFLUQp6Qgc4rkvE+ARZyIKE6SHKquujwKYgG1XScV1CBcLpjgypwaQWJ/g823O
	xOmc0RrzE6Nc6ndDTMGWe2UsuySntshqCvjT/hamcbY6DbR7rqR88MPcGD63xKOHqeNdTizZGR5PU
	5w5JXKwA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslWr-007AT2-0O
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:58:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qslWp-0005MY-Ij; Tue, 17 Oct 2023 16:58:39 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qslWo-002LHv-An; Tue, 17 Oct 2023 16:58:38 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qslWo-00EwiX-8g; Tue, 17 Oct 2023 16:58:38 +0200
Date: Tue, 17 Oct 2023 16:58:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231017145838.zdh6ead4pxq64mgt@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
 <20231010143314.2031253-22-m.felsch@pengutronix.de>
 <20231013072859.GM3359458@pengutronix.de>
 <20231016055025.7kpbyiviqykrwy4k@pengutronix.de>
 <20231016074450.cu7kxp4y4pfc5djl@pengutronix.de>
 <20231016081957.GX3359458@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231016081957.GX3359458@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_155841_240914_86D31711 
X-CRM114-Status: GOOD (  28.53  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 21/26] scripts: imx: add helper to write CSF Blocks
 command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-10-16, Sascha Hauer wrote:
> On Mon, Oct 16, 2023 at 09:44:50AM +0200, Marco Felsch wrote:
> > Hi Sascha,
> > 
> > On 23-10-16, Marco Felsch wrote:
> > > On 23-10-13, Sascha Hauer wrote:
> > > > On Tue, Oct 10, 2023 at 04:33:09PM +0200, Marco Felsch wrote:
> > > > > The upcoming commit fixes the HAB support for FlexSPI enabled barebox
> > > > > images. This commit prepares the source to keep the diff smaller.
> > > > > 
> > > > > For the upcoming fix we need a 2nd CSF command sequence which is
> > > > > basically the same as the first except for the "Blocks = ...." command.
> > > > > Therefore we need to handle the blocks command separately which is done
> > > > > by this commit. At the moment there is no functional change.
> > > > > 
> > > > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > > > ---
> > > > >  scripts/imx/imx.c | 22 ++++++++++++++++++++--
> > > > >  1 file changed, 20 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/scripts/imx/imx.c b/scripts/imx/imx.c
> > > > > index 933019eba449..acc8424e547d 100644
> > > > > --- a/scripts/imx/imx.c
> > > > > +++ b/scripts/imx/imx.c
> > > > > @@ -296,6 +296,24 @@ static int hab_add_str(struct config_data *data, const char *str)
> > > > >  	return 0;
> > > > >  }
> > > > >  
> > > > > +static int hab_add_barebox_blocks(struct config_data *data,
> > > > > +				  const char *csf_str,
> > > > > +				  const char *flexspi_csf_str)
> > > > > +{
> > > > > +	int len = strlen(csf_str);
> > > > > +
> > > > > +	if (data->csf_space < len)
> > > > > +		return -ENOMEM;
> > > > > +
> > > > > +	strcat(data->csf, csf_str);
> > > > > +	if (flexspi_csf_str)
> > > > > +		strcat(data->flexspi_csf, flexspi_csf_str);
> > > > 
> > > > Do we need a space check here as well?
> > > 
> > > To be 100% accurate yes since the strings can have different lengths
> > > albeit the difference would be <5 chars. I will rework that, thanks for
> > > the review.
> > 
> > While integrating your review feedback I noticed that my comment was
> > wrong. Both strings using the same size limited format string:
> > 
> >    "Blocks = 0x%08x 0x%08x 0x%08x \"%s\""
> > 
> > with "%s" always point to data->outfile. So both stings do not differ
> > and checking csf_str in enough.
> 
> Indeed, so the current way is safe.
> 
> However, I wonder if we should rather add a little helper like:
> 
> static void *strcata(char *str, const char *add)
> {
> 	str = realloc(str, (str ? strlen(str) : 0) + strlen(add) + 1);
> 	if (!str)
> 		return NULL;
> 
> 	strcat(str, add);
> 
> 	return str;
> }
> 
> and get rid oof the fixed size allocation altogether.

FTR: I followed your suggestion, please see the v2.

Regards,
  Marco


