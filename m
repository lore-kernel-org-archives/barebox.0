Delivery-date: Thu, 27 Apr 2023 09:38:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prwCm-001wMN-Cg
	for lore@lore.pengutronix.de; Thu, 27 Apr 2023 09:38:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prwCm-0007PN-72
	for lore@pengutronix.de; Thu, 27 Apr 2023 09:38:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2YGAEmdWDvJJvvV3aSoyg/GcJ0hCEzmVu5kLVSZkMVg=; b=OacwQnKZBNVJGhj46xtCZNAIz2
	xmT12Hwg5ETiLQBgN8afv+xrp9BaeDP1Jwg6095Ow/zRGRIiarcQdXqBALHxNTWVIPFcFm268aj7m
	+o/osZ1H2XP4GXBSM9oVEOD3SKy8x1ChGTXacwtG74KXQh5NKgmH/M3oIQsW7C7JgNpVDFXVv6Blj
	QLom8YIm29EpjVrAEiX0Spj32IxVc+tAHN14b7o3ZQsSQQxohK03Ju/4Y7Xo8d5tBUttrXDgo3/7o
	JhsRRUiBzn+Gpoj1Ec/HKOPqjQmESMhtB+Ry427teqmawKFQEmrd/RbWZymYV2e//UkSLaLi8uAid
	j1StWaVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prwBJ-005h2O-2u;
	Thu, 27 Apr 2023 07:36:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prwBG-005h15-0t
	for barebox@lists.infradead.org;
	Thu, 27 Apr 2023 07:36:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prwB5-00075l-TC; Thu, 27 Apr 2023 09:36:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prwB4-0008So-RQ; Thu, 27 Apr 2023 09:36:30 +0200
Date: Thu, 27 Apr 2023 09:36:30 +0200
To: Andreas Kemnade <andreas@kemnade.info>
Cc: barebox@lists.infradead.org, jbe@pengutronix.de
Message-ID: <20230427073630.GT13543@pengutronix.de>
References: <20230426210936.7531e177@aktux>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230426210936.7531e177@aktux>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230427_003642_311998_AD2733A8 
X-CRM114-Status: GOOD (  17.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: rn5t618 vs. rn5t568
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Apr 26, 2023 at 09:09:36PM +0200, Andreas Kemnade wrote:
> Hi,
> 
> just looked a bit around in the source and stumbled across drivers/mfd/rn5t568.c
> 
> It contains
>  * MFD core driver for Ricoh RN5T618 PMIC
> 
> but the filename is rn5t568.c That is very confusing.
>  a compatible ricoh,rn5t568 (but 567) does not exist in the kernel.
> 
> So which chip this is really about? Did not analyse things deeper yet.
> 
> I am also curious because I wrote most stuff in the kernel about the rn5t618/rc5t619.

Jürgen had to support the rn5t568 which is not yet supported in Linux.
He took the Kernel rn5t618.c driver and adjusted it accordingly. Jürgen
can't remember exactly, but he said the chips are quite similar.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


