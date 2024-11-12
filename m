Delivery-date: Tue, 12 Nov 2024 09:01:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAlqU-000vxm-1z
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 09:01:54 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAlqU-0001CB-0n
	for lore@pengutronix.de; Tue, 12 Nov 2024 09:01:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+KN1nxp2R/SXjH3QqbFwhUgzISIirbjshB12Cd5jzxI=; b=hxR63N4j0JqzygMKLUGwUxFndq
	OuH08bFi3D/aMfelrdLkVwJ5RZzJJTACQ2OAacYW5+BUe3Y/2UtVaWwfGiq/ZBB+d6F/bTz/BaW1Q
	RRvqxXCdjFWiMCfCGhSOT9hHzVh6z/3hSjWNqSryZXE9vSlFBoyC9p9GQNPBryCDxM5dhvGfWoRY9
	R3h4zuqNC2Z/3vfn7BQIhGaykYwqU2TNPgImi8h3WKH02JL7yCHwKfUcI5TEQMfXfdv4WLVpkdOYu
	M9QZGrbupEeljVxKQ6VtQ4fb7wJVK0n94oup3MJ4x4kFhTR9cfGMdgV7gtnQJIYeGxF4aM+HYqAQi
	oXFEKYog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAlnZ-00000002YkC-2Ljs;
	Tue, 12 Nov 2024 07:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAllx-00000002YQx-0hIK
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 07:57:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tAllr-0008SP-M1; Tue, 12 Nov 2024 08:57:07 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tAllq-000NGH-2m;
	Tue, 12 Nov 2024 08:57:06 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tAllq-007iYP-2T;
	Tue, 12 Nov 2024 08:57:06 +0100
Date: Tue, 12 Nov 2024 08:57:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZzMKUugcLKGY4aq-@pengutronix.de>
References: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
 <Zy3wh0qqT_LY8SkR@pengutronix.de>
 <BYAPR07MB4358A74708FE72C8789667C0EC582@BYAPR07MB4358.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BYAPR07MB4358A74708FE72C8789667C0EC582@BYAPR07MB4358.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_235713_249421_EE348484 
X-CRM114-Status: GOOD (  15.16  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NVME o nLS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 11, 2024 at 11:15:46AM +0000, Renaud Barbier wrote:
> 
> From barebox:
> -------------------
> 
> The node /dev/nvme0n1p1 does not exists only /dev/nvme0n1.
> From barebox, I saw that below once. 
> It is not repeating at present whatever the command I use:
> ERROR: ext4 ext40: probe failed: Invalid argument
> 
> 
> 
> > 
> > does "md -s /dev/nvme0n1" work as expected?
> barebox@LS1046A RDB Board:/ md -s /dev/nvme0n1
> 00000000: 00000000 00000000 00000000 00000000                ................
> 00000010: 00000000 00000000 00000000 00000000                ................
> 00000020: 00000000 00000000 00000000 00000000                ................
> ....

Ok, 0x00000000 could be correct or not. Try md -s /dev/nvme0n1 0+512, it
should give you the protective MBR at the end. Or use some other
non-empty area and verify with Linux the data is correct.

DMA issues as Ahmad mentioned is a good guess.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


