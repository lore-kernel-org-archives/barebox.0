Delivery-date: Fri, 05 Sep 2025 12:03:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuTI0-008OYh-1x
	for lore@lore.pengutronix.de;
	Fri, 05 Sep 2025 12:03:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuTHz-0003Lx-FO
	for lore@pengutronix.de; Fri, 05 Sep 2025 12:03:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:Date:To:From:Subject:Message-ID:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lDVXW1GHScPHw+QnI/NtnFr/tShNJ5cQFyvyBpW9szU=; b=5DVBfmwFkWzwAZeAnXf32KNk3m
	2gvtjYe2X/ZhKb3ThHy8KN/dBFc78oMZ12Bp/M30WwzgvrPQIrvsfoF5qjOx+hKgMvChElfMxh49h
	L/0lIOf9h0S4bywd8nYNr0aRLV/evgKyKqDmW8XcXrdV+0CK5BRlHK+FBVYdh7xrDzIAh05P4rS87
	Hygpz4CKyCpgvKt+na7iD1wN75q9fPrwyRm/ixBz436jyt6e6qNntNeHRIuXXzo7d6gwMu+SLFbjg
	xf4hdVv/ym4gnTuPmTJte7nsVmOZ0J7lFVWn8r320GraZoWop10l4ExEZkTpWZfdxVHkWdY6+7Ftu
	Yit1O7jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuTHI-00000000v6s-2nwk;
	Fri, 05 Sep 2025 10:02:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRnV-00000000MHC-38hs
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 08:27:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuRnS-0005gb-MA; Fri, 05 Sep 2025 10:27:50 +0200
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuRnR-003rTH-1v;
	Fri, 05 Sep 2025 10:27:49 +0200
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ptz.office.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <jlu@pengutronix.de>)
	id 1uuRnR-00Bt0G-1K;
	Fri, 05 Sep 2025 10:27:49 +0200
Message-ID: <30f3f0493110fac196fa2ac575dbff914c404c36.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
To: boot-architecture@lists.linaro.org, barebox@lists.infradead.org, 
	u-boot@lists.denx.de
Date: Fri, 05 Sep 2025 10:27:49 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_012753_777921_828BD9D6 
X-CRM114-Status: UNSURE (   4.44  )
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
Cc: stefan.schmidt@linaro.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Call for Participation: Embedded & IoT micro-conference at Linux
 Plumbers 2025
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We are happy to announce that the Embedded & IoT micro-conference was
again accepted for Linux Plumbers this year. Hosted in beautiful Tokyo,
Japan December 11-13.
https://lpc.events/event/19/contributions/2005/

Topics cover all things embedded and IoT. Boot time to kernel size, low
power communication, telemetry and also RTOS. Devicetree and build
system have their own MC and we can move sessions between them as needed.

As with all MC's at Plumbers we are not looking for talks, but rather
discussing current problems and working towards their solution. If your
proposal has a specific stakeholder (maintainer, developer, company)
that would be needed for a fruitful discussion, please mention it in
your submission.

The CfP is open now and will run until October 3rd. Please do not wait
until the end with your submissions as we are going to accept good
proposals even before the end, so the MC might be filled up before=20
October 3rd.

Jan & Stefan


