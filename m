Delivery-date: Fri, 28 Jan 2022 08:52:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDM3F-00Fl2w-5D
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 08:52:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDM3D-0006hE-KL
	for lore@pengutronix.de; Fri, 28 Jan 2022 08:52:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RORLrhR1hB9Hgcqnyvc9lQa94f0qjxDBz8Sj8LXy3Kg=; b=HJZljD08xhrYBG
	oqXkwiFahE19YuQ3kFoHG1QKhazDAPQqD9ac7fRRiG8OQYRu8Ow1+26fIG2GqizZEGA+QN560NAuB
	fIF0+kjPZQXbp1Djkc1g1+8Op+zWi1D7aabd00ftGhBU08bQNK1DdMvW0pFXXzX8G8i5GvPiMm1Ec
	y1lT7vFNa3C8Zm6FDpwuX9f3Sm7N7FOcU2bWkYafVl7aytDxAQfb/l6qCpbIlZzuoW8fcC7U79TVM
	xL5b6XZDloutyRmgLcsAdPefBk48JMr7U7tMeRB5H1LGCVlftxR8dCvzXuUpDcx49yeOd2BAwIG/h
	C+mmkgTYUFEz3xVEZsBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDM1M-000sQK-Vw; Fri, 28 Jan 2022 07:50:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDLzU-000rUH-Ll
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 07:48:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nDLzQ-0005yG-Pc; Fri, 28 Jan 2022 08:48:12 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nDLzQ-0003tT-Dh; Fri, 28 Jan 2022 08:48:12 +0100
Date: Fri, 28 Jan 2022 08:48:12 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220128074812.GS23490@pengutronix.de>
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
 <20220124100458.2924679-4-m.olbrich@pengutronix.de>
 <20220126075727.GD23490@pengutronix.de>
 <20220126093513.GI11273@pengutronix.de>
 <20220126101524.GH23490@pengutronix.de>
 <20220126111609.GK11273@pengutronix.de>
 <CAMHeXxPJJuC=MrtXp2iiQUnozs+2p1a8nC40LZd0Wf43t_g0Og@mail.gmail.com>
 <20220127123924.GQ23490@pengutronix.de>
 <CAMHeXxMCGpq4+jkhU0hOHy6x6sn9a2=gUW_rfhfF9UtSZZNpDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxMCGpq4+jkhU0hOHy6x6sn9a2=gUW_rfhfF9UtSZZNpDQ@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:42:58 up 48 days, 16:28, 65 users,  load average: 0.10, 0.14, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_234816_745821_19D96CCC 
X-CRM114-Status: GOOD (  22.60  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] state: support backend-diskuuid / backend-offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jan 27, 2022 at 10:53:33AM -0800, Trent Piepho wrote:
> Could a linux dtb fixup be done in barebox?  This way userspace will
> only have existing properties: storage devices with partitions
> node(s), and barebox-state backend that points to a partition.  In
> this case, the partition node was added by Barebox.
> 
> In fact, Barebox already does partition fixups exactly like this.  So
> I think this would probably already happen.  It won't work if Linux
> dtb does not have the storage device at all, as the partition fixup
> considers that an error.  But maybe the Linux dtb will have the
> storage device node?  Or if it doesn't have it because the storage is
> "too dynamic" to put into the dts, then another fixup can make the
> node.

Michael wants to use this for EFI, so there is no full device tree under
Linux, there will only be the device tree snippet containing the state
node and now some dummy device describing the disk UUID.
While it sounds like an interesting idea it won't help us here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

