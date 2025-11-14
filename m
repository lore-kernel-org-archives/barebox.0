Delivery-date: Fri, 14 Nov 2025 14:17:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtfk-000v1s-2v
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:17:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJtfj-0002aV-Du
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:17:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AudqcXil6GDEnsHRdxWzhwDcXlGCH1Ds+lFaO2pj0Yo=; b=Jdn0ukEoXf5/4C+dp5NAEpwMxk
	7MxAuKe7yHK8yr7UeCE+aGuoFWmmlx+wim8dFoHYXYA0ZielCiNu9mgzB3O7j2JqcHl8VTEBsrCir
	7i2IRL+PYdrU+rS2FUj2LwTpUdovR0Ciu4BdbzEIVLBKDdqJN4s1LvMkJvYt9+QEo21zcktH57Huv
	YjqsnLpGKSebeIGOTZ/6zF7d1YaHxBoFyyP+NLRlEyQeapZ075LPdMHEIMdcvy1Xtb69o2M7k935M
	bAG37t0k+pY7CafdHorfpqB6xW9fZMBx9dw3uCpx2hZW4V6m7R6kToGgKpAhokoJjBKLC3vzPa1Ht
	XKVmcerw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtfM-0000000CEvD-44vL;
	Fri, 14 Nov 2025 13:16:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJtfK-0000000CEsE-02eK
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:16:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtfI-0002TI-JE; Fri, 14 Nov 2025 14:16:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtfI-000QiT-0r;
	Fri, 14 Nov 2025 14:16:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vJtfI-00000002BaK-2gfs;
	Fri, 14 Nov 2025 14:16:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20251110-fixup_docs-v1-1-1acaf5593d26@gmail.com>
References: <20251110-fixup_docs-v1-1-1acaf5593d26@gmail.com>
Message-Id: <176312619619.520859.3257648353762597453.b4-ty@pengutronix.de>
Date: Fri, 14 Nov 2025 14:16:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_051638_055692_B6CE853E 
X-CRM114-Status: UNSURE (   6.41  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: defaultenv-2: Document C-based init
 script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 21:55:31 +0100, Sohaib Mohamed wrote:
> Add a note to clarify that the default init script is now implemented in
> C rather than as a shell script.
> 
> 

Applied, thanks!

[1/1] Documentation: defaultenv-2: Document C-based init script
      https://git.pengutronix.de/cgit/barebox/commit/?id=776a3ddf6823 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



