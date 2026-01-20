Delivery-date: Tue, 20 Jan 2026 17:12:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKo-003Rao-1c
	for lore@lore.pengutronix.de;
	Tue, 20 Jan 2026 17:12:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viEKn-0001Vp-BH
	for lore@pengutronix.de; Tue, 20 Jan 2026 17:12:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VWF+nrZgjWJIUoG9GJAqGltkU0pgRfEyh7nUjFtNYbM=; b=cJVehqXdvBS56h
	pZtat2LgwqpSvl9oC6IEOtNyV9x4bNcKbXhRe5e1MP5s9ks0U1CJrzZVz8YnMMoVva72pTjbQ27Wz
	kREs4gBEGXNJZgzY/Wml7cjiuK2R71+bTmISAv2TdZkM3WzAe9y8I+ahcYo9nnT1cojEOZiV7Y//v
	ZTrOu3pn8YSgUSGrPsXPs8e/oXqyKhpuG+qttyihCz3OTwHcFEsCU7R7CwO74ZeOt2CrBC/KBMlgl
	iUE9m+G2f6hx1QEfMcu7aBMdE7/STjfUTqP/hzVezHrnQhRHf6E2nxBgdaNVzxqOzSSzl+Mb+84Wm
	VCllG9yO4J9QFakrtOjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKM-000000048Nz-2ED6;
	Tue, 20 Jan 2026 16:11:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKL-000000048NX-0Eyf
	for barebox@bombadil.infradead.org;
	Tue, 20 Jan 2026 16:11:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=VWF+nrZgjWJIUoG9GJAqGltkU0pgRfEyh7nUjFtNYbM=; b=oM0DJEWcxRY7mdwKiGxLJYXHLq
	maiGWGjq74oCXgOOtlfZi3gf3+0shfBjHIfPKvBLhtD3Jlt9pn4tW+c5zk6GtiMC3UcGkNjzFbrMx
	ktKpR2liM9oOy/09wI+WvRavCJX0Ewi0nSOCfvBc5fGV5XIVqN2zCODxj54gpNW2PNt2BwXFR+qOw
	Ix3d+jdw2wfmRT7ht5WVG306vX4UySfA3vmd/MhmNugxAHBGXKHXnZigwmzRh5E7maOvyTkz/9xrr
	5b5ZOP/BqIJcNdpqRxk7NK0kiRraAm9+O353sf2+ozwxhkHymXdWd7ggeu+OEu9mkonm72DRgzMxl
	FovRgPbQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viEKI-0000000ENhN-02tm
	for barebox@lists.infradead.org;
	Tue, 20 Jan 2026 16:11:32 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1viEKH-0001Ie-Bk; Tue, 20 Jan 2026 17:11:29 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 20 Jan 2026 17:11:10 +0100
Message-Id: <20260120-tlv_bind_serial-v3-0-91db0e4b07fb@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB6pb2kC/3XNTQqDMBCG4auUrJtiJv7RVe9RiiRm1AGJkthgE
 e/exFVBunwHvmc25tERena/bMxhIE+TjSGvF9YOyvbIycRmkEEhhAC+jKHRZE2ThmrkutaQq7I
 zucpYXM0OO1oP8fmKPZBfJvc5HgSRrv+tILjgpazbDgCKQqrHjLZ/L26ytN4MsgQG+EWqMwIJy
 dpKC5RYC31C9n3/Auw+jVD4AAAA
X-Change-ID: 20251112-tlv_bind_serial-b8b24a6fd4a0
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=1681; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=HHSE0m2RvfSqVcGp9xe63Tya8H5t40u/SwSAKEt7+QY=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsjMX6mtJC8at1zCO545XT7YInZRFV+14vb+DdVHtyx6t
 q9to/q2jlIWBjEuBlkxRZZYNTkFIWP/62aVdrEwc1iZQIYwcHEKwEQizRkZHn//zd0689Odky+K
 rTaV7jRYLlPHNJHbOUBTcadSfqppOCPD9Rff1U/1ODixpx+5ut1p57tdZ8+6l/GseCvyYfqb2y8
 PcgEA
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_161130_174782_3F533A76 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 0/2] Bind TLV to SoC-UID register value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series includes a mechanism for binding a TLV to a specific unit
via the units SoC unique ID. This is to prevent interchange of the TLV
in question between unit, which may be needed in certain secure boot
scenarios.

As this is the first TLV field using a raw binary field, include support
for such a field type in the bareboxtlv-generator.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Changes in v3:
- Switch to using barebox_get_soc_uid_bin instead of comparing string
  representations, update comments accordingly
- Include bareboxtlv-generator support for binary fields
- Print expected/found SoC uids as eror on mismatch
- Don't mix dashes and underscores in property name
- Link to v2: https://lore.barebox.org/barebox/20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de

Changes in v2:
- Switch to using barebox_get_soc_uid and rename and reword everything
  accordingly (serial number -> soc uid)
- Init tlv_register_default as late_initcall instead of device_initcall
- Link to v1: https://lore.barebox.org/barebox/20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de

---
Jonas Rebmann (2):
      tlv: Add tlv_bind_soc_uid mapping
      bareboxtlv-generator: add raw "bytes"-format

 common/tlv/barebox.c                               | 25 +++++++++++++++++++++-
 include/tlv/tlv.h                                  |  1 +
 .../bareboxtlv-generator/bareboxtlv-generator.py   | 14 ++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20251112-tlv_bind_serial-b8b24a6fd4a0

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



