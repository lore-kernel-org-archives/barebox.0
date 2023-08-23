Delivery-date: Wed, 23 Aug 2023 07:52:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgnD-005o5z-W8
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 07:52:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgnB-00065l-Fq
	for lore@pengutronix.de; Wed, 23 Aug 2023 07:52:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EmkhAJ/SUD22Nt9GE7Jq+R24Jk/n8oIAaoAwVeTA7xo=; b=aHkjqLG7EBoElVzF9FvDBT5GeN
	9TDsm2PSTevIlOlaP6dH9nEyEEzmgvGnfVTxUdmKZVvApjEHBkBdF8sVl3W4Vd6xpO/FI6BGeifoZ
	81pXeLmT+7vIN6GZaWnEDIpfx6isX5xKgZmb744bnPeybjcbrGk0oiTi0Jrr34dz4DJkTjyoXrGsL
	CbctrMejue20P+a4/ffucFGCng5C3YdOHLpHuykiUkOX7uLHRoXe8hH6Ye1d4x605I70ynSwfn560
	PIWIH10hzAsmwjclsUGG92EX/i3T+5FDkZhHPCGimGcE9ujjTMKu7Bl3WpiqbmISOgVyQP8rrIOFA
	47yv7BMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYglf-00HJd0-0o;
	Wed, 23 Aug 2023 05:50:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYglb-00HJb5-0Z
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 05:50:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYglW-0005yg-5I; Wed, 23 Aug 2023 07:50:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYglV-0002g8-Uk; Wed, 23 Aug 2023 07:50:49 +0200
Date: Wed, 23 Aug 2023 07:50:49 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230823055049.GB16522@pengutronix.de>
References: <20230822074738.3905283-1-a.fatoum@pengutronix.de>
 <20230822142807.GA16522@pengutronix.de>
 <b8c922b6-a596-447a-6f2e-b169c4534123@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b8c922b6-a596-447a-6f2e-b169c4534123@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_225055_233380_7614226D 
X-CRM114-Status: GOOD (  22.97  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] param: drop priv from dev_add_param_string_ro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 22, 2023 at 06:36:07PM +0200, Ahmad Fatoum wrote:
> On 22.08.23 16:28, Sascha Hauer wrote:
> > On Tue, Aug 22, 2023 at 09:47:36AM +0200, Ahmad Fatoum wrote:
> >> dev_add_param_string_ro() is used nowhere, but when we do, having an
> >> unused priv parameter serves no purpose, so drop it.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  include/param.h | 3 +--
> >>  1 file changed, 1 insertion(+), 2 deletions(-)
> >>
> >> diff --git a/include/param.h b/include/param.h
> >> index 76a077fd758a..5d4f7f3db52f 100644
> >> --- a/include/param.h
> >> +++ b/include/param.h
> >> @@ -334,8 +334,7 @@ static inline struct param_d *dev_add_param_bool_ro(struct device *dev,
> >>  
> >>  static inline struct param_d *dev_add_param_string_ro(struct device *dev,
> >>  						      const char *name,
> >> -						      char **value,
> >> -						      void *priv)
> >> +						      char **value)
> >>  {
> >>  	return dev_add_param_string(dev, name, param_set_readonly, NULL, value, NULL);
> >>  }
> > 
> > Wouldn't it be better to pass *priv on to dev_add_param_string() instead
> > of removing it?
> 
> No, because it would be unused: The non-overridable setters and getters
> won't access it.

Ah, right. Applied then

Thanks
  Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


