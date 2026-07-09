Delivery-date: Thu, 09 Jul 2026 09:45:51 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whjSB-001qIu-1N
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 09:45:51 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 448B620276B
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 09:45:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iV8jafLP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pSrd3ofbaR1ESgzGNwOv2qE6iyc05qijjgN6FfSpe4w=; b=iV8jafLP2yNZgX8Yp8Sz4CmO7d
	MAmjSKiSuKafHfiN/FSziVb6E6rYKMFHlbFfJGx14bOlI03+kefWs66LWUBfiTruCpbmBTUM6vZCK
	PGeiM664SLeJbaQuDzfM6LUskghuB6iBP5iEZXvo7q9gxlNVeWd8VQCFw7X5lqhqLKHnJixpZxgTH
	xGbFc5zd+oXGwXreETViNcKu+zk2h4CY24fiPgSWHriD8vOU03z5+sEO2Xh2rxUYgSPhm8M1mA5HH
	fAx8X2zSWPbXmDDuFfw44Oduuv7DywqzyABgnTGi0ikvusvw+G5PQVHmBex2kFU+8KnWW6/GRTN+0
	vw8H/iAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjQw-00000001Leb-23cb;
	Thu, 09 Jul 2026 07:44:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjQu-00000001Le0-10Dt
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 07:44:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whjQr-0001NI-Sm; Thu, 09 Jul 2026 09:44:30 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] efi: fix GetNextDevicePathInstance trace argument
Date: Thu,  9 Jul 2026 09:44:28 +0200
Message-ID: <20260709074429.534460-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_004432_274174_E79E4AE1 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Verbose EFI tracing formats device paths with %pD. The GetNextDevicePathInstance
    wrapper receives an EFI_DEVICE_PATH **, but passed that pointer slot directly
    to %pD. When the SCT called the service, [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-5.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[barebox.org];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 448B620276B
X-Stat-Signature: eadw8xhk4pqw4ninsipo8su4rtz8ncha

Verbose EFI tracing formats device paths with %pD. The
GetNextDevicePathInstance wrapper receives an EFI_DEVICE_PATH **, but passed
that pointer slot directly to %pD. When the SCT called the service, the trace
formatter interpreted stack bytes as a device path and could loop before the
service body was reached.

Log the pointed-to device path when the argument itself is present. This keeps
the trace useful while avoiding a tracing-induced hang during the Device Path
Utilities ACS coverage.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/protocols/device_path_utilities.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/efi/loader/protocols/device_path_utilities.c b/efi/loader/protocols/device_path_utilities.c
index ef88e2d647fb..8788149f6de4 100644
--- a/efi/loader/protocols/device_path_utilities.c
+++ b/efi/loader/protocols/device_path_utilities.c
@@ -143,7 +143,8 @@ static struct efi_device_path * EFIAPI get_next_device_path_instance(
 	struct efi_device_path **device_path_instance,
 	efi_uintn_t *device_path_instance_size)
 {
-	EFI_ENTRY("%pD, %p", device_path_instance, device_path_instance_size);
+	EFI_ENTRY("%pD, %p", device_path_instance ? *device_path_instance : NULL,
+		  device_path_instance_size);
 	return EFI_EXIT(efi_dp_get_next_instance(device_path_instance,
 						 device_path_instance_size));
 }
-- 
2.47.3



