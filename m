Delivery-date: Mon, 19 Jun 2023 17:10:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBGWP-00DKEd-CN
	for lore@lore.pengutronix.de; Mon, 19 Jun 2023 17:10:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qBGWM-0007p8-Un
	for lore@pengutronix.de; Mon, 19 Jun 2023 17:10:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=20yWDXGhmJWyWJomeXD6Ljzb2cMKEIBd9+/ZXTp8EzI=; b=USZbXwD75g9NiEIpI1w/YQj8gz
	YMgHGfPYhX3QVvfzGLSnHGTxXNtihPcMCDxJDmRdHHQBub/ETpRRe5BRLLGBM/kFs4LFszS2SYyMS
	ajRQ1xvKE00yyfmWZIc/mNc4Y7/iJtZbvYGYnjpIzMJE2tdC8WCC0pl/HZb0mclL9KbWewXAqL+2H
	iELDzGBOpwtZjisMWcyvcbhC43Y/ovz+/3mqVrEpRuHEI4SzloEbUoy9PQAnn7Aed8PJcbKgLSGm0
	5h9XvAmDgQJSJpy/Sy7jdKQD5uvYhhQyJA1K+8Q6kx16C5nyIvxWr9efHLX4TYfJdteksdZ86SVtG
	XDsw4tVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGV9-008kAe-0m;
	Mon, 19 Jun 2023 15:09:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBGV5-008k9r-2a
	for barebox@lists.infradead.org;
	Mon, 19 Jun 2023 15:09:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBGV1-0007UW-Pl; Mon, 19 Jun 2023 17:08:59 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qBGV1-0000pZ-I8; Mon, 19 Jun 2023 17:08:59 +0200
Date: Mon, 19 Jun 2023 17:08:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230619150859.ltl55zzgcuhjfjt2@pengutronix.de>
References: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230619143742.1698346-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_080903_860148_2734AB9F 
X-CRM114-Status: GOOD (  11.20  )
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
Subject: Re: [PATCH RFT] blspec: support boot /dev/disk0.rootfs to mean boot
 disk0.rootfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-06-19, Ahmad Fatoum wrote:
> boot /dev/disk0.rootfs would always fail:
> 
>   Nothing bootable found on '/dev/disk0.rootfs'
>   Nothing bootable found
> 
> boot /mnt/disk0.rootfs and boot disk0.rootfs would however work.
> This can be surprising to users, so just skip over /dev if supplied.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> I am not sure why this wasn't the case before. Any ambiguity in doing it
> this way? Change still needs to be tested.

According commands/boot.c help message:

| "BOOTSRC can be:"
| "- a filename under /env/boot/"
| "- a full path to a boot script"
| "- a full path to a bootspec entry"
| "- a device name"
| "- a partition name under /dev/"
| "- a full path to a directory which"
| "   - contains boot scripts, or"
| "   - contains a loader/entries/ directory containing bootspec entries"

the 'full path' to a device is not suported yet. Should that be fixed
within the boot-cmd?

Regards,
  Marco


