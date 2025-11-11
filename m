Delivery-date: Tue, 11 Nov 2025 15:56:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpmv-000BSm-1Q
	for lore@lore.pengutronix.de;
	Tue, 11 Nov 2025 15:56:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIpmu-0007W0-U7
	for lore@pengutronix.de; Tue, 11 Nov 2025 15:56:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lPL4jq+IuMoSaF1Qshc+dy8Vmn0pYyKQRQ3yqeq8SUE=; b=P+LTAo+UtBlI37R3vV77Vx5k+3
	tMo/i0q4jL5SdPaDFuGNxFEhRC+VYnXWpIWQIOcqNK6qfzulXDI5h3iAgG6U13sPJ/3QGljxGN5SP
	rL3U6R5o/CV3PpNB8rS6I1kV3+lzD2Ttso8mdV/3jqrujX9jJdfUMO3+6ZttjSvwjJbdOHTOJ7a1z
	vaQRVxBU+06JHioeUqG18JdrzaPyaXtGUmQALMUB6ohmFCOHsXHbUxfZBr25B9Z4BRlg7KHCd3ldf
	TCiSEYSRxShrAQqKwmcwtmyJul7mBPFTfkIYZPJzKQUw1WFoXwxxLnFqomMJYswLIKme/7PlwlCQ1
	+3vOjXrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpmN-00000007Lfh-2hPo;
	Tue, 11 Nov 2025 14:55:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIpmL-00000007Leu-2NFr
	for barebox@lists.infradead.org;
	Tue, 11 Nov 2025 14:55:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIpmI-0007Ni-FW; Tue, 11 Nov 2025 15:55:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIpmI-008DdM-0w;
	Tue, 11 Nov 2025 15:55:26 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vIpmI-0000000HIb3-2gHH;
	Tue, 11 Nov 2025 15:55:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251110190428.3401453-1-a.fatoum@pengutronix.de>
References: <20251110190428.3401453-1-a.fatoum@pengutronix.de>
Message-Id: <176287292617.4123028.17531728965157573954.b4-ty@pengutronix.de>
Date: Tue, 11 Nov 2025 15:55:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251111_065529_632196_C86C7DF4 
X-CRM114-Status: UNSURE (   6.82  )
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
Subject: Re: [PATCH master] migration-guides: add notes for v2024.09.0 to
 v2025.04.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Nov 2025 20:04:27 +0100, Ahmad Fatoum wrote:
> v2024.08.0 was the first release included in OpenEmbedded core, so add
> migration guides for later releases to aid users in updating.
> 
> November 2024 didn't have a release, so that's why only seven migration
> guides are added.
> 
> 
> [...]

Applied, thanks!

[1/1] migration-guides: add notes for v2024.09.0 to v2025.04.0
      https://git.pengutronix.de/cgit/barebox/commit/?id=839595746889 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



