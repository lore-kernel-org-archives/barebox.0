Delivery-date: Mon, 16 Dec 2024 08:18:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Ms-008jMp-2U
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 08:18:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Ms-0007AB-PA
	for lore@pengutronix.de; Mon, 16 Dec 2024 08:18:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CUDnyhjNcmCTyy6ECKdrXe0joCUn1bX1yAS28y7+WnA=; b=c9qIm/cczgjNKHKV0ZLfEBJS8V
	Fitxu8GokHmzzEkxH4ef8siO+nJMYjqKkbIOxfhURK5QAzBp2T7FsNTWcp+sexNKKM1+Wel5IG90h
	CQMOCQ7t5IwsH6zsdK81f+fRqsgTrrd8d4ajT4eN48xM27YC+z2HJp670XMoqhY4NFW92E2JJPH/E
	hsHlG6G/tC/1xoNZMJuE620ph7G6sgCUNzXiZof+naFrXwN2e5EX6keKlAWNhw8fOHeYMcfRH/82A
	jW7a92K38Tt/z2o/N8cdpGlbREE5And40PxgQ/X9WuY9B2tUkjeHXjTq5LnV3Kwu55X71ldspcafc
	/2Tof5kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5MI-00000009Fy2-0ebV;
	Mon, 16 Dec 2024 07:17:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5Lz-00000009Fx1-3wy2
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 07:17:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5Ly-0006yq-MZ; Mon, 16 Dec 2024 08:17:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5Lx-003efA-2P;
	Mon, 16 Dec 2024 08:17:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5Ly-0066vP-1R;
	Mon, 16 Dec 2024 08:17:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241214084834.959213-1-a.fatoum@pengutronix.de>
References: <20241214084834.959213-1-a.fatoum@pengutronix.de>
Message-Id: <173433343844.1456490.7405540072193836609.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 08:17:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_231719_997694_8678FABB 
X-CRM114-Status: UNSURE (   7.99  )
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
Subject: Re: [PATCH master] optee: fix i.MX8M link error when loading
 OP-TEE without CONFIG_TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sat, 14 Dec 2024 09:48:34 +0100, Ahmad Fatoum wrote:
> CONFIG_TEE is not required for barebox to load OP-TEE, just for
> communicating with it.
> 
> The Kconfig option for OF_FIXUP_OPTEE, which guards a symbol that is
> used by imx8_soc_imx8m_init() whenever CONFIG_PBL_OPTEE is defined is
> made conditional on CONFIG_TEE though, leading to alink error whenever
> CONFIG_TEE is undefined:
> 
> [...]

Applied, thanks!

[1/1] optee: fix i.MX8M link error when loading OP-TEE without CONFIG_TEE
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c006bbd0582 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



