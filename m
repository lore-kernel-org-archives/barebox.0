Delivery-date: Thu, 15 Oct 2026 11:27:07 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHHjv-00DrSA-1g
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:27:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D9C6C201B55
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:27:06 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XOkWP6oa;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=gIeaKBgA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Y/OleuvS";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792056427; a=rsa-sha256;
	cv=pass;
	b=IL63aZOHUe4qdFg7RjBew9XjztZedZvl+d5g6ZU6dX4xj6wavAfC3EKPFUnLB4pjQTrlU/
	9PaPI4Kt0N2W2vGN/w1kDjzdDSJTIDyKjKDXDHnn4CRtinlG8EFZojaIqKsCnaDp2UN4wD
	CAUXkv8szBL6uIerRZWnWcqD3L2e3NDD7zviwnhnKJkBTxIsJWHqkvUITdw82Xgs6ZggZy
	GJfJgGMudtJrWwXfqKmg6Dt/VDH0KSyxPibp77MGfFdgcUMUG31awnWF+gVS09ZKJDQmJO
	rHFlxy8CyCZPIcSUCOSHEebynE3VhHmSLVKxKw1xHeUSkTfhqtqcgfTfqkkAdA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=XOkWP6oa;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=gIeaKBgA;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Y/OleuvS";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056427;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=18Pav3hd0XhXJl9rAI4Q2lwDRBZ56kKR5JfOJM+eoHY=;
	b=dl7ST5DLrzpy+SjFxSJnohTA6anEZ0cURARxUBYaFZUABgpH9QN1fEpZw6GyNWyN5qyHEC
	6HAN5n3eeeiaLSmqxZp2ZKx6YUUL9E471CS5IMMLlrH/3NCDhZhqG8QJYrECLLIl7q9vG8
	eimLPd7OYFdck0S2ctFKtAUfHa97n+XVr4l9S37ih2CGYDlH1KHH05llpJVODGkE0K+Gkw
	NBlGRQaQmQr2sd23b7vplcLKiMFFlsxnLkAfG9bybjwMWIhiRDyKvpMQJ22BtbaMTPnR6F
	FeEepW9R4LC0UI1Fi/xw7WOtoFiwxZtKHYl/0m00yjEL4DN/QM7yOxAe4+0Zhg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=18Pav3hd0XhXJl9rAI4Q2lwDRBZ56kKR5JfOJM+eoHY=; b=XOkWP6oaQQl3NODHWHfv9kKgs4
	EPd7A3n2CQWPwcRO4oWMH0mSD2Iu94Y50lKUFrY/HhHki973ihs/SeZ4kICuzwzKGB1XV99HgPhL9
	VPwDx5fh8rnDvvfhdJWRfxR62HvW9kNBqWsrYvMx+NWsOuvXodIH9tzYaqTzOhLgmOOsGcDrxzueO
	Bem9JrMjQM/bIAIHxSNWIYGVNcSrKTsfHvhWrb5XmC86ttaYz1z5NdO6vtQv8eWc15zDqDomh82lM
	l/5glaBAtpZE/UY/3vUvXKugndnh7ixxtZsR7mD8PvV7nsz4FVwMSQxs9B2z7qfsE5iohzoEejn5E
	Ja0/+Wdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHit-0000000HGCf-3210;
	Thu, 15 Oct 2026 09:26:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHHir-0000000HGBn-34ti
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 09:26:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=18Pav3hd0XhXJl9rAI4Q2lwDRBZ56kKR5JfOJM+eoHY=; b=gIeaKBgAlOcOWhEB6/hrU4E9Oa
	vaoHTuDgMpmXGGoKAGbSXWt06eSWi/xGsGxcfT+C15T99SAEcR/BuHS0jBm+rRCcfGQ5zpdpbRFs0
	eDBNB+WL2umVU8wD9J8uzLWaMKhFV/nNGMqkfhm63PmIB5F+gle/g5puWQyhyhfbh8oZ9she+oSHT
	VvBvf5TewPks1mELuhW8AaMxYwv1OVd7tmhP5hFPx/XNtamgwc/RO8kuzEZDQWxZdZ4LZaJGRCYxj
	COt0ik4C9jkVWcTu+wubYsmHKc5YTqxVOSSnaHk7AznhmLorJNPc2Br+aaWbZoq6EqaQXx657Hwep
	h4LkJhIQ==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHHio-00000000Aau-3j2q
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:26:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D62672027CF;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=18Pav3hd0XhXJl9rAI4Q2lwDRBZ56kKR5JfOJM+eoHY=;
	b=Y/OleuvSj3fc7m5G9fw+d6gZ8Twwihl5PJg4yTlffJtO4CRpRfxlyBzW330IF3TgWVuQ8a
	eLQ7ScjfGaIuYdRS00z4o5c5jmCFQwtQ5pI5hwB+l7UDpvd9Hdi+WTRfjAwM3hLexjbNwI
	lDHfh9wtNig9VdAIFMVYf6um2Xkb63X3nVd40oi+bM4fCIJZOBTjZ7oV6boAMI6PEhV5If
	ZjulettXc9YYexZ+0Dk2Ys0/Hjnxb2X4Ib9sYn7mRop+Fnf+H6CU8Z/L33RJh1lkPeOnsb
	1duTlUt7mb3pt0pn36FAsBtxveionl3F2J/F+L16ZfiI4uwtFwaVScUIh1j4Dw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792056357; a=rsa-sha256;
	cv=none;
	b=Ggr2fpCp+ZD9VWdIziu+HZtLG5JgNts7gw6Kw/dlw3rh7b1SohOIf0J1ZOvK6+vQCsnB2v
	RG80DcoaP29gYj85B67j4/tecnPzJGgC98us450tGGooch+tm7FWl8+M6jRGCrGcJQjwjX
	qVbzOjSbfIiLEYp0rG6XZmZ4wWX5O3c1hk1x8jvdv6/E5YwXwH57EG6wxQbJ8rrWOSvAey
	kULt0bMQ1j/4ycp039s4N93IM/m9nKdpPc6FuY8MUEEZDsEG73WjJw8ExEfqnMCEKKuSbm
	TvYD7uLXncSIJaO+fIBxKnM+yY0cNhDZvJA1hgeo5Hz5h7R6ZaMtd0w856J2+g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792056357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=18Pav3hd0XhXJl9rAI4Q2lwDRBZ56kKR5JfOJM+eoHY=;
	b=efcUrq4RVSVeGIsyawgYcnIoNq0fF2RzOdfBUSqcqvsK0d70ipBfHmXbyGYQPG5U2ca89L
	qa7I8xgQW7O2bf5F0aFGtNgW66HTCfV10/FEjdPm5OSHYW3mBJgL8twf15IlUt+wMf+x62
	QcNgP0f/oRHq1jYgNM+XTIYefA07mR/ed1uJRnQf7teS+/hGKjDjJUBa9Erwm2AbM/Oe+4
	NVZqbXWbwkvkQDS5GKa8p2V2RrVZJ25V+qrz/70utTebVGUV8AAD4kzuJ0HR7yoF1sERJz
	u6gfvtOe2QpoaKo4PvGwNOM5zqgXZ1IvJ9sMX9j75NttmsNxhhmOSJozM2Yl1A==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BA4A9740455;
	Thu, 15 Oct 2026 11:25:57 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH v2 4/4] Documentation: efi: describe device tree handling
