Delivery-date: Mon, 19 Feb 2024 16:07:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc5En-00Elyd-1o
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 16:07:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc5Em-0000JI-VO
	for lore@pengutronix.de; Mon, 19 Feb 2024 16:07:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CP16Emk3TIPIh5kOkIQzm5ac1/5Vrywz+BdQew3Pm/E=; b=S8id9GbLuM6x9/C2u0QczY6Qlw
	tiVsXY/URnzgiPbgpM2p3otwEm3rjHAFXRR0ggVoKqgdwssGJiwA3iIT8I+9ilm3j8W9q1w5VoKhy
	F/YlDWbgekfP/w19CtdumvbI8KI3qi6w9DFjN0GvBA30w3+uCYm1OclIY8X731utPeP9B7sS2Q0mX
	dloGMIMoDgWtPDB4C22n+LNmQyTXYKoncM8GncG7jO1KCPggW1QJssPLjklZIzxUamX+l6Zobnc3w
	4/iLNClRyFfbQ86kKURlUU1AmSfytbylchqJP9Y+EXk3w6Jb6JHFoyiywKXOgjXV+2Joiz861zGDi
	rh92Mw5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc5EJ-0000000B0aU-1n0t;
	Mon, 19 Feb 2024 15:06:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc5EG-0000000B0Yn-1RQB
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 15:06:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rc5EE-0008Mq-Kk; Mon, 19 Feb 2024 16:06:46 +0100
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rc5ED-001fzy-A7; Mon, 19 Feb 2024 16:06:45 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1rc5ED-00FuZ1-0l;
	Mon, 19 Feb 2024 16:06:45 +0100
Date: Mon, 19 Feb 2024 16:06:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20240219150645.pumpmaqelykk62nz@pengutronix.de>
References: <20240219145159.1962618-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240219145159.1962618-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_070648_404073_CD7C8952 
X-CRM114-Status: GOOD (  15.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] use environment partitions in GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 24-02-19, Sascha Hauer wrote:
> We have specified a GUID for GPTs to be used as barebox environment
> partition, but so far we haven't made any use of that. This series
> changes that. We now start using environment partitions when we find
> them, provided the board code hasn't specified any other partition.
> 
> This likely doesn't change much for existing boards because most of
> them actually have an environment partition specified. For new boards
> however it becomes feasible to not register a partition explicitly.
> 
> Something that has hold me back from doing this earlier was that barebox
> was not able to create an environment partition itself, so barebox
> couldn't persist the environment on an unpartitioned device. Now with
> parted support this has changed, so I think it's worth it to give it a
> try now.
> 
> Sascha

LGTM, feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> 
> Sascha Hauer (3):
>   partitions: efi: Allow to create barebox environment partition
>   bootsource: add function to get device_node we booted from
>   environment: use barebox environment from GPT partitions
> 
>  commands/parted.c       |  2 +-
>  common/bootsource.c     | 14 +++++++++
>  common/environment.c    | 65 ++++++++++++++++++++++++++++++++++++++++-
>  common/oftree.c         |  7 +----
>  common/partitions/efi.c |  3 ++
>  include/bootsource.h    |  1 +
>  include/efi/partition.h |  3 ++
>  7 files changed, 87 insertions(+), 8 deletions(-)
> 
> -- 
> 2.39.2
> 
> 
> 


