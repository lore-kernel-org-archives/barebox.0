Delivery-date: Thu, 13 Oct 2022 13:54:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiwmt-007Jap-9v
	for lore@lore.pengutronix.de; Thu, 13 Oct 2022 13:54:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oiwmr-0007j4-8c
	for lore@pengutronix.de; Thu, 13 Oct 2022 13:54:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ygg40eMlP4Ak9bqbCTwwV/M49g9F2fbrQOIu+rHAh5E=; b=FZ2nyGK6+UYqioPJPfo7LpyNhL
	cupPcLhgYkXZwGCxp9a2hEZBUgeqL6hAQUohGGBNQEDmDvlyAO2nn2YUKegstT8u/8nMJWdgJW3qa
	d1FsAjWARR+P+e2TruA/ZB7o13xpZOsi3pGsT0kS6Hk9owH5TVAHzon7rXCjt9qCCnQUQs1ObYMTY
	EmbEX8zcZTZONkkStOAPH0kAL53habD8omz8sd+4G83qrhKn27HqoQPPTBx/iYqftRMvBkWAbDzZz
	T4lz7wQI3d72JPFUJKkRG8rBy6le2pzHu2bKRrcx/ERz698Y/N6QCUABV6MKqDLrrKRvXeSLXuAAJ
	KFW1GUQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiwlH-00BbTM-8k; Thu, 13 Oct 2022 11:52:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiwlC-00BbSW-5l
	for barebox@lists.infradead.org; Thu, 13 Oct 2022 11:52:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oiwl4-0007Z7-Kl; Thu, 13 Oct 2022 13:52:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1oiwl4-00050E-E1; Thu, 13 Oct 2022 13:52:14 +0200
Date: Thu, 13 Oct 2022 13:52:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221013115214.3bvxg2v3gj653d6s@pengutronix.de>
References: <20221013090352.562170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221013090352.562170-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_045222_227469_87224BED 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 0/3] Fix GCC 11 THUMB2 relocate_to_current_adr
 miscompile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,
On 22-10-13, Ahmad Fatoum wrote:
> TL;DR: GCC can prove that variables aren't supposed to overlap and as
> such it generated code than readded get_runtime_offset() on top of an
> already relocated linker-defined variable's address.
> See PATCH 2/3 for a disassembly of the affected code. Board code can
> be similarly micompiled, but that's a fix for another day.

I didn't received a 2/3 nor a 1/3 yet. Does it stuck somewhere?

Regards,
  Marco


