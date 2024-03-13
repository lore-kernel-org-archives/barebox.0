Delivery-date: Wed, 13 Mar 2024 08:42:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJGB-0044mn-0s
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 08:42:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkJGA-0006ym-ME
	for lore@pengutronix.de; Wed, 13 Mar 2024 08:42:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=if1mpev8cg/Pi0oaoDGql6ctSC+ahErhQasUQLDCItY=; b=JiyyRVzd19X2WnNXoL5scwBo6L
	A6asEnPpfUn2kcoefLb/e/I/QblsDY0uveKTyDQ8/bh6zR0l9nYMJLJDA4RWwMXRtEO2PY6t4UXvd
	DHm9TmPmDQB6Wleawa1dTAmRltUd5Vdy+DbIlgCRHc56JUB2DJBydBipbXGXYnBXMfoAkyULXu2Me
	PQE/EQqv30rIBEePDmbTWSOjF/p5k/vIamdmz3z8NaLRotc2DVCgkkFZ51dZbppWJSxrqklzaexlb
	vBcKhv5S5/uysKJn8LD4fU6TqBfcXL72IQyjUfc9ToiVzFKpnXqwsLM2mVnS45CtxSz2hV4qdHFlu
	bWPbRXUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJFr-00000009EBJ-1q3y;
	Wed, 13 Mar 2024 07:42:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkJFn-00000009EAL-3foI
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 07:42:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFm-0006j8-Mm; Wed, 13 Mar 2024 08:42:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFm-0064TO-AF; Wed, 13 Mar 2024 08:42:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkJFm-0043MC-0p;
	Wed, 13 Mar 2024 08:42:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240311102152.360762-1-s.hauer@pengutronix.de>
References: <20240311102152.360762-1-s.hauer@pengutronix.de>
Message-Id: <171031574225.966191.3470515873612262015.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 08:42:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_004223_949944_1F5B908D 
X-CRM114-Status: UNSURE (   6.49  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/5] ARM: i.MX: ele: move ELE_READ_SHADOW_REQ
 definition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 11 Mar 2024 11:21:48 +0100, Sascha Hauer wrote:
> The ELE request defines are in include/mach/imx/ele.h, move definition
> of ELE_READ_SHADOW_REQ there as well.
> 
> 

Applied, thanks!

[1/5] ARM: i.MX: ele: move ELE_READ_SHADOW_REQ definition
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ec5d544549e (link may not be stable)
[2/5] ARM: i.MX: ele: add function comments
      https://git.pengutronix.de/cgit/barebox/commit/?id=f95b4906c0f7 (link may not be stable)
[3/5] ARM: i.MX: ele: add ele_write_shadow_fuse
      https://git.pengutronix.de/cgit/barebox/commit/?id=2554f8daa381 (link may not be stable)
[4/5] nvmem: add nvmem_device_get_device()
      https://git.pengutronix.de/cgit/barebox/commit/?id=50c4a22e1232 (link may not be stable)
[5/5] nvmem: imx-ocotp-ele: implement permanent write support
      https://git.pengutronix.de/cgit/barebox/commit/?id=9b799d058e46 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



