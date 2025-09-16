Delivery-date: Tue, 16 Sep 2025 11:38:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS8x-003dzL-07
	for lore@lore.pengutronix.de;
	Tue, 16 Sep 2025 11:38:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uyS8w-0005qc-Gv
	for lore@pengutronix.de; Tue, 16 Sep 2025 11:38:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2fCta4PpUgjrhB40cY+jXMi7mEnEzUx29Ce/vXN3lu8=; b=Awv2HF0Oue5u4NPOta+eKGMDIA
	cKiVJfWdZw2MJhpPdJFUzAhzZATloA2iPpjz0CAXxC4e9KGq5/laXVf4iHvgX6hDdo6AEUFRjCeAp
	ogK+IlPFYPdPZjqbhUFhU1zXnwjTFOc+qK1QXGD3mMgzY7JZZRMwnMUtlOZ1obolm5YeZhsBjB6Pc
	qQ7j/M0FB1mWoHia8uB6qoTdXj+vWWqagSep+zZos07Zvj5K9auZBiruLZPdM2hvgCektAGnR//rJ
	WwCeGR1vDaf0g4+qh9yAnR70oy8oFhn8uZ5Nq+K9hmF7ZbTOweQ+A4UvKo5d5J5E+76UsHfE1CJIt
	ZmwoVCHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS8S-00000007P7N-25aX;
	Tue, 16 Sep 2025 09:38:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyS8P-00000007P5m-1h7I
	for barebox@lists.infradead.org;
	Tue, 16 Sep 2025 09:38:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS8N-0005hE-Oo; Tue, 16 Sep 2025 11:37:59 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS8N-001ZDk-1n;
	Tue, 16 Sep 2025 11:37:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uyS8N-00000002zRJ-25Gm;
	Tue, 16 Sep 2025 11:37:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: =?utf-8?q?Christian_Thie=C3=9Fen?= <christian.thiessen@airbus.com>
In-Reply-To: <20250916071938.3224210-1-a.fatoum@barebox.org>
References: <20250916071938.3224210-1-a.fatoum@barebox.org>
Message-Id: <175801547949.712814.2047563835618754251.b4-ty@pengutronix.de>
Date: Tue, 16 Sep 2025 11:37:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_023801_445343_E3516571 
X-CRM114-Status: UNSURE (   5.86  )
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
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] checkpatch: drop ENOSYS warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 16 Sep 2025 09:19:35 +0200, Ahmad Fatoum wrote:
> We don't have system calls in barebox and we make ample use of ENOSYS,
> so let's drop the checkpatch warning to avoid confusion.
> 
> 

Applied, thanks!

[1/1] checkpatch: drop ENOSYS warning
      https://git.pengutronix.de/cgit/barebox/commit/?id=6fe17982f930 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



