Delivery-date: Mon, 22 Jan 2024 10:16:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqPU-00BGWP-0F
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 10:16:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqPU-0001nn-Oq
	for lore@pengutronix.de; Mon, 22 Jan 2024 10:16:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MTwqR2c6NhL8lcmEO4sMzX+1ar+TL1OII8b9VZ8Ky3M=; b=II0WiAWt5wgCksrm7nDpHAErFm
	5ztbCul+1Z0Z2qQPT14WtYq5nALYyyvnWzWKpQrflm5jAe9dCyD4+Hx9WFnG5LLGdfFr1pnFP0sF1
	Sp2shRRdOYlR53R3k1hyBs1vz3DQNU9/IgzHg+LZ9AnapVTaBKeZtg3+S62CBb2OZbWG9vssfDRiX
	/jYFalHfyDPUPMT2AwV6SRhtCBFcXPKzoDfidPz3KHs59PhDA3ChT17w3Ug671HxqXtxFmYVr80Ap
	FvZ9imua7eSUs6KwuS3mVRHkgYR18yc39UXUfv6HD/DiJxE1rvV78KCbh2vY4YIIYb2FKXXP97Wle
	kJoD7oSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqOH-00BEnK-3A;
	Mon, 22 Jan 2024 09:14:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqOC-00BEkF-1w
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 09:14:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqO9-0001cL-Rl; Mon, 22 Jan 2024 10:14:41 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqO9-001YeY-Ei; Mon, 22 Jan 2024 10:14:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqO9-007yJ4-1G;
	Mon, 22 Jan 2024 10:14:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240119215518.1354896-1-a.fatoum@pengutronix.de>
References: <20240119215518.1354896-1-a.fatoum@pengutronix.de>
Message-Id: <170591488138.1900055.8975410146321887896.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 10:14:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_011444_644051_49F3D20D 
X-CRM114-Status: UNSURE (   8.31  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: drop temporary workaround
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 22:55:18 +0100, Ahmad Fatoum wrote:
> Like mentioned in commit db01bf84cf57 ("ARM: dts: i.MX8MP:
> snps,dis-u2-freeclk-exists-quirk"), this was just a workaround until
> barebox dwc3 driver was synced with Linux. This is now done, so we don't
> need to keep around this extra property.
> 
> 

Applied, thanks!

[1/1] ARM: dts: i.MX8MP: drop temporary workaround
      https://git.pengutronix.de/cgit/barebox/commit/?id=fb354a428a46 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



