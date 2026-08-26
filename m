Delivery-date: Wed, 26 Aug 2026 15:35:59 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzDnK-007RuV-2y
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 15:35:59 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 14B96202052
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 15:35:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=pM0ggIA2;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mhoBCXwtO5mzQ5AMxmIT+OATs0CrKwyhOR1p0hAqGGs=; b=pM0ggIA2iJZg78cK/38981iFET
	FGQtv6VRjahx5S8r/HRJ9st2dcItLjxxecSPQFJxEpcu2ATRTrpzsxb2SvCF71gwRcx+8rr2y7j1R
	dm2jjhMRyvdne02IxDTMA8b6yy8swjCbiNN4zo48Vayz5rK9g4X0qpCvBaMabUJF76Lt0WJ4sU3IB
	yfM4+z76sbZYwTwk8B6nbU1D7Y2y09wP+8D1LnquGbpKNQfwakbMzlyXG8fGicyMKoZMSC+c7GSLG
	nBQ9W+wRB/zF9sBi91uz8WZI1v3DTTPPJ+hlBLaRdn8t0SZvNEWuYmBKxcc/QwBcpqlsqKJwNCb3T
	M2zCmcNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYv-00000002PIi-0voz;
	Wed, 26 Aug 2026 12:17:01 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzCYe-00000002PDU-1YXE
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 12:16:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 833BF2021CF;
	Wed, 26 Aug 2026 14:16:42 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-003RAX-1S;
	Wed, 26 Aug 2026 14:16:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wzCYc-0000000CJpx-1RWY;
	Wed, 26 Aug 2026 14:16:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: fpg@pengutronix.de,
	chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH RFT 4/4] Documentation: efi: describe device tree handling
Date: Wed, 26 Aug 2026 14:15:32 +0200
Message-ID: <20260826121640.2936023-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_051644_675815_7899591A 
X-CRM114-Status: GOOD (  18.80  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Describe how the device tree built into the EFI payload is
    populated with external dts fragments, how that interacts with the state.dtb
    file on the EFI system partition and where the operating system [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Spamd-Result: default: False [-56.21 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FREEMAIL_CC(0.00)[pengutronix.de,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-0.994];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 7669pg9nfxorbhmwexeu8o4bjepkthqg
X-Rspamd-Queue-Id: 14B96202052

Describe how the device tree built into the EFI payload is populated with
external dts fragments, how that interacts with the state.dtb file on the
EFI system partition and where the operating system finds the device tree
barebox exports.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst | 75 ++++++++++++++++++++++++++++++++++--
 Documentation/user/state.rst |  5 +++
 2 files changed, 76 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 869e5e88172f..da50fc8ff6cd 100644
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
 
 With this sample script you can create bootable image and transfer it to the
 flash driver:
@@ -216,6 +214,75 @@ has a device parameter ``devpath`` which contains its device path:
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
+This is not done when barebox acts as EFI loader for the application.
+
 EFI variables
 -------------
 
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index d97ba4e9f157..aa0b255c781b 100644
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



