Delivery-date: Mon, 17 Nov 2025 09:38:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKukR-001uvZ-2Y
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 09:38:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKukR-0002Gk-8S
	for lore@pengutronix.de; Mon, 17 Nov 2025 09:38:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CbGXe1krWrjq1xGLc6HKk84nYHddbf/aQz6fI0M0sHY=; b=dHZKWe4ke5uF65Sa7l3aJlQe1v
	4l4mCnbK1Btq003XDYJL2h+ZlH4jsJUkDo6v4nz4E9Qm6leDmExPEV4/wjFontcriFI+UhUKY5OPN
	UjPTgW1MzhEOmcDbsjvWkDa8j/TaLTpviZ9/i0EabkMIGBTSKTruyVErdKKL3tCICS3t0lczYpzRU
	cGnuSQwg+WvjpyjAUtOfTDv8HglZGViH9NyJNCj8Uicr9wFiI3JvXZRNDReNY6mgXvVx02xwhwft+
	9JfSEkWduL/CfA7TbJRQlx1E0tEMhlvviLsGY1iNLi8bRPsz1jFimib8lWprH7czeDxz/L3pKiF3/
	gxhkn7WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuk4-0000000FhUY-1P4O;
	Mon, 17 Nov 2025 08:37:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKuk1-0000000FhTb-1ndQ
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 08:37:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKujz-0002C4-W2; Mon, 17 Nov 2025 09:37:40 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKujz-000shP-1u;
	Mon, 17 Nov 2025 09:37:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vKujz-00000005Qkj-43ZZ;
	Mon, 17 Nov 2025 09:37:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Bruno Knittel <bruno.knittel@bruker.com>
In-Reply-To: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
References: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
Message-Id: <176336865951.1294414.950972613413884572.b4-ty@pengutronix.de>
Date: Mon, 17 Nov 2025 09:37:39 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_003741_472754_E5C936F9 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: Re: [PATCH 0/2] ARM: socfpga: arria10: earlier debug output
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 14 Nov 2025 08:23:14 +0100, Steffen Trumtrar wrote:
> The UART is a dedicated peripheral on Arria10 and therefore can be used
> without the FPGA bitstream loaded. Move the lowlevel UART init to an
> earlier stage to get debugging output for the DDR and FPGA setup .
> 
> Tested on the Reflex Achilles.
> 
> 
> [...]

Applied, thanks!

[1/2] ARM: socfpga: arria10-reset-manager: release UART0
      https://git.pengutronix.de/cgit/barebox/commit/?id=0ecec7397757 (link may not be stable)
[2/2] ARM: socfpga: arria10-init: setup uart earlier
      https://git.pengutronix.de/cgit/barebox/commit/?id=5378bef5c19e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



