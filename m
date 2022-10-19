Delivery-date: Wed, 19 Oct 2022 10:15:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol4F1-000QT1-5i
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 10:15:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol4Ey-00022y-OY
	for lore@pengutronix.de; Wed, 19 Oct 2022 10:15:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=prmD2l4/uFN0FSlIqkl2f0/pfbR36udZYz3GHxNIGZg=; b=ymuG24NXXdfiX9UsfB4Smy8v7x
	uWMP3p7jdZFaZNofipxGMxhJi5zk6Kh+HPtjiH15XRvxa/aRp08eMaEZK1ebV076DkeQ1qgumVVpO
	A06UUI1paj+WJJ1mbgw9CgjqttCyOjYKPyNIphomecS906oX2t08lMoSCzSWYsxytwqIg822waSEy
	HB8FixG2PtSIKSPXSzbuCG4q//+hgno0CWc+cB4XEWcVQkyUPdGIbNNpSkTSNm6jdUGoc8mah/4pK
	+nhVn4WLK9rTIi+SCRBCbxPfHaKMo40URHIKmD/c2yE9zNVVbQOA9+XOYcANLpMkXT5w95WRElWN5
	3vsyNapA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol4DY-00GSU4-98; Wed, 19 Oct 2022 08:14:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol4DT-00GSTJ-7U
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 08:14:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ol4DL-0001lt-7u; Wed, 19 Oct 2022 10:14:11 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ol4DL-0004EL-0X; Wed, 19 Oct 2022 10:14:11 +0200
Date: Wed, 19 Oct 2022 10:14:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221019081410.fbdzjvjlk2nrwnyx@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
 <20221014163534.3812272-3-m.felsch@pengutronix.de>
 <20221019074800.GU6702@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019074800.GU6702@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_011420_182221_26DB21BC 
X-CRM114-Status: GOOD (  19.83  )
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
Subject: Re: [PATCH 2/8] state: select the STATE_DRV when STATE is selected
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 22-10-19, Sascha Hauer wrote:
> On Fri, Oct 14, 2022 at 06:35:28PM +0200, Marco Felsch wrote:
> > As written in the state.rst documentation, state will silently fail if
> > the STATE_DRV is not selected. So enabling state without the state
> > driver is useless. Fix this by selecting the STATE_DRV if STATE is
> > selected.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  common/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/common/Kconfig b/common/Kconfig
> > index fb2bf49683..4654a5cfaf 100644
> > --- a/common/Kconfig
> > +++ b/common/Kconfig
> > @@ -1016,6 +1016,7 @@ config STATE
> >  	select ENVIRONMENT_VARIABLES
> >  	select OFTREE
> >  	select PARAMETER
> > +	select STATE_DRV
> 
> STATE_DRV depends on OFDEVICE, so that should be selected here as well.

Arg.. didn't checked that.

> I am thinking about moving the state driver and the common state stuff
> together into a single directory like drivers/state/. That would make it
> more obvious that these belong together for both developers and users.
> 
> What do you think?

+1 from my side.

Regards,
  Marco


