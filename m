Delivery-date: Tue, 25 Aug 2026 05:06:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyhUm-006vNn-1g
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 05:06:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9BFA9201AD4
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 05:06:40 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=YVkL0pnw;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=DkSL84hq;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=++CdVInyThaRHqQurTIY4DRxZqmBKep4vOAzhCuUbZw=; b=YVkL0pnwIPgvgJPpfshrZ3w4bN
	6vgGDMlYmO4R9/lQGJE55etth0Yk3KaEaY79q1AFdikAhibyQFzgRzWNy2CaDx4wvvjoCfzcdYuGP
	jY7ktfu6JVYqi3YWnCfNrYRpNqqxUNOMP8X2TlxYEr5gH/AVgp/qRlYD7fl2MqnVJiv0tFBLyw5qY
	xVSaSiriToayOp83FebjrujKMmc/AeL+ihWevefWD25fOyvPe+ONV9+DUG0FHXj2I6+2Y58HyP5PA
	031bDBlcgHIQvtiMs7A0Th1lvJ94ij9Z2MFrntKwfeNGfYd2R0z/FzMpVKxCEN50qUnEO4nKIGLlv
	zpCoE74A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUL-0000000052l-3b7d;
	Tue, 25 Aug 2026 03:06:13 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUJ-0000000050y-1Ppx
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 03:06:12 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-47f96c5b722so1825082f8f.0
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 20:06:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787627170; x=1788231970; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=++CdVInyThaRHqQurTIY4DRxZqmBKep4vOAzhCuUbZw=;
        b=DkSL84hqqOgYU3d0mUHqmdhl5BRrYGYhz7nrA/qEJu+6hQlTFnojnjRnHnkRZG3oYe
         5Hjw366yae7JNSn7oDO44W1PqYwjlyIL5oV4Zg+cUlLnBJjErYCNpY0f16DebvilkW4y
         DXTIcKFYfS7uUJR2t17P/+RyVNFo2bgR8WdouaeRH281qmCRTdsFp4hqdwar9LfZb3aY
         xUU/zxw6W81F20NsHEItJSJyWuktExMSCDxrw3OS3JzkolUX7lECC7DxYpNv7tk2+CDx
         jfukZcxgtIRvFi+5dJHOLi9+GcD+DiI2Fxe1d8L7dufqk2okVXAgQyIKzEfJEPKgIEiE
         K4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787627170; x=1788231970;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=++CdVInyThaRHqQurTIY4DRxZqmBKep4vOAzhCuUbZw=;
        b=mOQvmZ65NTInbMXJvLNODyTbgCt4NsGhSjxGMVyArZ8BNOdZ66/qahC6b80SQkI/XM
         AxyCmnhpmdWwsvqep5U3p7kfrttvy2pBFE+B56q0UhZ8go4wZxEyFw5Roj4hdYJvb5Df
         CHMsraaVXL0MiOSvkne1FOUMz94viezbdhGG0vSIut+Sl60gaL9iQ/ly56YzkHRj8rhQ
         HoeeNbTakqLmKDUvIyyoJC6M1uUnDpCdW0UblOeRv0/MF8vB3goMjqZqzzMlJ7/WTQxE
         NIPK6SppAV+hRNvJ5U1e7pefVa095mwRhp6fLlNJ4KwKdMHgZYEYbR/l2XJUco3W3QHb
         fF+Q==
X-Gm-Message-State: AFuF++m3p9mKyKwXt58kl/69AuKLuCGEZ5n5QPfXtYCuzoVF7aE+ZpOG
	FR7nWJnxn8RW8+KLHZ2SzPPfNsjP3ZbiS29/+FWdjDOZU2CyWvXzFqm1
X-Gm-Gg: AR+sD12OvrqVld7cS9HKN9wdiMlHi5MlpWU/TG4xG170KxygNN9nNOOLEVtWBQ3HX2W
	Dhkfj3OdnH5cunEto91LZe6TljkIoqFVrbNrpPGHXvlsvBs2IAlmyQLK12stdUwQPYArIkoxAKz
	oIkAlCWrBe8pOVOY8eC1tgvoYk0SrLHnh+Karrdy/tLf0cHjj+A32+9pcLiH3JZOEyDApuUFaBr
	VPscvI5AOfsQwqh4b1VPYRFeZuWl+GfJ10UNi7u0XKpA3BM9IFcCS/SksStITaY1DHNeADkjeHD
	UwPD3MrZaFCkzmdlaSh7LXQk+E7w1p1Pec5eQs+2+sjTGNqgME9/lFJiB3pQyOWw2I6b1RKuXby
	h0WdluczM0BdCYkPSnVMZfrlne7FGerAQy3v8bO2wbmeKdO8tQqHVJnHe9IrilqtbJrYcNwJsTm
	x9JoTz5wxMNj6dx2chSTFSbfXISImKuFWaB0rXi0GUO0iNvRNX2s5wkr6cWMmfeTu1DgCCr/CUB
	+vVjoAm3aPbiA6zg6j2O3WmMntAEKNtdPKgb5eEbCGZQabDn4NduH7QW6wPaNaQru1h8hD1aUJR
	dZgiZFs0ew==
