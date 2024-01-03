Delivery-date: Wed, 03 Jan 2024 19:32:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62S-002NTu-24
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62P-00037l-Jf
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pOKd1lki/8FbEx43tVGYUaADObJ7HQ6eKZzXh4OHItg=; b=LYN8T1Cy0dk8xF6hw3bcSgqnzR
	AV9U/mUX0u0OjaI07Xpc5qAW67ZK6xFCqIqrQmrLQ1arAFEY4veKT7DQfYjRoRsppvEE6c/rJA338
	pI60hMYGNjOtCf7eWGSUbjy9szO3qIcczyMU8kfCmHW5HjZEGNjRayO18iFMTS+a3KD4TO1tMHEUm
	rXD0c82I9cTMZIaBsFXikNeZe5DvSqUj7zRZcoAgZ7dioKm5wgc9FcwlyzYYfjqHCGs5FACas6s35
	2+vnQsicimvwwjDj6ItdA9q5EGs4jstuDaezciN5xFC8YrS4+iv/bR1CAdrBPtmMprdIf1v/gIh0K
	CKXD2BhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61E-00BhHs-0a;
	Wed, 03 Jan 2024 18:31:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL616-00BhAp-1h
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pOKd1lki/8FbEx43tVGYUaADObJ7HQ6eKZzXh4OHItg=; b=L5h48lNIQ80QhplWiYViJS0Ft3
	SMRXKnD+zRrSOWRhzbytMKHfk8OjubVgxjhh+tRZUHo8eZ/z6293ndZP5FrGhizIdCD5wRa5dJNSw
	TNzp54BVx98yuMgTnSpP0EKFcpFZyozO2e429qSQh6TRm9/VOCC2qiUY3yubocJAuoTLWfR0Qbul9
	QWjJ0TeKbqspzTCx1uEXzr7/RGF4hT6kjAU5wuzq7A9llJm4mKkQVLvvUSXbDobKFKhRxThfdxktg
	owvLY7cYodbbHywCQKli0gxJKly/kus7BYqdXYvxjVh8BL8bNPQYGs14l0jUQQVM10VqlCh8JO8rQ
	RODnXDOQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eBw-2N
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:30:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001Qx-De; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60y-000At8-Uw; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k4-001j4X-0d;
	Wed, 03 Jan 2024 19:13:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:32 +0100
Message-Id: <20240103181312.409668-73-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_220912_90B7ADFE 
X-CRM114-Status: GOOD (  13.05  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 072/112] efi-stdio: fix wait_for_event argument
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



