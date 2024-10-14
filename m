Delivery-date: Mon, 14 Oct 2024 15:57:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZO-004HZF-0R
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZN-0006XK-Fr
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qkmUB+T38KYAE7YeE8pgG2230T143p/VcIbRmbPutHk=; b=VTgUK24Ff2ba93qhBS81USVrvT
	waVMbCRGtlIiWZvXtTtFlabXbUL13WWlsJlAyqgaScMJqBdyXIrWtxjaxfd+ow1B9DALJXzVGx85L
	4FIngxHHrgFVJK/TocQ1kmfrNwzBkGnPG0K4p1S+VP4v3J66Ta6nwmt82bzpZxmmQL/bCT01Np9s1
	hfrZ9U7DcJfAKhdpQ2Mz3Rcn/cH/C+JOWekasHEZVH8htr72BPi1m05lS6bYRs0QQyySrbpJNx18m
	bKK1hvz3MKXl/it86l9sH/7VtCGUIaJzn5YmNpJHh5F1PxQ0jKcNuANTOPRghQJtUqOuMdYk2lj9j
	Zw6ihR9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYp-00000005NRg-0CK9;
	Mon, 14 Oct 2024 13:56:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kfn-00000005AlR-3gUK
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:59:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Kfm-0007S5-CJ; Mon, 14 Oct 2024 14:59:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Kfl-001nNx-Vm; Mon, 14 Oct 2024 14:59:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0Kfl-002zje-30;
	Mon, 14 Oct 2024 14:59:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241002163621.2458659-1-a.fatoum@pengutronix.de>
References: <20241002163621.2458659-1-a.fatoum@pengutronix.de>
Message-Id: <172891078193.713955.3145015786372583432.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 14:59:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055943_965399_E39B7532 
X-CRM114-Status: UNSURE (   8.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] uimage: use read_full where appropriate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Oct 2024 18:36:21 +0200, Ahmad Fatoum wrote:
> Apart from the CRC code, where it's no problem to just compute the CRC
> of the last read and read again, all other instances of read() in the
> uimage code are written with the assumption that the read will not be
> short.
> 
> Use read_full to satisfy this assumption.
> 
> [...]

Applied, thanks!

[1/1] uimage: use read_full where appropriate
      https://git.pengutronix.de/cgit/barebox/commit/?id=a77f55e34932 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



