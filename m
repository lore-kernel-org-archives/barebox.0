Delivery-date: Fri, 27 Sep 2024 13:28:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98q-003Nv1-0G
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 13:28:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su98q-0001aq-GR
	for lore@pengutronix.de; Fri, 27 Sep 2024 13:28:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KaNcXcZogR7LUEEMJBx+CtoPqmLtzQfZpKdNUAtX8Ms=; b=KIVYZNo6wRYjmNNgePBb4ogwjY
	bA/XjIg2KmMJ0jTjzQ2PwfG9qtpOPEiYsekfGuPx4KWtZnvJz1IvJiAkn+OJpSHcUNVMwYmKvUldF
	OEW2w9cCTXEMRaapCds+0qCZaoVEERCpsg3AY0+ttK0Qla5iUEfb+9+kLLgoCCrj+neWfESxSkAXh
	WEtJn/k25QT7cdiRKYPoQvzs2BSu6ADNwU7g2yqDwgELGY0hpbLKVEPdOVeNp86vL3cv37GKER1bk
	UobRpHQSSn5asyTBo6f3VtRBtxIM3+jmykVa2w6rJaUTuCkkHbCCRm6ku7Abltn+dXUcw9u78BWhD
	iegT2GDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su98M-0000000Ax07-1G6s;
	Fri, 27 Sep 2024 11:27:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su95v-0000000Awdr-0pMc
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 11:25:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su95t-00008Q-EG; Fri, 27 Sep 2024 13:25:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su95t-001uYF-1u; Fri, 27 Sep 2024 13:25:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1su95t-000Xq2-1S;
	Fri, 27 Sep 2024 13:25:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240920094900.1838301-1-a.fatoum@pengutronix.de>
References: <20240920094900.1838301-1-a.fatoum@pengutronix.de>
Message-Id: <172743630501.129979.17068034442205013399.b4-ty@pengutronix.de>
Date: Fri, 27 Sep 2024 13:25:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_042507_279799_90320B76 
X-CRM114-Status: GOOD (  10.86  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] efi: payload: image use new CONFIG_ARM64 symbol
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Sep 2024 11:49:01 +0200, Ahmad Fatoum wrote:
> CONFIG_ARM64 was added as an alternative to CONFIG_CPU_V8 as encountering
> the latter in generic code is confusing for users not familiar with ARM.
> 
> EFI payload support was one such generic place, so let's replace the
> CONFIG_CPU_v8 instance there with the new symbol.
> 
> The if clause is moved to keep the order elsewhere in the file, where
> x86 checks are done before those for ARM. Both can't be active at the
> same time, so no functional change expected.
> 
> [...]

Applied, thanks!

[1/1] efi: payload: image use new CONFIG_ARM64 symbol
      https://git.pengutronix.de/cgit/barebox/commit/?id=a319bd58c617 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



