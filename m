Delivery-date: Tue, 09 May 2023 09:23:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHgw-00BHLw-QS
	for lore@lore.pengutronix.de; Tue, 09 May 2023 09:23:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHgu-00050u-Ri
	for lore@pengutronix.de; Tue, 09 May 2023 09:23:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Aay3Q27IaemMoZq4hnGMGNyVsNxWxAZYatiZ5nxjWo=; b=5B3MhHxnC+Vyhgn/ALG/BxUjnr
	8VecCpiT5OHtgsYgPZpTLCqmT98Aq141T6D93hZoZyqQb88Gc5DbVrKnLQ2TJM75QAXEEI1nmImaO
	tqPhDhcZNeb+X36+kQMVbMBAfA7kOeUhP3tRfGFi4l2qUsuy2VD8td7zbIvcJtV1d2WAtTJto5h8E
	0HdD/IXI2/x0LgkvzFNnd9JiY5txa8P7T9Gq/szZP1udoP4hx0BNUCfdbZ2w0k4lKo3PdTi0OhBMu
	AhJYZzSN2kfdgdpvU1uElIP3F7kRBC1mrFEuujkH+ew+R1djlzACBjxrJ9BX27aAcxG74y7+eruRB
	3Srmx1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHft-002Uua-00;
	Tue, 09 May 2023 07:22:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHfp-002UsZ-0l
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 07:22:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHfn-0004s4-Sl; Tue, 09 May 2023 09:22:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHfn-0005bv-7j; Tue, 09 May 2023 09:22:11 +0200
Date: Tue, 9 May 2023 09:22:11 +0200
To: Johannes Zink <j.zink@pengutronix.de>
Cc: barebox@lists.infradead.org, patchwork-jzi@pengutronix.de
Message-ID: <20230509072211.GB29365@pengutronix.de>
References: <20230505155248.2261867-1-j.zink@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230505155248.2261867-1-j.zink@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_002213_271651_893AF805 
X-CRM114-Status: GOOD (  25.75  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 0/3] Add displaying a version number in imx-usb-loader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 05, 2023 at 05:52:45PM +0200, Johannes Zink wrote:
> This series adds displaying a version number in imx-usb-loader for
> easier debugging.
> 
> The first two patches add minor cleanup, while the third actually adds
> the code for displaying the version number.
> 
> The result will look like
> $./imx-usb-loader --version
> ./imx-usb-loader 2023.04.0-00210-g057705fb211a-dirty
> 
> Happy hacking
> Johannes
> 
> Changelog:
>   v1 -> v2: worked in Ahmad's review findings. Thanks for reviewing my
>             patches!
>             - do not rely on autogenerated headers to keep tool buildable
> 	      outside of KBuild environment
> 	    - remove double exit when displaying version number
> 	    - fixed errornous commit subject
> 	    - added comment in commit message why removing the exit()
> 	      call in a function is ok, even when not explicitely adding
> 	      it to all call sites
> 
> 
> Johannes Zink (3):
>   imx-usb-loader: exit with success when displaying help on purpose
>   imx-usb-loader: use proper return code macros
>   imx-usb-loader: add commandline option for displaying version number

Applied, thanks

Sascha

> 
>  scripts/imx/Makefile         |  2 +-
>  scripts/imx/imx-usb-loader.c | 30 +++++++++++++++++++++++++-----
>  2 files changed, 26 insertions(+), 6 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