Date: Thu, 15 Oct 2026 11:23:30 +0200
Message-ID: <20261015092554.210438-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261015092554.210438-1-a.fatoum@pengutronix.de>
References: <20261015092554.210438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_102559_093070_17CFE518 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Describe how the device tree built into the EFI payload is
    populated with external dts fragments, how that interacts with the state.dtb
    file on the EFI system partition and where the operating system [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D9C6C201B55
X-Stat-Signature: zp16gbaaq6c61gzq3w7i41togs5q1o5f

Describe how the device tree built into the EFI payload is populated with
external dts fragments, how that interacts with the state.dtb file on the
EFI system partition and where the operating system finds the device tree
barebox exports.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst | 76 ++++++++++++++++++++++++++++++++++--
 Documentation/user/state.rst |  5 +++
 2 files changed, 77 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 2dde52bc6665..874ea22d625a 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -44,10 +44,8 @@ architectures. Switching to USB boot in the BIOS should then be enough to
 start barebox via USB. Some BIOSes allow to specify a path to a binary to
 be executed, others have a "start UEFI shell" entry which executes
 EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary as well.
-To use the :ref:`state_framework`, the describing devicetree file ``state.dtb``
-has to be put into the ``EFI/barebox/`` directory.
-Supported backends for EFI are raw partitions that can be discovered via a
-partition UUID.
+See `Device tree`_ below on how to describe barebox-specific configuration,
+like a :ref:`state_framework` partition, to barebox.
 
 With this sample script you can create a bootable image and transfer it to the
 flash drive:
@@ -278,6 +276,76 @@ has a device parameter ``devpath`` which contains its device path:
   barebox:/ echo ${handle-00000000d0012198.devpath}
   pci_root(0)/Pci(0x1d,0x0)/Usb(0x1,0x0)/Usb(0x2,0x0)
 
+Device tree
+-----------
+
+EFI systems describe their hardware to barebox via EFI protocols and ACPI, so
+barebox needs no device tree to drive them. Some barebox functionality is
+configured by device tree nevertheless, most prominently the
+:ref:`state_framework`. For that reason, the empty fallback device tree from
+``common/fallback.dts`` is compiled into the EFI payload, which can be
+populated at build time with the ``CONFIG_EXTERNAL_DTS_FRAGMENTS`` option,
+e.g.::
+
+  CONFIG_EXTERNAL_DTS_FRAGMENTS="/path/to/barebox-state.dtsi"
+
+The fragments listed there are appended to every device tree built, so a
+fragment meant for the EFI payload only should be guarded with the
+``fallback_dts`` macro, which is defined while the fallback device tree
+is compiled:
+
+.. code-block:: text
+
+  #ifdef fallback_dts
+  / {
+          aliases {
+                  state = &state;
+          };
+
+          state: state {
+                  compatible = "barebox,state";
+                  magic = <0x27031977>;
+                  backend-type = "raw";
+                  backend = <&backend_state>;
+                  backend-stridesize = <0x40>;
+
+                  #address-cells = <1>;
+                  #size-cells = <1>;
+
+                  vars {
+                          /* ... */
+                  };
+          };
+
+          partitions {
+                  compatible = "fixed-partitions";
+
+                  backend_state: state {
+                          partuuid = "9ba1c1c5-6ad7-4e8a-8d69-b1c4b0d1e1e1";
+                  };
+          };
+  };
+  #endif
+
+Supported *state* backends for EFI are raw partitions that can be discovered
+via a partition UUID as done above.
+
+Should the device tree be empty, barebox falls back to reading a devicetree
+file ``state.dtb`` out of the ``EFI/barebox/`` directory on the :term:`ESP`.
+If the built-in device tree is populated, an existing ``state.dtb`` is
+ignored with a warning.
+
+When barebox runs as EFI payload, its internal device tree is exported in
+flattened form in the ``barebox-dtb`` EFI variable under the barebox vendor
+GUID just before barebox starts an EFI image or boots a kernel, so the
+operating system can be configured by the same description. Under Linux,
+it's readable at
+``/sys/firmware/efi/efivars/barebox-dtb-5b91f69c-8b88-4a2b-9269-5f1d802b5175``,
+where the blob is prefixed by a four byte EFI variable attribute word.
+
+Unlike the `Load options`_, this is not done when barebox acts as EFI
+loader for the application.
+
 EFI variables
 -------------
 
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index 71558fe998a6..ac6849213fd5 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -35,6 +35,11 @@ the same.
 To define a *state* variable set, a devicetree based description is used. Refer to
 :ref:`barebox,state` for further details.
 
+On systems that boot the operating system without a device tree, the
+description can't be shared with it by fixing up the OS device tree. barebox
+running as EFI payload exports its device tree in an EFI variable instead, see
+:ref:`barebox_on_uefi`.
+
 There are several software components involved, which are described in this
 section.
 
-- 
2.47.3



