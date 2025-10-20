Delivery-date: Mon, 20 Oct 2025 15:02:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApWj-009twf-0b
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 15:02:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApWi-0002Mg-Jd
	for lore@pengutronix.de; Mon, 20 Oct 2025 15:02:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ukQmGGGX0UVmJ4rm1o/sS5rOUbxb98B66HSS8Q10pz4=; b=lTYsPObVHpX85THkWtoKNVr616
	epJFvQhyhYf0qEDjwer9Y2H2YCcsPVb2s0C1N4uCdi8f/l+CWSMsnv0GCRVujYYKF3NKF1dQHRgFs
	UHndinT2uVneEqOugyzC5HPAzxq36P3lvKMZggb3P7EvmIsuaPQj6ni64iinJKlA2YyyGyefHF+rH
	sPqTjFZnXQtPVCsXgN0LN//DgJzz4T6eZJ6sn1B0S59E50RAaAQ3d5A9oopG7I5HDI/EBM3ffCYBy
	2qkimB5t7DTeOmQSL71fohSUHDDOvf24/wRcQ1Ai7cs+8YC6iX9RdLsb8S0hS26LnbOZxnyaXd85F
	6Don2dDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApWE-0000000DhN1-1yDq;
	Mon, 20 Oct 2025 13:01:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApWD-0000000DhMo-3465
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 13:01:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ukQmGGGX0UVmJ4rm1o/sS5rOUbxb98B66HSS8Q10pz4=; b=iRoEPObqajPdLLXk/C+HPp/qmv
	C1wn1O2Dio3JDrqUxmCAYimcO7k4pITWhiQLHdXrqlA9xhCwMbSzjYmmyCfYUsIwEf4gxFtLf7eTr
	rV291eZO+rmX5De9kvBwe8v+FbljG+Qtpzj8Uz29OTC3w40Z8ovEgvKRaGiyLMn6iMG84WwJycf8z
	DvSFo2pXP/fEJBJOX06Ih+OxktJzP10txPZjxJWp19I44o1ItH1PdtyteuBEa6s7BzfbzEbwA0Ji2
	fxeZeI/o9FkpoYmaKq6rA0pD/bEFRV67vfCZdzVVeC+AhMOq1y89eOi623YToilj/FhGmqOo0JciA
	M1H9VS2Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApW9-00000007l9z-2B8o
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 13:01:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vApWA-0002FY-Ca; Mon, 20 Oct 2025 15:01:42 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vApWA-004YPu-0d;
	Mon, 20 Oct 2025 15:01:42 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vApWA-007LLL-0L;
	Mon, 20 Oct 2025 15:01:42 +0200
Date: Mon, 20 Oct 2025 15:01:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aPYythjw3db3xZ1m@pengutronix.de>
References: <20251017-gitignore-build-v1-1-f25d35c3bff4@pengutronix.de>
 <aPYEm6Ese37JVqJd@pengutronix.de>
 <8c12af27-89c1-4f7a-8f10-807c25ab147c@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8c12af27-89c1-4f7a-8f10-807c25ab147c@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_140142_812336_4B04EE0B 
X-CRM114-Status: GOOD (  20.73  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] gitignore: ignore /build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Oct 20, 2025 at 02:36:08PM +0200, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-10-20 11:44, Sascha Hauer wrote:
> > On Fri, Oct 17, 2025 at 12:22:13PM +0200, Jonas Rebmann wrote:
> > > Documentation such as Documentation/boards/kvx.rst and tooling such as
> > > conftest.py suggests /build is a good choice for build output directory.
> > > 
> > > Therefore, include it in .gitignore.
> > > 
> > > Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> > > ---
> > >   .gitignore | 1 +
> > >   1 file changed, 1 insertion(+)
> > > 
> > > diff --git a/.gitignore b/.gitignore
> > > index 98bb4dac89..32d54b8fbe 100644
> > > --- a/.gitignore
> > > +++ b/.gitignore
> > > @@ -53,6 +53,7 @@ policy-list
> > >   /TAGS
> > >   /barebox*
> > >   /System.map
> > > +/build
> > 
> > I have nothing against adding this here. I just wondered why my build
> > directories don't show up in git status and realized the barebox
> > toplevel Makefile already creates a .gitignore file in the build
> > directory:
> > 
> > 	{ echo "# this is build directory, ignore it"; echo "*"; } > .gitignore
> > 
> > Any idea why this doesn't happen in your case?
> 
> Oh, I was not aware of this.
> 
> In my case, "build" is a symlink to outside the barebox sourcetree. The
> build/.gitignore is created with this content but it isn't respected by
> git because it isn't in the sourcetree. This is also why I added
> '/build' to .gitignore and not '/build/': To also ignore it when it's a
> symlink.

Ah, ok, so the symlink is the problem. YOCTO uses a build symlink as
well when used with devtool modify --no-extract. With YOCTO we also get
oe-logs and oe-workdir symlinks, so maybe we should git-ignore these as
well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


