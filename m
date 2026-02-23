Delivery-date: Mon, 23 Feb 2026 11:55:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTb2-004nqV-2h
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:55:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuTb3-0003AX-6d
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:55:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ffInHU7aelI+/zS2D3++Ul9OD5/+Ig0TzHRX6AE2K0k=; b=LP2qHjSLQ19uU5ZoIwsl3qNcUb
	MhTb7rjIh8qzKVhD6qCRcv7sgPQpVy75wI18ZTEZIdG906BuN2akUfI0RHoeNf+MjWtITnuiN5In4
	eTLHuOJJLc3QXNEUBchWWsEVKvCoXao6HjKw0dd1yN96HryhXEhJ8fViJH5jfNILYfEMPFaLrldx+
	BoE09EJTgE2ttTuw6xxmxP2y7zw924OX08hkVI7fY0PXEwwLlBhp3r3dGUj82D6GySd79+E58ziZa
	6eKoLnAxrCH2+EdoQOpYsIIibBV3DsOR2UbO/PYwAat2KntPB625W+yH2nm+AvbW+kGRjaVirvgSB
	e4zr7jMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTag-000000006PU-1YEG;
	Mon, 23 Feb 2026 10:55:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuTad-000000006Ot-4A1E
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:55:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTac-00036J-Bq; Mon, 23 Feb 2026 11:54:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTaa-002DMj-2g;
	Mon, 23 Feb 2026 11:54:58 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuTac-00000000tqr-0VJM;
	Mon, 23 Feb 2026 11:54:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260212093827.588641-1-a.fatoum@pengutronix.de>
References: <20260212093827.588641-1-a.fatoum@pengutronix.de>
Message-Id: <177184409811.214582.8663959730176408422.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:54:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_025500_038436_1B78C2B0 
X-CRM114-Status: UNSURE (   5.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ci: container: include qemu-system-ppc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Feb 2026 10:38:01 +0100, Ahmad Fatoum wrote:
> We have a qemu-ppce500_defconfig now that we will test in CI, so enable
> qemu-system-ppc in the container.
> 
> 

Applied, thanks!

[1/1] ci: container: include qemu-system-ppc
      https://git.pengutronix.de/cgit/barebox/commit/?id=bc820a87ed76 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



