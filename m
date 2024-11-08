Delivery-date: Fri, 08 Nov 2024 12:46:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NRB-006J7s-2Q
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 12:46:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9NRC-0004re-Dj
	for lore@pengutronix.de; Fri, 08 Nov 2024 12:46:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4I2j/GTZIwiWVf0tCfFsYJTypZIlH6ky8I6dgUA0E8U=; b=RABdtI3lOCOkhqa64tDHpQCNKD
	lqmhZpmuHO4MJDnIVSKrM5VbqF8IvKhPBS3/Mh/hEOVSnnQz/uj/csbcQ5q50Z6RjY7vT2//0QtYh
	ec/CaA81BlOdCChb+GfOo8ib4DelVdwsIK21w/+bFVe8EYEJMeiaeNv6mDBCsQHgg/4aIEy4xjvfJ
	SIluW6dRTOIWEKcmL09dkGcaRzYMkrZuI/HJPqko+WOwCnpVoRl8xraBH5bC1qQZb2Lq/3gtwoeKe
	qRs/X6iQ8xDwh34KiQ88x2yDPk9MKo1Qe0inxWfMIqnbPhPGB80TKn+IQ6Oysop1Do4K0Z30PgU4L
	R8s0e1cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9NQh-0000000AOS6-0bq2;
	Fri, 08 Nov 2024 11:45:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MoH-0000000AGyy-1EJ1
	for barebox@bombadil.infradead.org;
	Fri, 08 Nov 2024 11:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4I2j/GTZIwiWVf0tCfFsYJTypZIlH6ky8I6dgUA0E8U=; b=ACthiy7EFs6XUxbPLcJrLcvrWg
	mdpXUH4wuqrhy2ZiLQFtvcEcL4I+7MXjW1e85Aw3bdSITV+OCjQdFfzG4RpVagGVUCP28tijN4TYl
	0vzNBjDg0+IX1cw5y+UN77IX2n7eMyK2dFQLGhSGIV/hpjh5eZqCOA4SSeklIG96xVxyiAeFzrRGK
	78KYlDnbAS0rFt12NuBzADWSJNNbz+pbcKArnckuXR3TAERg/O5eY+v/an3Aq70fHya/ToQ/2uCdl
	x57CfKeenDQR7olK6V1aBUeEeuV+wJBfF9yNApR1pn/KEkroX5fJFsnF3KuRDL0iEdU7QnJjHifsw
	cgnzh4sg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9MoD-0000000CITF-3NoW
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 11:05:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MoC-0002Sw-G2; Fri, 08 Nov 2024 12:05:44 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MoB-002bjx-1W;
	Fri, 08 Nov 2024 12:05:43 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t9MoB-0008Kd-1E;
	Fri, 08 Nov 2024 12:05:43 +0100
Date: Fri, 8 Nov 2024 12:05:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <Renaud.Barbier@ametek.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Zy3wh0qqT_LY8SkR@pengutronix.de>
References: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BYAPR07MB4358138C14685D6A11CFF8A1EC5C2@BYAPR07MB4358.namprd07.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241108_110546_105773_B7B7ABD5 
X-CRM114-Status: GOOD (  19.20  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: NVME o nLS1046A-RDB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

On Thu, Nov 07, 2024 at 01:42:18PM +0000, Renaud Barbier wrote:
> I have installed a NVME device on a LS1046A-RDB:
>       `-- pci-1957:81c0.1
>             `-- pci-126f:2263.0
>                `-- 0x00000000-0x6fc86d5fff ( 447.1 GiB): /dev/nvme0n1
> 
> My barebox version is 2022.03
> 
> Is there a way to format or mount the device from barebox?
> 
> 
> barebox@LS1046A RDB Board:/ mount -t ext4 /dev/nvme0n1 /mnt/nvme0n1/

It should work exactly like this.

> mount: No such file or directory
> running automount command 'mount nvme0n1' failed

This message is because there already is an automount command registered
for /mnt/nvme0n1. /mnt/nvme0n1 is the default path for /dev/nvme0n1. You
could have just typed 'mount nvme0n1'

does "md -s /dev/nvme0n1" work as expected?

Is it correct that there is no partition table on that disk?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


