Delivery-date: Mon, 10 May 2021 12:19:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg30e-0002nd-8K
	for lore@lore.pengutronix.de; Mon, 10 May 2021 12:19:34 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lg30d-0003kq-BZ
	for lore@pengutronix.de; Mon, 10 May 2021 12:19:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FAAq1ve2yCeHrbdBA4shunNpRrPRou5R8QnjbTvDdjA=; b=HXV4XLgOyEJ9aZ6yDVoI2myVR
	Gbt8P8iBcoeexmgSrh6KRLiBSnyklj2PVOB2ULwK3E9XOUifqNAjGyE16Kxx68p/JStpfIB2jfYps
	skKBHkDyiYON/uxxEOg/RHWDpYy0sntHySupj9NZxPgNyTdrf7y7RJyiXiakh5Zic9HItj7qNp6jo
	L5J7caBCexcOTNGqvMV9ce4Hva0H/hj5pzVl31Xj27DN1GsW9pKGaVMsSYFfibf3iaeBdSHKv06g4
	Yoddi3Qu7ibPGfYfMxJd7qXd4/X/qH149bddV0xfWTF3+5GX8g1Zz3Xlg4tVKQhiEbxffutD1zp+0
	dpLd3i0Kw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lg2zf-00DuL6-F3; Mon, 10 May 2021 10:18:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg2zZ-00DuKi-3W
 for barebox@desiato.infradead.org; Mon, 10 May 2021 10:18:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jdka4R+e9VGKqv8uYbC3iyws6d9Yzf4eSXh4GfWiURU=; b=KVXhnw1S+0ceQpmxGnRMMrMbH9
 XxS/keuyGXBHbd0ajgx0f5raZBPSuSRBXR5gkRHnOpkRgwXqHuajp924RQPT8ViSGLi1UhHxqPkbD
 G7NiawocsALl3i9V2bas/Zp74+/wVfkB1k4ZRPoCA+g9tQ8ysLGu0vxCEgSauwkntmGSytBl4oOik
 ZsdFgbsJYGg8e4S565LT5RfF9+JEY3qtG+n2amCtlEP8/Y1wTXt4c6twE3Nj2x0NwdOHbD/a4HldO
 jDXq3eqAG3H2sivL2aFcifSQJHOXStvpQoz40xHrhQezdB+hR5L0S2oFVSNSpeEarWz98yccrhe2s
 OmjEicqA==;
Received: from mib.mailinblack.com ([137.74.84.110])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg2zW-008WD5-8k
 for barebox@lists.infradead.org; Mon, 10 May 2021 10:18:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id E08B41A09AF
 for <barebox@lists.infradead.org>; Mon, 10 May 2021 10:18:15 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KOIGC9YF;
 Mon, 10 May 2021 10:18:15 +0000 (UTC)
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by mib.mailinblack.com (Postfix) with ESMTPS id B8F751A09AC;
 Mon, 10 May 2021 10:18:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 90B7827E063F;
 Mon, 10 May 2021 12:18:15 +0200 (CEST)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id b477vj4xZhrE; Mon, 10 May 2021 12:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 44CE827E0720;
 Mon, 10 May 2021 12:18:15 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 44CE827E0720
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1620641895;
 bh=jdka4R+e9VGKqv8uYbC3iyws6d9Yzf4eSXh4GfWiURU=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=i2sQ5mqb2a6u/1er3Q5qA94KQTP2jy4VYWsASpOGskT9XhVSochWWSoUnMOeEkLDM
 q1mT+GxLbSGqhWPgJXx5XMlAeUDAwZsAMv08sPRKhw1UKXtzKUVrPz0xD3l6LDg+KS
 xIxAjP+uZAo4scklqp07bJ7z4obBrNOIeYw7VoV4=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id TZwu0G_2WVaV; Mon, 10 May 2021 12:18:15 +0200 (CEST)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 31A1B27E063F;
 Mon, 10 May 2021 12:18:15 +0200 (CEST)
Date: Mon, 10 May 2021 12:18:08 +0200
From: Jules Maselbas <jmaselbas@kalray.eu>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Neeraj Pal <neerajpal09@gmail.com>, barebox@lists.infradead.org
Message-ID: <20210510101742.GA20010@tellis.lin.mbt.kalray.eu>
References: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
 <20210507105830.GW19819@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507105830.GW19819@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_031822_534051_0B8B4C40 
X-CRM114-Status: GOOD (  14.50  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [BUG] Out of bound read of size 1 in __d_alloc function which
 further leads to __default_memcpy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Fri, May 07, 2021 at 12:58:30PM +0200, Sascha Hauer wrote:
> Hi,
> 
> On Sun, Apr 18, 2021 at 01:10:10AM +0530, Neeraj Pal wrote:
> > Hi,
> > 
> > I have found the Out of bound read issue of size 1 when argv[2] is "" in
> > __d_alloc function fs/fs.c:1254 which further goes
> > and crashes into  __default_memcpy call lib/string.c:562
> > 
> > Tested on:
> > - barebox-2021.04.0
> > - git commit af0f068a6edad45b033e772056ac0352e1ba3613
> 
> I can reproduce this here. Thanks for reporting it. I just sent out a
> series fixing this issue, you are on Cc:
I think this should also be fixed by the patch I've sent:
(74946415a "fs: Fix link_path_walk to return -ENOENT on empty path")

This patch might not have fixed this exact case when running the nfs
command. Have you been able to repoduce this issue with this patch
applied ?

I've havn't tried to setup a net interface to debug nfs commandi,
instead I was using simpler command such as `md5sum ""`.

Best,
Jules


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

