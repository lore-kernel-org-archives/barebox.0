Delivery-date: Fri, 10 Nov 2023 14:13:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RK2-005sme-2D
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:13:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RK2-0000BV-On
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:13:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LATh0uDsedB7rj3sKjqZrdaG+k97NQNGu8G3ZukrCtA=; b=tyIiZmT0zkwzw+r47khWlCeNQT
	KyY+lARPQeIhsfxKJNgb+Pzw+7N63/DvVozKnk8j3BP7/jcHA+3dCXP9Mg1L0i0XYOSVTynZOqhpI
	3B4fjTYwqThKUE5iV5X923PVXxjbINBJSWPcJIc/WzdMJlu62C7gHWSNgj9jpeLz641C1Bi2Wyzoi
	2UyYyZzdsTduMGhZ9YHVGOotUP6oWdGfdKFPIdI1kHlaNpv0RlONnwgHT2NydAHsNvyMEypZO8u9J
	VIiVMOfFtSyNjDaHCU0AFmiWEDoKv9PhwFRnQF2Ea1dawdVy7aKF5Rn5M6WE1JawxgBoNtJJMCNsG
	J6cVCPuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RJ6-008oZC-2P;
	Fri, 10 Nov 2023 13:12:20 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RJ3-008oXw-0q
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1699621932;
	bh=LATh0uDsedB7rj3sKjqZrdaG+k97NQNGu8G3ZukrCtA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HwaDdria1pAZTKTBwrd/La2j8BeF8tHzcEIF+QOtd2821+EowymvWoou5dLRGxWES
	 ZEBBT1v8JXNCU2+X2XPMjtL9nC5k1HTdhD73I0pwpY5r6IyxnCaUJuMVn09Ie86D5t
	 PtG8FsFiQmbNkRUySqipPEsvUg2lZVFPclesDFzvBR0t4X1VS/X1Qx+unoVWMuxZDz
	 MDjDH+JnvmDUSRNvTD4nPa9pCv/pQEwfSB7rqPEZCY1JB3y5gbC9tLk7WpVDSjCSdf
	 b/7eJVsIF+9GSlLqGRvU8eoW7xUr2zCwWjohxTHPLl3soee6dijHCHgnNchXalKVYb
	 WRyFoJQ8tvOfA==
Received: from hephaistos.inside-m2m.de (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 28188401E3;
	Fri, 10 Nov 2023 14:12:12 +0100 (CET)
Date: Fri, 10 Nov 2023 14:12:10 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <ZU4sKna5TiANr5e3@hephaistos.inside-m2m.de>
References: <ZU4C4WtD8k3Xzl4W@hephaistos.inside-m2m.de>
 <20231110124205.GW3359458@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231110124205.GW3359458@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_051217_443254_4D20544E 
X-CRM114-Status: GOOD (  12.53  )
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Rockchip rk3328 support?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On Fri, Nov 10, 2023 at 01:42:06PM +0100, Sascha Hauer wrote:

> The rk3328 is not yet supported. We have support for rk3568 and rk3288
> though, so the ground work for generally supporting Rockchip SoCs has

Ok

> been done. I don't know how similar the rk3328 is to the supported SoCs,
> you could have a look at the Kernel or U-Boot to see how close they are.

Actually I am fighting with u-boot. There are Dusun SDKs with all
sources available but what they are using are ancient 2017.09 u-boot
version which are forked in mirrors rooting to a rockchip github tree.

Now I am fighting with a Dusun SDK using a rather vanilla 2022 u-boot
which is not the same, I just managed to get a working SDRAM setup. Now
reading MMC gives mmc block read error probably yielding to DT setup
issues.

Then we will investigate what has to be done among the common stuff
to put this into barebox.

Kind Regards
Konstantin




