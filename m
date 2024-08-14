Delivery-date: Wed, 14 Aug 2024 12:44:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBUW-009VfA-2n
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 12:44:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seBUW-0007AK-9d
	for lore@pengutronix.de; Wed, 14 Aug 2024 12:44:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cO85FBwhs7RmgIKUFBV4x8nip5+CEQRfqMtnf+wyXfs=; b=UgrEZF60utgVEnIg57rNdpyctK
	U1gXaMhqzBJITYDWfQWxUathYFTcBK2Il6DJoJp3Tjw6+L28a2WKb4B3IBk5gaRzz7rwS9Aa07vMT
	JxfZJYKIcKXN72oTMZsMhOm0MdOpRytg7Ry8LrjXoUEiUm83XSI5AJlvN5m4KyXN5R9F6bsR3NNpf
	yw954IJ4//q6BQWJaEPHRVomguHwMiN5Aou3tKHrnT7tlINk09zDUfnyPgi+9MbtV9Sk5a/9P/K2a
	v1xuCtkYctOHBxx1n9iHWmJdiXb2fSXqbNuWuDwIfygPpyG8hXGvqbCwUKbcKIXtiNMpqFnzLKpH7
	iUb1uJgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBU1-00000006fGc-3zjS;
	Wed, 14 Aug 2024 10:44:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seBPd-00000006dsB-42ho
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 10:39:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBPc-0006Zo-I9; Wed, 14 Aug 2024 12:39:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBPc-000L9P-5K; Wed, 14 Aug 2024 12:39:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1seBPc-005V5a-0M;
	Wed, 14 Aug 2024 12:39:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240814093824.71656-1-a.fatoum@pengutronix.de>
References: <20240814093824.71656-1-a.fatoum@pengutronix.de>
Message-Id: <172363196810.1311119.10933386953879401698.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 12:39:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_033930_039896_5FEDED50 
X-CRM114-Status: UNSURE (   7.44  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: drop explicit reservation of scratch area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 14 Aug 2024 11:38:24 +0200, Ahmad Fatoum wrote:
> The scratch area is just some unused space between top of stack and end
> of early memory / start of OP-TEE. There's nothing i.MX specific about
> it, except that we use it to store the bootrom log.
> 
> The initcall reserving the scratch area was added to avoid barebox
> proper overwriting it later on during boot.
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX: drop explicit reservation of scratch area
      https://git.pengutronix.de/cgit/barebox/commit/?id=68e794593178 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



