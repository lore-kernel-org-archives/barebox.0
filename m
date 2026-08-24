Delivery-date: Tue, 25 Aug 2026 01:45:33 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeM8-006sI3-24
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 01:45:33 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D0091201B02
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 01:45:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=bs0fJPac;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=dwo+di4j;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GAhKIRa5Hd1lFgXXDutCk1k3g86ymp7MHIgvx+SAgvw=; b=bs0fJPacwxP2X1uy3ASNwAXQx3
	vTuvCxk98F/JTR8kFqr+gIOGXQlOP8Ys7Tm02G68qwi5Hie9XTzHbUAH2TnFyhVV4FemJ1u5La6tb
	y7XidMErgEIosiyVWFiCzv5A9AyTNbQQMuhcw1mxqb4S9WiZgZMnMVoOOkXHarQxJiuNN2oWg/Fo0
	0Q75J7OJALfq2H2f+nx5jYOFdACmKNRGXsoK5K4d0PXRM0tYy3eTfkOUHz5PuXg4gqdxOeUnAhDqN
	N57NAyiMNpOqamVvPHAQenhAKQBnbXrVRqrJiuzN7kd8k3IUTmgRi048CWIixzLaypk+esfS8VzMV
	knXpK6bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeKb-0000000HVEB-2YQ3;
	Mon, 24 Aug 2026 23:43:57 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeKY-0000000HVDn-36b6
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 23:43:55 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-47f7027ca11so2114410f8f.3
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 16:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787615032; x=1788219832; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=GAhKIRa5Hd1lFgXXDutCk1k3g86ymp7MHIgvx+SAgvw=;
        b=dwo+di4jNOaKiRuXudbPRGbag3SjIrGFxGr7O9ZIVN8+BJcjUzYfP7hTepVm9zSkz0
         ZSQTn0NQ1Obq+zQcpzrkZoBMNzi8zYCkyDnRH4Gg2WQSZJyo1jzDNeXjhhUphH1z28ZY
         sAspIT24yXfgI25Knc5FyR78/CkhR0oG6EsbOZNHtDfcB9buz4NT/saVGgMaiiudqMie
         HBe17uqaKYI60Om8a4vWoMi0CO8sqVgqq4Rc8a+fGRCI9Z+ENvj/iSNX6HQmKDcEsmGB
         JKqpKUS2ECF1J8P/DC3zU/3bCDiSEXdrx4vnsJGHk/nL+UZpTurAd1AYsxNvNaPVp/1e
         l61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787615032; x=1788219832;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GAhKIRa5Hd1lFgXXDutCk1k3g86ymp7MHIgvx+SAgvw=;
        b=oFaiQzlOfI/XRuPIgIDwvyrEX8xmGogV+F8gdfCk1ffANjHuVHVoBQbphFdtUKl+/c
         bFF3y1a5kcnfaPdpIhf0ZsH1bcTs10Thiuwg6nK/n07KH2t6T/cFlrHR9g50vTk5EXar
         bYjXMBLUc0HCgeBbJG+4bGZrS6xG0nRJS8U2jZ5S0ArOL77XIZZUwpWX5a+Ifp8/ZF5o
         lkmBnOLKlES6XSECfsbxSRVQdx3CW0QSQHZff+WOWejGp842WuL55Sr3EqP8E3la1ib2
         E5rev2yhNCjjCtmbh8sdw2Bv2VPSx54CebJD5rqH4jggJ+/WibTfHo3zXPJPC3+1UBg8
         fECg==
X-Gm-Message-State: AFuF++k5T71R5Kprgpn6HxF5PEOA3944t73pQtZyRZ9G6GmTxo4bUacP
	Wrk2fV9NZv1fTp1++OHuvB+vTHlRsb5EFi7x6OkPal4AkfKMJyyNJnh5
