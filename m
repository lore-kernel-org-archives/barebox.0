Delivery-date: Mon, 01 Nov 2021 10:02:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTDA-0006tN-0k
	for lore@lore.pengutronix.de; Mon, 01 Nov 2021 10:02:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mhTD9-0004F9-78
	for lore@pengutronix.de; Mon, 01 Nov 2021 10:02:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/5OQsCcN8OR5rlbVqzOftAylYJBmBKNZ8a724Y9wvEg=; b=ibu/UyFMw8ijV6mc1wytgCZCSn
	CvspZCKN96Uc/jp3ko8ChW2gmrNu32V6l61MrtReaIBPJsQeUCGsbwt+fxWMAtuCUGtr5BAzfB5YZ
	V22z3ThpSEiSB9/dx2IItZu+vldOCbLDGnL63QEGEfcN7qO3Uyyi14STX6Eci2EVaWcgKeUVs2z8X
	+QaiqZ356OoTJOvUo5FCSgeR6BsIveaM3TYNFrMR4fgw10PWZYpEod3Rhj9lj1JK0lkfnYWctZ2QI
	30TfSCWHcjJbaSTiDg2XBTyPNEXP5zzKLfOHCey/n0kFF5LFXwkJXUin5MkBdB268qPXS8D58w43p
	uQWbAubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhTBQ-00FjCR-58; Mon, 01 Nov 2021 09:00:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhTBL-00FjBw-Hw
 for barebox@lists.infradead.org; Mon, 01 Nov 2021 09:00:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTBH-0003uH-Nv; Mon, 01 Nov 2021 10:00:39 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mhTBH-00081y-Ej; Mon, 01 Nov 2021 10:00:39 +0100
Date: Mon, 1 Nov 2021 10:00:39 +0100
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211101090039.GM25698@pengutronix.de>
References: <20211020083954.3787-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211020083954.3787-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:37 up 256 days, 11:09, 117 users,  load average: 0.91, 0.57,
 0.34
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211101_020043_620504_234696BF 
X-CRM114-Status: GOOD (  20.99  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
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
Subject: Re: [PATCH] phy: core: Make 'phy_optional_get' return NULL when not
 implemented
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Oct 20, 2021 at 10:39:54AM +0200, Daniel Br=E1t wrote:
> Make 'phy_optional_get' return NULL instead of ERR_PTR(-ENOSYS) when the
> CONFIG_GENERIC_PHY is not enabled. It makes more sense to return NULL ins=
tead
> of straight up throwing a error since the function has 'optional' in its =
name.
> This also fixes dwc2 usb driver which would previously fail inside its pr=
obe
> function despite being able to function without a phy just fine.

The phy is only optional as long as none is specified in the device
tree. When there is one specified then it's no longer optional. We can't
do the right thing here without checking the device tree. Given that
it's simple to enable CONFIG_GENERIC_PHY I think this is the way to go.

How about issuing a warning in the phy_optional_get stub? That would
point the user in the right direction.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

