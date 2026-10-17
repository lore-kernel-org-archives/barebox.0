Delivery-date: Sat, 17 Oct 2026 13:52:15 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xI2xT-00EmeR-2a
	for lore@lore.pengutronix.de;
	Sat, 17 Oct 2026 13:52:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 318B720281F
	for <lore@pengutronix.de>; Sat, 17 Oct 2026 13:52:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3saR0Ui6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792237935; a=rsa-sha256;
	cv=none;
	b=fc9WAPXE/j2Log1dhaghx+X04GtnSo6Lp4opvk1ZZNAhMTgASYKxjnHLcgi8BdKPm3cbiw
	nydVN1H4dyyEYcL+Ditas2o5GZ2KStjghIy3uU5M5DGHNBkSHZg4YKZne5kpeDu7yrpn6I
	jqAFTPFbMR29DYdTFIAJc4EAP8ePRMq77lgw5bmLFlvtFj+avLFB6/jE6FEgg2Tw3QXiXu
	xd5N//TChUO4NOz0odBUc+k+bucCBq8Sr29O+JwrOYrylslp4RON+XocT1ZSI3bgYw3mLN
	vO6spKdatCQq7yCuOl/Nx7C82QXt3IqwDhds8GtjhuYHhWaJ0uhiEMHxA/x0iQ==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=3saR0Ui6;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792237935;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=U879laKG0GEN/2/ogNT3t4tI0cOwGeD1y8b3iwoqjwg=;
	b=VfJ0Sq6Q2P/i4++lb9R5VmKM/IhklrnrO9opw/PezmOL2UvCrEscMteImF/ev1v3pcOUAT
	rVB18ZN1qt8sKyVx0l/srG+ScwlEZY+7qCk7H9sjdLcFkmDLx9SdcOESm3XDZ9cYnUmS49
	wM87MjrI2fE+nIhg4A1GCFsFzBN/PboCOREDqzEncCqjeTAqtJUoiZeW5ZLs3H7A9WfZ4U
	Wzwv/Z2J6A6NMLpCELWV62CFILHHCOqm0FWnHgu0TV3QAkZUFJI7rnOR73ntf44FOevrgJ
	6uIUjWg9pM3Qlb7aaKljbkXEKCx4j0/pBPskOW1ZcLTQbyoGIZH9lP8hbOf6iw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U879laKG0GEN/2/ogNT3t4tI0cOwGeD1y8b3iwoqjwg=; b=3saR0Ui6Ur/K8vkjB7xXmUrZg+
	fv697fgjVa0YJVbL0TnUtRD2iC9fwonf0ffyWWlOaL9PHkQZZwYZNn9s1jMQzF5bm8DX42k/rjFZg
	qEqIFAPFQXgqhsRmlRVTlTY/071IpeelWIU9Fz2QW0+7eQFpitf59vR49PCa1UHPI8Zu1ycmqYhUi
	+UW5MI5JvgOnykm5UNmDWzP5aeDWVURzkuff00Yy4B+bhU7tv1hSVV8TlDfPykMEOVGN1ZCYV7QYq
	rz/z0o+G4TNf1RF6DO3LzhI3kWcfKHGBkzy5zJK/8XIQDyKj9CmY75wavs1fA8c3ZMa7wQf9H0N1I
	LpB1GXKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI2vn-00000004jfd-0Agz;
	Sat, 17 Oct 2026 11:50:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI2vi-00000004jds-0fSM
	for barebox@lists.infradead.org;
	Sat, 17 Oct 2026 11:50:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xI2vd-00057Y-8r; Sat, 17 Oct 2026 13:50:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Johannes Schauer Marin Rodrigues <josch@debian.org>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 2/2] efi: runtime: accept 1:1 mappings in SetVirtualAddressMap
