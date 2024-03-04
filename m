Delivery-date: Mon, 04 Mar 2024 20:05:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDd2-008dDU-2X
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:05:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDd2-0000kN-2G
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:05:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOKd1lki/8FbEx43tVGYUaADObJ7HQ6eKZzXh4OHItg=; b=q4jLm1Y+x/NAxFmAUolU1WMg4I
	nPSgw9Vvip6+NtRTpbJEk+3HcGcMqtY7K5cTw9FTNv43qzT+PlqXuM8NPmeLlV4mnKdeLNjxOHKjm
	C6RlbdVgzQ/C1Kki5/w7AM8PHgoyZcN1ZAOeTJ7RYb7VA4wnSDgr8LqS0L6oWCjGi0DpSo3p5Q9R5
	NsRdNGrblOcUibv12kvGkilPF+8CMyGxOfAzeLC9/QPnK6jM0jn0KcqF4AeLlo18rgwX5wqseEjfY
	Wqm9MtiJjQ1qqHyXabgvkQ1mqpMlr2hfDepe2/SoiZJo4hANLbK33/YRi21yHGMNfLB0ewUJwV2Mq
	qaOpPtUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDcR-0000000AJuR-28ww;
	Mon, 04 Mar 2024 19:04:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaQ-0000000AIRv-0Mx0
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pOKd1lki/8FbEx43tVGYUaADObJ7HQ6eKZzXh4OHItg=; b=H8E72A3DIfp9lu3gfmMLVwL/3Q
	dq8BAnkFPCOK04/Ya+YWvS8hDSqZcnoVNQgCKoklgzDNG8WQQt35nupVwVYEHI3r+JJ/75IyAcOsM
	anw02e56m2t4z1UR/J4f0bTTA0ZINF5/49LxSuk0qcbTVDhYl5IoXO+YuSHNM3hu00YXRiNtj47m9
	8HBftVbi0f5Abwtkvq1+IkjWuVhYQeOyYw4603u04KlIkhLreRfHz7BUjuQkRnp6DaluYBAisb248
	Sxuq547R1sa7Jq3w8iHG2niRTgOr6xxbPE+lNto+Puiw1r5A6XKxvsj48tt2KiRhfQ3EEiCe6WLfH
	Gbqh+3gw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaK-000000051vd-199m
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-0006Hg-UN; Mon, 04 Mar 2024 20:02:46 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaI-004PMH-Eu; Mon, 04 Mar 2024 20:02:46 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYM-00Ed9V-0y;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:57 +0100
Message-Id: <20240304190038.3486881-73-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190248_423979_79713D27 
X-CRM114-Status: GOOD (  13.54  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 072/113] efi-stdio: fix wait_for_event argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EFI v2.10 documents the following about EFI events:

  | // EFI_EVENT: Handle to an event structure. Type VOID *
  |
  | typedef
  | EFI_STATUS
  | (EFIAPI *EFI_WAIT_FOR_EVENT) (
  | 	IN UINTN NumberOfEvents,
  | 	IN EFI_EVENT *Event,
  | 	OUT UINTN *Index
  | );
  |
  | typedef struct _EFI_SIMPLE_TEXT_INPUT_PROTOCOL {
  |     EFI_INPUT_RESET Reset;
  |     EFI_INPUT_READ_KEY ReadKeyStroke;
  |     EFI_EVENT WaitForKey;
  | } EFI_SIMPLE_TEXT_INPUT_PROTOCOL;

To sum up, wait_for_event takes the number of events to wait for and a
pointer to an EFI_EVENT array of that size. Because we define efi_event
as void *, it went unnoticed that we passed a plain pointer instead of
a pointer to a pointer like the API expects.

With the using of an opaque type in the follow-up commit, this will
trigger a warning, so we fix this here in anticipation.

I am not sure how this went unnoticed so far, but the efi-stdio
console driver behaves as one would expect in Qemu.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/efi-stdio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index c8c84270093e..d31de5f53796 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -87,7 +87,7 @@ static int efi_read_key(struct efi_console_priv *priv, bool wait)
 
 	/* wait until key is pressed */
 	if (wait)
-		BS->wait_for_event(1, priv->in->wait_for_key, &index);
+		BS->wait_for_event(1, &priv->in->wait_for_key, &index);
 
 	if (priv->inex) {
 		efiret = priv->inex->read_key_stroke_ex(priv->inex, &kd);
-- 
2.39.2



