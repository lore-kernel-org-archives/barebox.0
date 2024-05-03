Delivery-date: Fri, 03 May 2024 09:02:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mwc-00GmWT-37
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 09:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2mwc-0006Ei-E2
	for lore@pengutronix.de; Fri, 03 May 2024 09:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cdAuw5tpfyHi8UE1j3bo2h15Xibb/vxoqUUUQLTgZcQ=; b=sJuFP6L9m2EeMBbK/3l13Sum8B
	hSskFog2D4v7OQ4BXdlEdZy8UR8RZ/kRDEWJhAR9h41dtF1Fl+8eqNt45Br8G3bWUBU/aInw1eKQa
	m6eCQPZDPaaY5kPV5RC4BVJw4AkUJoXu7k6oJJxQ+htn16z9BqVD1etQgmj2KBfLVQFJpEZS/olGt
	hHPSEdGrVRu28+zlsYoalklee9c3MS/awv8Ht66zn2ZUD/ACvZuPe6zx6F0/4HuhzMsojVxnCCe1W
	+6B9U69RWaJMkkhOqV7+GDFMkbGLKWG/Wr+Py+Os6yDM/Lc+UpaN5S4HZgsX1rhjkb9YQVl/yQyfb
	M8xRikNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mw0-0000000FOLC-1L3C;
	Fri, 03 May 2024 07:02:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2mvw-0000000FOKQ-2wfE
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 07:02:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mvv-00066q-4m; Fri, 03 May 2024 09:02:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mvu-00FehL-OX; Fri, 03 May 2024 09:02:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s2mvu-000400-2F;
	Fri, 03 May 2024 09:02:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
References: <20240430180633.1581279-1-a.fatoum@pengutronix.de>
Message-Id: <171471973469.15301.9464639415027640111.b4-ty@pengutronix.de>
Date: Fri, 03 May 2024 09:02:14 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_000217_103668_85A5E5B5 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] bootm: make uImage support optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Apr 2024 20:06:30 +0200, Ahmad Fatoum wrote:
> While looking into CONFIG_TIMESTAMP, I noticed we still build UIMAGE
> support unconditionally, when BOOTM is enabled. This series makes it
> optional as most users no longer need it.
> 
> Saves me 4KiB in an LZO-compressed ARM64 image.
> 
> Ahmad Fatoum (3):
>   uimage: move file_to_sdram implementation to libfile
>   bootm: allow disabling uImage support
>   uimage: have TIMESTMAP depend on UIMAGE
> 
> [...]

Applied, thanks!

[1/3] uimage: move file_to_sdram implementation to libfile
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b29c539e461 (link may not be stable)
[2/3] bootm: allow disabling uImage support
      https://git.pengutronix.de/cgit/barebox/commit/?id=59edd0c3be21 (link may not be stable)
[3/3] uimage: have TIMESTMAP depend on UIMAGE
      https://git.pengutronix.de/cgit/barebox/commit/?id=76131012282d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