X-Gm-Gg: AR+sD11ip4j5vGs1Kw2OWu4EIhkLf5ygmOWOVG6PHR9R8avyU2gdQhjW31d6cknXT9G
	zs0g1eEbhUTBRnwx4ChVTdJJWuLK27sMUnmRngiYuQs0gDGe6aBwcHyXYndJcFjNaM8A0rw1+Fu
	AhtMA6tKsow5htBNxprKKUgIWGFkDPUIwtcOOJ89q/kYEWzx2F2ctECIVKBo+wXETUasPYiqCtn
	JisoCdgXepx/2/2kZidUwE/UVwZp6flJjx5N3hdT86FDLfi62ppE8InhhadjVxXEi5gb9+URbXb
	cMKhSx11wZamgwgcBg99kYjXKpQcoDXACDzay1s9dvBcnNxvuGoLpaaH+/jH/kpeGF5GMvbXjKM
	sLx+O8CI77hZ3L5QBV4YmG/j3X+GYE23wITOn51tJfqxqLF4JTcPlMRNs6lednwkI67Hr25kAkn
	oGodBCLTbpQH9MwH6XKSQZXWMQv9cZ3xkANRJoBimBAlz6+b9fdS7GhfRT4/l7fOrVfw5zbvPcS
	E9JqfvL5IloHpgOiUGmj8yVLGVcM84cQQDYz0h5RO54YnWCleT3EBM0NiczapD9BHuI2uJaiDmp
	JXUx0Z4TkZ0PgXdm9wVh
X-Received: by 2002:a05:600c:4f87:b0:493:bd2a:93be with SMTP id 5b1f17b1804b1-499d65493e5mr20192615e9.6.1787615032158;
        Mon, 24 Aug 2026 16:43:52 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d5d7cccbsm6861075e9.3.2026.08.24.16.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 16:43:51 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 0/1] efi: payload: apply barebox fixups to the devicetree passed to Linux
Date: Tue, 25 Aug 2026 01:43:44 +0200
Message-ID: <20260824234345.84068-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_164354_821094_7F2FD7A3 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis efi_load_fdt() never ran barebox's fixup/overlay
    pipeline on the devicetree it handed to the kernel. When bootm.oftree was
    set, the raw file bytes were extracted straight into EFI pages and installed
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:432 listed in]
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
X-Stat-Signature: beomzjy6ua8t89ofqtbkw3anw8ihwxoa
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::432:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D0091201B02

From: Chali Anis <chalianis1@gmail.com>

efi_load_fdt() never ran barebox's fixup/overlay pipeline on the
devicetree it handed to the kernel. When bootm.oftree was set, the raw
file bytes were extracted straight into EFI pages and installed as-is;
of_unflatten_dtb(), of_fix_tree() and of_flatten_dtb() were never
called. When bootm.oftree was unset, the function just returned early,
so there was no path at all for adopting (and fixing up) a devicetree
already exposed by firmware. Either way, none of barebox's usual
fixups - memory nodes, bootargs, state, overlays, and everything else
hung off of_register_fixup() - ever reached the tree Linux booted
with.

This single patch fixes both paths: efi_load_fdt() now falls back to
the FDT firmware exposes via its EFI configuration table when no
bootm.oftree is set, and either way runs the resulting tree through
the standard bootm_set_pending_oftree_overlays()/of_fix_tree()
sequence before installing it, matching what every other barebox boot
path already guarantees. This is what makes fixups registered via
of_register_fixup() actually reach the devicetree the EFI payload
hands off to Linux.

On real hardware (as opposed to QEMU, where none of this is normally
present or needed) this matters concretely for two node types: the
/memory node, since of_memory_fixup() (common/memory.c) is one of the
fixups of_fix_tree() runs, and without this patch it never got a
chance to correct the tree Linux actually booted with; and the
/firmware and /reserved-memory nodes, since a devicetree supplied
out-of-band (e.g. embedded in a FIT image) was flattened at build
time and so can never carry the secure-world carve-outs and secure
monitor call conduit firmware such as TF-A/OP-TEE only add to its own
copy of the tree at runtime. This patch adds
efi_of_fixup_firmware_nodes() to import exactly those two nodes from
firmware's own devicetree onto the one Linux boots with, registered
as another of_register_fixup() callback so it runs as part of the
same pipeline.

Changes since v1: none, resent as v2.

Chali Anis (1):
  efi: payload: apply barebox fixups to the devicetree passed to Linux

 efi/payload/bootm.c   | 60 ++++++++++++++++++++++++++++++-------
 efi/payload/fdt.c     | 34 ++++++++++++++-------
 efi/payload/init.c    | 69 +++++++++++++++++++++++++++++++++++++++++++
 include/efi/payload.h | 10 +++++++
 4 files changed, 152 insertions(+), 21 deletions(-)



