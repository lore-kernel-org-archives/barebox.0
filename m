Delivery-date: Tue, 04 Apr 2023 10:56:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjcSP-009XPb-5X
	for lore@lore.pengutronix.de; Tue, 04 Apr 2023 10:56:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjcSO-0004wz-5E
	for lore@pengutronix.de; Tue, 04 Apr 2023 10:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FKmAmb7BELQS/C4+nDU9rHXd1KxZlaKy/DBYOW4k5Tc=; b=hCYMoFGFAkG22ju1jbKaZMMLGu
	zibOO8L98U+qzGk8BWD66Wn3e7jbiEOSL1UDv7Al3jwfNfxQZ4CCdGdX38MWR9llEvtfBYVL1uNEP
	MZbqJA8l5x0pg26IpKvxhxFaT8PQaLuUOtS3ONdhV6EH3+9kbd04c5t47DpA8cfwvdZd5ZD1Nzvpn
	+S/uj4nlGPS94ZzYy3p51RLPG06cbAG7BByrCOjyK1gq9pvD8AoXCMiJyvHaFeP3J/PifnIvzc4NR
	ctKHvovXveUPoVSY8nAg0awTRXtOUC2T2xSwXbV60XA5/NajV4zsJ/lpZa7Yd6vG5K72JyCxWnENE
	kUb8VfAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcOM-000ac6-1m;
	Tue, 04 Apr 2023 08:52:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjcLf-000Zyv-02
	for barebox@lists.infradead.org;
	Tue, 04 Apr 2023 08:49:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjcLc-0003lc-Ve; Tue, 04 Apr 2023 10:49:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pjcLc-000635-OW; Tue, 04 Apr 2023 10:49:00 +0200
Date: Tue, 4 Apr 2023 10:49:00 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230404084900.GX19113@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
 <20230228-v2023-02-0-topic-flexspi-v2-2-3d33126d2434@pengutronix.de>
 <20230404070417.GI15436@pengutronix.de>
 <20230404080142.itltxhz6vtagoipo@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404080142.itltxhz6vtagoipo@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_014903_200531_7F864A03 
X-CRM114-Status: GOOD (  35.37  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 02/23] bbu: make it possible to check multiple
 of-compatibles
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 04, 2023 at 10:01:42AM +0200, Marco Felsch wrote:
> On 23-04-04, Sascha Hauer wrote:
> > On Mon, Mar 13, 2023 at 02:41:41PM +0100, Marco Felsch wrote:
> > > It is possible that one barebox can rule multiple platforms e.g.
> > > multiple platform revision each has a dedicated device tree and of
> > > compatible. While it is possible to add multiple of-compatibles via
> > > IMD_USED_OF() (see: zii-imx8mq-dev) we didn't allowed it to flash it
> > > without 'force'. Fix this by check all possible IMD_TYPE_OF_COMPATIBLE
> > > image metadata types.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  common/bbu.c | 42 +++++++++++++++++++++++++++---------------
> > >  1 file changed, 27 insertions(+), 15 deletions(-)
> > > 
> > > diff --git a/common/bbu.c b/common/bbu.c
> > > index 3ec17216cb..a9b3fef7a0 100644
> > > --- a/common/bbu.c
> > > +++ b/common/bbu.c
> > > @@ -154,36 +154,44 @@ struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
> > >  	return NULL;
> > >  }
> > >  
> > > -static int bbu_check_of_compat(struct bbu_data *data)
> > > +static int bbu_check_of_compat(struct bbu_data *data, unsigned short of_compat_nr)
> > >  {
> > > +	const struct imd_header *imd = data->imd_data;
> > > +	const struct imd_header *of_compat;
> > >  	struct device_node *root_node;
> > >  	const char *machine, *str;
> > >  	int ret;
> > > -	const struct imd_header *of_compat;
> > >  
> > >  	if (!IS_ENABLED(CONFIG_OFDEVICE) || !IS_ENABLED(CONFIG_IMD))
> > >  		return 0;
> > 
> > This patch breaks barebox update when the update image doesn't contain
> > any IMD_TYPE_OF_COMPATIBLE entries. To fix this we need this here:
> > 
> > 	if (!of_compat_nr)
> > 		return 0;
> > 
> > I fixed this up.
> 
> Argh.. thanks :) To make even more robust and forcable by board we could
> replace it with a dedicated CONFIG_IMD_OF_COMPATIBLE.

Making this a compile time option is not a good idea. Should be runtime.

> This way boards
> can select it to enforce the check or we skip the check. Since just
> checking:
> 
>   if (!of_comat_nr)
>      return 0;
> 
> could also hide board code issues.

Indeed, yes. Ahmad has a patch in the queue which automatically adds the
IMD_TYPE_OF_COMPATIBLE entries for each board based on the device tree
that is used in the image. I suggest we wait for this patch, and with it
we can re-evaluate this.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


