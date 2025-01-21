Delivery-date: Tue, 21 Jan 2025 09:33:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9hD-002a1Y-0D
	for lore@lore.pengutronix.de;
	Tue, 21 Jan 2025 09:33:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ta9hD-0001US-7n
	for lore@pengutronix.de; Tue, 21 Jan 2025 09:33:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=790q5QOQWYIf8oKcQgFyoaZ2aQEmKA46USJ12vVNMSc=; b=lAJKcTV3VtyoGlvsQ54ofePpj9
	2YnWOo9ggaoRfjMfGFnRmFPeoeeRxP6hXg0gA5KXn92TYa70m+BoL4NRpE6sKhlTpLjUrrTKnRgJ5
	g797TNGqfNBMRih82t4lP6rjYReEn/Z8nVHPo5HEm6IXW8RRIxLsFKTBnODkvK6NP6/TNrVCchnpW
	f4J3yiujtRCEBTOMkP7ergy15CPAthEm1UQ51kJB08u+1CFYl2cuVf05PTd2DwzBU7lybdw/vyzKZ
	iKqP1Qfrn49I91crwTZdtM0zePysU5RC/zznGkdAsR2BO3znG42l9zXTEBW0qHyrmE+ePPgMFaRn2
	3qHo0qzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9gc-00000007GUS-0ydi;
	Tue, 21 Jan 2025 08:32:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ta9gX-00000007GTO-3J0x
	for barebox@lists.infradead.org;
	Tue, 21 Jan 2025 08:32:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9gW-0001I6-Mt; Tue, 21 Jan 2025 09:32:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9gV-0014mx-2z;
	Tue, 21 Jan 2025 09:32:31 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ta9gV-0013wQ-2n;
	Tue, 21 Jan 2025 09:32:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Renaud Barbier <Renaud.Barbier@ametek.com>
In-Reply-To: <DM5PR07MB3532EA1B89A0848CE2A14C53EC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
References: <DM5PR07MB3532EA1B89A0848CE2A14C53EC1A2@DM5PR07MB3532.namprd07.prod.outlook.com>
Message-Id: <173744835186.253407.18356610908334968991.b4-ty@pengutronix.de>
Date: Tue, 21 Jan 2025 09:32:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250121_003234_062663_AE6748E1 
X-CRM114-Status: UNSURE (   6.98  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/1] nvme: add erase operation through
 sanitize command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 16 Jan 2025 10:52:02 +0000, Renaud Barbier wrote:
> Based on Linux nvme sanitize command and kernel driver, add the storage
> low level block erase. This operation erases the entire device, any
> user-specified size smaller than the storage size will result in an error.
> 
> 

Applied, thanks!

[1/1] Subject: [PATCH 1/1] nvme: add erase operation through sanitize command
      https://git.pengutronix.de/cgit/barebox/commit/?id=3fd6cf7ca245 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



