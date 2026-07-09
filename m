Delivery-date: Thu, 09 Jul 2026 13:14:32 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1whmi8-001tTx-1Z
	for lore@lore.pengutronix.de;
	Thu, 09 Jul 2026 13:14:32 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 197852006EE
	for <lore@pengutronix.de>; Thu, 09 Jul 2026 13:14:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Fw5iNfMf;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EiDro7r5V4P77B22qFe/5ttSvLejv9wMUSWnP0DJLgY=; b=Fw5iNfMfYCH64LFMr8/H4BKV3z
	VW1qdWZQFxNlCS79zZpgAcOailgoVDJ7P+3i581w/e1VpEJ9s2ADKzef65g6cGYstw+Femc0gLp+i
	XERjt2o8iKCCTAck38IFeUxy4e9B1POizj/QqcK8JCEchZ91jZIQMTBfJI7GyqEduoDSoHv6bfKj0
	4TTj30P2iV0C+R/T+KQ+4B5Zi+fniqzWuxao1EALLXvN/i5KED1sviVufHyHWE5Nio+3BGBjx1DNE
	q/PTFE4A0jPAkTqbD2aChvk0+62QkMwYooPYEVEe9V57/xmtNMvTOQDEotKQe7Oy7wUnCl21XdImk
	gXO25MRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjqj-00000001Nn9-0uq1;
	Thu, 09 Jul 2026 08:11:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whjqh-00000001Nlk-2BqD
	for barebox@lists.infradead.org;
	Thu, 09 Jul 2026 08:11:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1whjqe-0000dM-6M; Thu, 09 Jul 2026 10:11:08 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] efi: loader: coalesce overdue periodic timers
Date: Thu,  9 Jul 2026 10:11:05 +0200
Message-ID: <20260709081106.550595-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260709_011111_558168_27D53C6C 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  EFI timer events are polled by the loader instead of being
    driven from an interrupt. If a periodic timer is serviced late, advancing
    the next deadline by only one period leaves old deadlines pending. 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	DMARC_NA(0.00)[barebox.org];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 197852006EE
X-Stat-Signature: 3cihdnix5doxhany53a8ojohuowjttiy

EFI timer events are polled by the loader instead of being driven from
an interrupt. If a periodic timer is serviced late, advancing the next
deadline by only one period leaves old deadlines pending.

Advance periodic timers past the current time when they fire. This keeps
each poll to one notification and avoids consumers draining stale timer
ticks in a tight loop.

This fixes an issue of the Fedora-Workstation-Live-44-1.7.aarch64.iso
GRUB going through its countdown way too fast on a Google Corsola.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/loader/boot.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/efi/loader/boot.c b/efi/loader/boot.c
index d34de119f4e7..503b44073886 100644
--- a/efi/loader/boot.c
+++ b/efi/loader/boot.c
@@ -735,6 +735,27 @@ static efi_status_t EFIAPI efi_create_event_ext(
 					 notify_context, NULL, event), *event);
 }
 
+/**
+ * efi_timer_rearm_periodic() - re-arm a periodic timer after it fired
+ * @evt:	timer event
+ * @now:	current time in ns
+ *
+ * Timers are polled. If a periodic timer is serviced late, signal it once
+ * and skip missed intervals so clients do not drain a backlog of stale ticks.
+ */
+static void efi_timer_rearm_periodic(struct efi_event *evt, u64 now)
+{
+	u64 periods;
+
+	if (!evt->trigger_time) {
+		evt->trigger_next = now;
+		return;
+	}
+
+	periods = div64_u64(now - evt->trigger_next, evt->trigger_time) + 1;
+	evt->trigger_next += periods * evt->trigger_time;
+}
+
 /**
  * efi_timer_check() - check if a timer event has occurred
  *
@@ -760,7 +781,7 @@ void efi_timer_check(void)
 			evt->trigger_type = EFI_TIMER_CANCEL;
 			break;
 		case EFI_TIMER_PERIODIC:
-			evt->trigger_next += evt->trigger_time;
+			efi_timer_rearm_periodic(evt, now);
 			break;
 		default:
 			continue;
-- 
2.47.3