Date: Sat, 17 Oct 2026 13:50:15 +0200
Message-ID: <20261017115018.1202076-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261017115018.1202076-1-a.fatoum@barebox.org>
References: <20261017115018.1202076-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_045026_197691_8FB28CF6 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  We do not support SetVirtualAddressMap() and UEFI v2.8 permits
    this as long as our EFI_RT_PROPERTIES_TABLE doesn't claim EFI_RT_SUPPORTED_SET_VIRTUAL_ADDRESS_MAP,
    which we adhere to[1]. NetBSD's efiboot doesn't seem to care for lack of
   this bit and calls SetVirtualAddressMap() unconditionally[2]. This will return
    with an error, which has NetBSD call printf() _after_ ExitBootServices[ [...]
    
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 318B720281F
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[barebox.org];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: 6h6z8caxda4otbw7yd7f87ap9s1ppws6

We do not support SetVirtualAddressMap() and UEFI v2.8 permits
this as long as our EFI_RT_PROPERTIES_TABLE doesn't claim
EFI_RT_SUPPORTED_SET_VIRTUAL_ADDRESS_MAP, which we adhere to[1].

NetBSD's efiboot doesn't seem to care for lack of this bit and
calls SetVirtualAddressMap() unconditionally[2]. This will return with
an error, which has NetBSD call printf() _after_ ExitBootServices[3]
leading to a crash[4].

Fortunately, barebox is not the only firmware that doesn't implement
a full-fledged SetVirtualAddressMap().
Quoting NetBSD commit 41096fd ("efiboot: Use 1:1 PA to VA mappings for
RT services.")[5]:

| UEFI firmware on Snapdragon X Elite devices crashes when
| SetVirtualAddressMap is called with runtime mappings that are not 1:1.
| Always do this on arm64 as it won't interfere with KVA and will help us
| avoid avoid a very common class of firmware bugs.

This means we have an easy way for barebox to workaround this:
Instead of returning EFI_UNSUPPORTED unconditionally, we can handle the
trivial identity mapping case specially and report EFI_SUCCESS for it.

While NetBSD doesn't need it, also implement a 1:1 ConvertPointer for
good measure.

[1]: https://uefi.org/specs/UEFI/2.10/04_EFI_System_Table.html
[2]: https://github.com/NetBSD/src/blob/41096fd/sys/stand/efiboot/efiboot.c#L135
[3]: https://github.com/NetBSD/src/blob/41096fd/sys/stand/efiboot/efifdt.c#L813
[4]: https://gnats.netbsd.org/60890
[5]: https://github.com/NetBSD/src/commit/41096fd4f7bac2ade3f29e9e6e00951aef9e16ce

Reported-by: Johannes Schauer Marin Rodrigues <josch@debian.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 efi/runtime/services.c | 67 ++++++++++++++++++++++++++++++++++++++++--
 include/efi/memory.h   |  6 ++++
 include/efi/services.h |  2 ++
 3 files changed, 73 insertions(+), 2 deletions(-)

diff --git a/efi/runtime/services.c b/efi/runtime/services.c
index dc4960ac4763..ca60ae512a2d 100644
--- a/efi/runtime/services.c
+++ b/efi/runtime/services.c
@@ -171,17 +171,80 @@ static efi_status_t EFIAPI efirt_set_wakeup_time(char enabled,
 	return efirt_unimplemented();
 }
 
+/**
+ * efirt_set_virtual_address_map() - change from physical to virtual mapping
+ *
+ * This function implements the SetVirtualAddressMap() runtime service.
+ * The barebox runtime isn't relocated and only an identity mapping
+ * is accepted.
+ *
+ * We intentionally don't announce support via the EFI_RT_PROPERTIES_TABLE,
+ * so only operating systems that ignore the table would end up here.
+ * If they configure a 1:1 mapping like NetBSD, we tolerate it and return
+ * success.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @memory_map_size:	size of the virtual map
+ * @descriptor_size:	size of an entry in the map
+ * @descriptor_version:	version of the map entries
+ * @virtmap:		virtual address mapping information
+ * Return:		status code
+ */
 static efi_status_t EFIAPI efirt_set_virtual_address_map(size_t memory_map_size,
 							 size_t descriptor_size,
 							 uint32_t descriptor_version,
 							 struct efi_memory_desc *virtmap)
 {
-	return efirt_unimplemented();
+	static bool efirt_virtmap_set;
+
+	EFI_ENTRY(L"");
+
+	if (efirt_virtmap_set)
+		return EFI_EXIT(EFI_UNSUPPORTED);
+
+	if (descriptor_version != EFI_MEMORY_DESCRIPTOR_VERSION ||
+	    descriptor_size < sizeof(*virtmap))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	for (size_t off = 0; off < memory_map_size; off += descriptor_size) {
+		struct efi_memory_desc *md = (void *)virtmap + off;
+
+		if ((md->attrs & EFI_MEMORY_RUNTIME) &&
+		    efi_memory_desc_relocation_offset(md) != 0)
+			return EFI_EXIT(EFI_UNSUPPORTED);
+	}
+
+	efirt_virtmap_set = true;
+
+	return EFI_EXIT(EFI_SUCCESS);
 }
 
+/**
+ * efirt_convert_pointer() - convert pointer to virtual address
+ *
+ * This function implements the ConvertPointer() runtime service.
+ * Only identity mappings are accepted, so the pointer is left as-is.
+ *
+ * See the Unified Extensible Firmware Interface (UEFI) specification for
+ * details.
+ *
+ * @dbg:	EFI_OPTIONAL_PTR if the pointer may be NULL
+ * @address:	pointer to be converted
+ * Return:	status code
+ */
 static efi_status_t EFIAPI efirt_convert_pointer(unsigned long dbg, void **address)
 {
-	return efirt_unimplemented();
+	EFI_ENTRY(L"");
+
+	if (!address)
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	if (!*address && !(dbg & EFI_OPTIONAL_PTR))
+		return EFI_EXIT(EFI_INVALID_PARAMETER);
+
+	return EFI_EXIT(EFI_SUCCESS);
 }
 
 static efi_status_t EFIAPI
diff --git a/include/efi/memory.h b/include/efi/memory.h
index 74e714099021..336d2a730c1c 100644
--- a/include/efi/memory.h
+++ b/include/efi/memory.h
@@ -91,4 +91,10 @@ struct efi_memory_desc {
 
 #define EFI_MEMORY_DESCRIPTOR_VERSION	1
 
+static inline ptrdiff_t
+efi_memory_desc_relocation_offset(const struct efi_memory_desc *md)
+{
+	return efi_virt_to_phys(md->virt_start) - md->phys_start;
+}
+
 #endif
diff --git a/include/efi/services.h b/include/efi/services.h
index 2d7167b25205..83dc56150a4e 100644
--- a/include/efi/services.h
+++ b/include/efi/services.h
@@ -162,6 +162,8 @@ enum efi_reset_type {
 #define EFI_RUNTIME_SERVICES_SIGNATURE ((u64)0x56524553544e5552ULL)
 #define EFI_RUNTIME_SERVICES_REVISION  0x00010000
 
+#define EFI_OPTIONAL_PTR	0x00000001
+
 struct efi_capsule_header;
 
 struct efi_runtime_services {
-- 
2.47.3



