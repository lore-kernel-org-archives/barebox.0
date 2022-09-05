Delivery-date: Mon, 05 Sep 2022 19:41:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG61-007kya-Ku
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:41:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVG60-0002xx-A2
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:41:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VIP03eECp6UrQykvZ2kRNp2Yzy5LX+q/mtPTk2rpbbc=; b=mm2lKXe6hGXxBtom0IHzAYXH9s
	ANur0DmvguFcP14zZ/WTiCDO/eIxKS4iuj8K6CAWhm2HpFh5OGyrmRthlp3gL0q93+iDpriXUPTtv
	CevaLjoL0RC05vHq8kfBRAUCHbofVD/megnS95hK7sgHG9F+LmW0uURczNe+3fx8kpL2+EKQ2a0Wo
	1Nqz4xJKfj/IFr9G6GQCFJML332KowRAKg9tvCBHb3p5PlQIGR/nn/CpurCGxP7gMswFufLSMDZ4Q
	fuqSPhLTwrC+4x+8O98cNAYTlh4YwtMRvIQBiRjxjTKB2axiuTR/IGb9FYJJ6q5rFQwGfMb9is+/p
	WsA08rdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG4D-007hOU-Av; Mon, 05 Sep 2022 17:39:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q7-00H4C0-C2
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VIP03eECp6UrQykvZ2kRNp2Yzy5LX+q/mtPTk2rpbbc=; b=fguGXImubLBDqBWC8HJ9KJDsZE
	tSCDE13VmA1o0gz72RFU1r0mEgs0blhWYT1p6NzV/Nv2QwPV9uIkmRgBw8CBCUZzguySOet6OFNn9
	VbgORj3YryXaUV/4mhgDkgjTD7A6/p7Y66u2ZAeAEvBXRYhARinWC2nOyL2Ro6SZSX2Kftd11II/M
	/VV+Ru3/urYclgbnNLg3Juz/Dl80JYRvjdxtUdDkhp6dlcWXgsRN6F7XRSq6WSFwsJo8MKo7fxap9
	YG/THgdMlcFiDIiZ6Mjrps+IGOAfb2549aPN99J5mRei3xagwEYduG9DbNIEYpT9sman++kpUAYEx
	nFbFAONQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjG-4Y
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Gj-4P; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042GO-B7; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002WfA-56; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:57 +0200
Message-Id: <20220905095557.596891-33-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_695099_4B7CD4E5 
X-CRM114-Status: UNSURE (   8.70  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 32/32] net: fastboot: keep error message initialized at all times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Static analyzer points out that an unfortunate sequence of fastboot
commands can have us end up with an uninitialized error_msg, so
initialize it in that case, so we have something in there at all times.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 net/fastboot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/net/fastboot.c b/net/fastboot.c
index aa483f57a74e..932eb05c4341 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -126,6 +126,8 @@ static void fastboot_send(struct fastboot_net *fbn,
 
 	if (error_msg)
 		header.id = FASTBOOT_ERROR;
+	else
+		error_msg = "no error";
 
 	/* send header */
 	memcpy(packet, &header, sizeof(header));
-- 
2.30.2



