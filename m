Delivery-date: Mon, 28 Aug 2023 09:58:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaX94-00BmJ7-V8
	for lore@lore.pengutronix.de; Mon, 28 Aug 2023 09:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qaX92-0008Kp-LJ
	for lore@pengutronix.de; Mon, 28 Aug 2023 09:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2onAAhHp5vxhFg8S2tJodkhr7oA+Yke5t3YyGgBP3/w=; b=3flOyau/vyG9jy8lnCG5pQ0/zU
	YK1ffjDlRh/F3N4R4mc25xTgeEoyqkzp/eqB0TEj6HfIGha6uWjde31FPrbViYOTsbcIysv4q7n1w
	ptTApGcnFKTB+xdAvWfKhUoz/G2EC2bHdtqOC/S3VeDtC1THFDh1OfHeMoWqyEvHPuZu/Pf3rLkHg
	+1/GNf6kHc2tFWSIfMPWpPYDX2E5iPXo2ksfoQHbZ4bRtnrryTUQWlJvlNMHJFdkrXmhHCX3z+LOk
	jhXFmNEAWBktaHPVRo4DjADCNS3U/TwK0fWOPtGMn3Bf8/4jMm4JQMjpmISU5RLX+PBQ4tm9Khb06
	FqPCYbpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaX7x-0095sg-0w;
	Mon, 28 Aug 2023 07:57:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaX7u-0095s2-0p
	for barebox@lists.infradead.org;
	Mon, 28 Aug 2023 07:57:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaX7s-0008GA-RN; Mon, 28 Aug 2023 09:57:32 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qaX7s-000446-J3; Mon, 28 Aug 2023 09:57:32 +0200
Date: Mon, 28 Aug 2023 09:57:32 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230828075732.GJ16522@pengutronix.de>
References: <20230825172250.2857448-1-a.fatoum@pengutronix.de>
 <20230825172939.2857999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230825172939.2857999-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230828_005734_292802_BF8ADC48 
X-CRM114-Status: GOOD (  19.74  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! fastboot: scale default sparse max_download_size
 with available memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 25, 2023 at 07:29:39PM +0200, Ahmad Fatoum wrote:
> mem_malloc_end is the end address, so we need to add one to get the size
> out.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Forgot to squash
> ---
>  include/memory.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Could you resend the whole patch instead of sending a fixup?

This is one of the cases where b4 only recognizes the fixup patch mail
as a patch, but not the one with the original patch:

Looking up https://lore.barebox.org/20230825172250.2857448-1-a.fatoum@pengutronix.de
Grabbing thread from lore.barebox.org/barebox/20230825172250.2857448-1-a.fatoum@pengutronix.de/t.mbox.gz
Checking for newer revisions
Grabbing search results from lore.kernel.org
Nothing matching that query.
Analyzing 3 messages in the thread
Checking attestation on all messages, may take a moment...
---
  ✓ [PATCH] fixup! fastboot: scale default sparse max_download_size with available memory
  ---
  ✓ Signed: DKIM/lists.infradead.org (From: a.fatoum@pengutronix.de)
---
Total patches: 1
---
Applying: fixup! fastboot: scale default sparse max_download_size with available memory
Patch failed at 0001 fixup! fastboot: scale default sparse max_download_size with available memory
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".
error: patch failed: include/memory.h:12
error: include/memory.h: patch does not apply
hint: Use 'git am --show-current-patch=diff' to see the failed patch

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


