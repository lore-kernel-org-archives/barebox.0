Delivery-date: Thu, 27 Jan 2022 13:41:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nD45Y-00Er3W-6m
	for lore@lore.pengutronix.de; Thu, 27 Jan 2022 13:41:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nD45W-0007HU-PX
	for lore@pengutronix.de; Thu, 27 Jan 2022 13:41:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7AgOkCsxW0wfDvzI36AwRSRdy2LOT9dBKWfuGLLsqs=; b=AdYWoP8HWEObJq
	9aYZXuvOYTzayvQldmi3r48JetR82F1VnzKPj95/8Wq2gRN1UBC9HZ8C+v082peWsACygGXOh/7IG
	8X0opmma4CdcQwsrdbRkg+o3eJHlHRKmdbKpGHIt+7YI+iBppZ4iJObJad+2raSXj7evugnygI5JK
	pTGvM0P0tyJVkzA69C1BuNc6hRQxhxCs5fdAF9CTaNGpKz4aEcO30AeWBMrD+i0qHeHtErkjxz0ao
	jQPsi7ZCYjqW4PTMMIaOCPywBnq5ifd42KSpO8MnMQIxkG10zxHqUQqFm2YpQFov88E5MQkhA9kHS
	SbYPyN8VsVtCJt1uVWLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nD43s-00FkY7-TA; Thu, 27 Jan 2022 12:39:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nD43l-00FkUn-2z
 for barebox@lists.infradead.org; Thu, 27 Jan 2022 12:39:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD43h-0006u1-FL; Thu, 27 Jan 2022 13:39:25 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nD43g-0004E9-St; Thu, 27 Jan 2022 13:39:24 +0100
Date: Thu, 27 Jan 2022 13:39:24 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220127123924.GQ23490@pengutronix.de>
References: <20220124100458.2924679-1-m.olbrich@pengutronix.de>
 <20220124100458.2924679-4-m.olbrich@pengutronix.de>
 <20220126075727.GD23490@pengutronix.de>
 <20220126093513.GI11273@pengutronix.de>
 <20220126101524.GH23490@pengutronix.de>
 <20220126111609.GK11273@pengutronix.de>
 <CAMHeXxPJJuC=MrtXp2iiQUnozs+2p1a8nC40LZd0Wf43t_g0Og@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMHeXxPJJuC=MrtXp2iiQUnozs+2p1a8nC40LZd0Wf43t_g0Og@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:33:21 up 47 days, 21:18, 90 users,  load average: 0.09, 0.20, 0.26
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_043929_161984_CC640EDB 
X-CRM114-Status: GOOD (  31.50  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/3] state: support backend-diskuuid / backend-offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 26, 2022 at 04:18:51PM -0800, Trent Piepho wrote:
> DTS ranges are usually specified as <offset> <length> in one property.
> The sizes of offset and length fields are done with the #address-cells
> and #size-cells of the bus the node is on.  I.e., barebox state
> shouldn't be defining if offsets or lengths are 32 or 64 bits, it
> should/is done by the device the offset or length refers to.
> 
> Like the normal 'reg' property in most nodes for register banks, or
> the various "ranges" properties map an address space in the current
> node to one in another node.
> 
> This backend-diskuuid, backend-offset, and backend-length seems like a
> custom alternative version of a range that is specific to barebox
> state.  Also, if the backend is a partition defined in the dts, then
> the node of the partition specifies its size.  But if the partition is
> found by uuid, then the barebox state device specifies the size of the
> partition.  Seems inconsistent.
> 
> It seems like there should be a better and more consistent way to do this.
> 
> Here's an idea.  Identify the device by uuid and use existing
> fixed-partitions.  Example:
> 
> {
>     compatible = "storage-by-uuid";
>     uuid = "abcd-1234";
>     // Everything below here already exists and is unchanged
>     partitions {
>         compatible = "fixed-partitions";
>         barebox_state: state@1000 {
>             label = "barebox-state";
>             reg = <0x1000 0x200>;
>         };
>         barebox_env: env@1200 {
>             label = "barebox-env";
>             reg = <0x1200 0x1000>;
>         };
>     };
> };
> 
> When the top level node here is found, the matching device is located
> by uuid and contents of the node are added to that device.  Adding
> fixed partitions is done the same way it's already done.  The
> difference is we can specify the device by uuid instead of needing to
> locate the path of the exact hardware device.

We discussed this approach internally as well and decided for the way
Michael has implemented it for two reasons. First it is easier to
implement, if not in barebox, but in Linux userspace where we need to
parse that binding as well. Second we don't need another barebox custom
binding when we extend the existing custom binding.

The fact that with the current approach we have to know that an
arbitrary property contains a 64bit value rather than the default 32bit
made me think if the approach of having a compatible =
"storage-by-uuid" driver is really the better one. I know that Ahmad
agrees here as well :)

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

