Delivery-date: Thu, 26 Feb 2026 13:02:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4d-005s95-0w
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:02:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vva4d-0004lK-K7
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:02:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fozrNLZ2QNjJoHb4W1FI/XcoYyBpMDKwM/qqXoNlyDI=; b=OHeJBeVoiLURYItLLEB7i5guYk
	ltAy/aYiGVQNd/QuGii1apxspusT9AWypGmsXbPzSNTbigLa23Sk572lgXUksmEk/YYqHEU74LBsS
	xL89yVirfvKylfyszoiOYQ/U4NuhWDEK6Kk4hmHjQGdTjfiNIHNsvCBw0AeqtOt3FYwG5EBICAQQH
	ZMTciozFqbZoHreLMlnwPOyKVJoUOCNFpJ4PBjx3jImrUTUveqYeZLFB8l+nJ2snQEryVarNg8VGF
	RH9N8d48PJdXoO65vM/HY6PxJdZ9RRlusxGs7dNmYOADZ64yjIi1Z53HOJCMkc8QHMT89ytvrE7zN
	zom889gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva4D-000000065Bm-1PxB;
	Thu, 26 Feb 2026 12:02:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva4B-000000065B8-31ng
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 12:02:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=fozrNLZ2QNjJoHb4W1FI/XcoYyBpMDKwM/qqXoNlyDI=; b=JANEFz7DcdKUnOtVCNTeuqxEQD
	Q1xPlQ4W2PPTpBTyaay1jrEy10tRbyhgLXiu5htDjutgerizVRMMXPfm0IOUaVU6qGn7b54Orn2zd
	JlwL210nzDs5el65XyeXccZZ+8YK+DMllBdi5O34r108BWyafPpoGWrYTYCIxNDcl6iv/7xoN/DYL
	ogUMUbwJ1m7WSNZ3zlPEPtXi7BDyr64Vufeotz7G1Q4S4SUwh08FoucsQQe1Qc28pjhMd3AL5qL7W
	WM3zZo4qi2wr+Kg20vUBgx/nSfaUhtI7cWFL9fx+OZKwGtZLOu08voDK2iYqwhAL1XBgyBSngW+xW
	upJlvLrg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vva47-0000000AuML-2eXg
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:02:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva46-0004Uc-7z; Thu, 26 Feb 2026 13:01:58 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva44-002iuG-2I;
	Thu, 26 Feb 2026 13:01:58 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vva46-00000007sq7-01fb;
	Thu, 26 Feb 2026 13:01:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260225152832.446129-1-a.fatoum@pengutronix.de>
References: <20260225152832.446129-1-a.fatoum@pengutronix.de>
Message-Id: <177210731800.1878609.12774640138240847384.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:01:58 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_120159_718909_75CDCF52 
X-CRM114-Status: UNSURE (   8.58  )
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
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] ARM: Layerscape: LS1046: re-enable USB bus
 snooping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 16:28:29 +0100, Ahmad Fatoum wrote:
> Newer kernel device trees no longer have the snps,dwc3 compatible we
> match against, but instead have fsl,ls1028a-dwc3.
> 
> This is also the case for the DT embedded into barebox, so have barebox
> match against the new compatible. Compatibility for the old compatible
> is not needed as this code only runs against the barebox live tree.
> 
> [...]

Applied, thanks!

[1/2] ARM: Layerscape: LS1046: re-enable USB bus snooping
      https://git.pengutronix.de/cgit/barebox/commit/?id=50946afccfd1 (link may not be stable)
[2/2] ARM: Layerscape: icid: fixup ICID also for new fsl,ls1028a-dwc3 compat
      https://git.pengutronix.de/cgit/barebox/commit/?id=4c99998aa6c3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



