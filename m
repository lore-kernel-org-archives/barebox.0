Delivery-date: Wed, 05 Mar 2025 13:14:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpne9-00AB3P-30
	for lore@lore.pengutronix.de;
	Wed, 05 Mar 2025 13:14:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tpne8-0000jf-O7
	for lore@pengutronix.de; Wed, 05 Mar 2025 13:14:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zMkMI9BKGIFMdfTSe+3tselD8RjZsxMQTwEyHnqk+v0=; b=lcB4uKtkafGpWA7nEj8pF1ed7S
	YjB2zx6FWXIu0+AJQi1PSO2F36MXB80W5cDx/54114QMn/hAy7LZaquvY7Q9Cjytf1soIMgFaO+xp
	t/ZOXvRavTPHRJBeQyKsxG5e3dl2FuKYoPQ00h3YS0H2mFciEChVyIvLwv7yl55NXPWkXObijdHXH
	AvpNWPpg2JfoMSs3Dg13IGIiDp9+opLHF1Y+keZc8lbep3r4uXsVfRycdKwDiitdyTsDyUpJMQgLb
	ZAxSNpuej5Xqma5VuzOp61jMw9kv3xkowxVbz2lMA8ZevxSpQtkNOVogp4oU728+2WHLQUnB1oXD7
	pKQEILKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpndV-00000007yDE-1yKo;
	Wed, 05 Mar 2025 12:14:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmmi-00000007pru-2YS5
	for barebox@lists.infradead.org;
	Wed, 05 Mar 2025 11:19:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tpmi8-0001ov-3q; Wed, 05 Mar 2025 12:14:48 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tpmi7-0048Nb-2z;
	Wed, 05 Mar 2025 12:14:47 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tpmi7-00EQMj-2e;
	Wed, 05 Mar 2025 12:14:47 +0100
Date: Wed, 5 Mar 2025 12:14:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Stefano Manni <stefano.manni@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z8gyJ2_jXp12dhz1@pengutronix.de>
References: <20250221180109.14129-1-stefano.manni@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250221180109.14129-1-stefano.manni@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_031932_669812_252C2D2B 
X-CRM114-Status: GOOD (  13.87  )
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
Subject: Re: [PATCH 1/2] imx-bbu-nand-fcb: do not use hardcoded devicefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Stefano,

I merged both patches into one to avoid intermediate breakage.

On Fri, Feb 21, 2025 at 07:01:08PM +0100, Stefano Manni wrote:
> @@ -1599,7 +1607,8 @@ static int imx7_fcb_write(struct mtd_info *mtd, int block, struct fcb_block *fcb
>  	return mxs_nand_write_fcb_bch62(block, fcb, sizeof(*fcb));
>  }
>  
> -int imx7_bbu_nand_register_handler(const char *name, unsigned long flags)
> +int imx7_bbu_nand_register_handler(const char *name
> +	   const char *devicefile, unsigned long flags)
>  {

Also added the missing comma after *name

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