X-Received: by 2002:a05:6000:41e5:b0:47f:7b75:9dfe with SMTP id ffacd0b85a97d-482c0b5bf92mr40212357f8f.8.1787627169484;
        Mon, 24 Aug 2026 20:06:09 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9c146f1sm9944021f8f.33.2026.08.24.20.06.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:06:07 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v3 4/4] efi: payload: make CONFIG_STATE_OVERLAY (and BareboxState export) work on x86
Date: Tue, 25 Aug 2026 05:05:48 +0200
Message-ID: <20260825030548.473672-5-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825030548.473672-1-chalianis1@gmail.com>
References: <20260825030548.473672-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_200611_472722_66B8062A 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis barebox_register_of() - the only thing that
    ever registers a live devicetree root pre-boot on x86 EFI - lived in boarddata.c,
    which was compiled solely for CONFIG_EFI_STUB (the chain-loaded/ARM handof
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:42b listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: sapiouepex3yicdjqwrcan1nntkuoars
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::42b:received];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 9BFA9201AD4

From: Chali Anis <chalianis1@gmail.com>

barebox_register_of() - the only thing that ever registers a live
devicetree root pre-boot on x86 EFI - lived in boarddata.c, which was
compiled solely for CONFIG_EFI_STUB (the chain-loaded/ARM handoff-data
entry point). x86 uses CONFIG_EFI_PAYLOAD (entry-single.c's standalone
efi_main()), so no code ever called it there: of_get_root_node() stayed
NULL for the entire pre-boot sequence. That's what state_overlay_apply()
(CONFIG_STATE_OVERLAY's postcore_initcall) and state_to_efivars_export()
(the BareboxState UEFI variable export) both rely on, so neither ever
had anything to work with on x86. Compile boarddata.o for
CONFIG_EFI_PAYLOAD too - efi_register_of() only needs BS, which
entry-single.c's efi_main() already sets before any initcall runs, and
handle_efi_boarddata() already no-ops cleanly when there is no PBL
handoff data, the normal case for this entry point.

On x86, actually binding a struct state to the node CONFIG_STATE_OVERLAY
adds still needs a fresh of_probe() pass: barebox_register_of() already
ran one, before the overlay added anything, and the next one needs to
happen later still than state_overlay_apply()'s own postcore_initcall,
too - PCI/SATA enumeration (and thus the disk cdevs a partuuid-based
state backend resolves against) only completes well after that point.
Add efi_devices_probe() at device_efi_initcall to cover it.

Finally, now that a state node reachable via CONFIG_STATE_OVERLAY is
something x86 can actually end up with pre-boot, add efi_late_init()'s
"skip loading the standalone state.dtb whenever a 'state' alias is
already present" check - it's only meaningful once that can happen.

Tested on QEMU as the EFI payload with a partuuid-referenced backend.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 efi/payload/Makefile |  1 +
 efi/payload/init.c   | 18 +++++++++++++++++-
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/efi/payload/Makefile b/efi/payload/Makefile
index 6306540ab595..f8b19428a99c 100644
--- a/efi/payload/Makefile
+++ b/efi/payload/Makefile
@@ -11,3 +11,4 @@ obj-pbl-$(CONFIG_EFI_PAYLOAD) += early-mem.o
 obj-$(CONFIG_EFI_PAYLOAD) += entry-single.o
 pbl-$(CONFIG_EFI_STUB) += entry-multi.o
 obj-$(CONFIG_EFI_STUB) += boarddata.o
+obj-$(CONFIG_EFI_PAYLOAD) += boarddata.o
diff --git a/efi/payload/init.c b/efi/payload/init.c
index cdb73afffa2c..e644ec60bb87 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -355,7 +355,7 @@ static int efi_late_init(void)
 	void *fdt;
 	int ret;
 
-	if (!IS_ENABLED(CONFIG_STATE))
+	if (!IS_ENABLED(CONFIG_STATE) || of_find_node_by_alias(NULL, "state"))
 		return 0;
 
 	if (!get_mounted_path("/boot")) {
@@ -453,6 +453,22 @@ static int state_to_efivars_export(void)
 	return ret;
 }
 late_efi_initcall(state_to_efivars_export);
+
+/*
+ * On x86, PCI/SATA enumeration (and thus the disk cdevs a partuuid-based
+ * state backend resolves against) only completes well after the one
+ * of_probe() pass barebox_register_of() already did, before the state
+ * overlay even added its node. Re-probe once devices have actually shown
+ * up, so such a backend can still bind.
+ */
+static int __maybe_unused efi_devices_probe(void)
+{
+	return of_probe();
+}
+#if IS_ENABLED(CONFIG_X86)
+device_efi_initcall(efi_devices_probe);
+#endif
+
 static int do_efiexit(int argc, char *argv[])
 {
 	if (!BS)


