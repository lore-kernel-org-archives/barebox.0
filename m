Delivery-date: Thu, 30 Jan 2025 13:08:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTLu-006Kc6-0S
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 13:08:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdTLt-0002dj-NC
	for lore@pengutronix.de; Thu, 30 Jan 2025 13:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HhkenplpfHWYyKjDv3eiKfWgKzbgQNDlF13u4Ruw160=; b=AVg1dAB6s6oLOnyYcvXulvn8SU
	4+rDxrbzyJi0BCi6R6guAOUnzTZc9ywcbEkWKLMyHA6cOdnLwvxf40+cjG5NKAaj7G7efzLBr//NS
	L9Tmzt599br4WZyH7/6u0jyb9cRew/DFuXSGK7H8ASKAGc67BKSVfjsMNw/Ta1xlhsIirIHGJUUbI
	qy/zu35cdZXwiWSQ4oMfltCw2g6tK0MNURHVn4qXgwRn5oVQUO1dcnLJQU8Z3C2KCiOeOrWubgMYX
	rs0w3M8MRyPhE/jpmGITrPU89uT90c370gO6J9v0v52+VLHfF/IlkCqVaN6/6gwmCA+byhpY4erov
	EZe899KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTLJ-00000008kbZ-0mUb;
	Thu, 30 Jan 2025 12:08:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdTLF-00000008kah-3qW0
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 12:08:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-0002VD-Hf; Thu, 30 Jan 2025 13:08:15 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-002csc-13;
	Thu, 30 Jan 2025 13:08:15 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1tdTLD-004Q2O-0r;
	Thu, 30 Jan 2025 13:08:15 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 30 Jan 2025 13:08:14 +0100
Message-Id: <20250130120814.1053382-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250130120814.1053382-1-o.rempel@pengutronix.de>
References: <20250130120814.1053382-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_040818_105570_DD56A555 
X-CRM114-Status: GOOD (  23.11  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 2/2] Documentation: user: Add OTP support and parameter descriptions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Provide an overview of OTP support in Barebox.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/otp.rst         | 199 +++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst |   1 +
 2 files changed, 200 insertions(+)
 create mode 100644 Documentation/user/otp.rst

diff --git a/Documentation/user/otp.rst b/Documentation/user/otp.rst
new file mode 100644
index 000000000000..24a1f81fa449
--- /dev/null
+++ b/Documentation/user/otp.rst
@@ -0,0 +1,199 @@
+OTP (One-Time Programmable) Support
+====================================
+
+Overview
+========
+
+One-Time Programmable (OTP) memory is a type of non-volatile storage that
+allows data to be written only once. After programming, the data cannot be
+changed, or in some cases, only certain bits can transition from `0` to `1`.
+OTP is commonly used for:
+
+- Storing unique device identifiers (serial numbers, MAC addresses, etc.).
+- Configuring security settings (keys, fuses, hardware feature locks).
+- Setting permanent device configurations.
+
+In Barebox, most OTP drivers are implemented on top of the `nvmem` framework.
+Each specific driver may introduce device-specific parameters, but developers
+are encouraged to follow a common pattern when implementing OTP access.
+
+Supported Parameters
+====================
+
+Several parameters are used in different OTP drivers to provide consistent
+access to the hardware. These include:
+
+permanent_write_enable
+----------------------
+Controls whether OTP programming is done directly or via shadow memory.
+
+- This is a global setting per OTP device.
+- permanent_write_enable=1 -> All writes go directly to OTP fuses
+  (permanent)
+- permanent_write_enable=0 -> All writes go to shadow memory (volatile)
+  if supported.
+- Toggling `permanent_write_enable` does not automatically commit shadow
+  memory.
+- If shadow memory is not supported, writes always go directly to OTP.
+
+Understanding Shadow Memory
+^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+- Shadow memory acts as a volatile cache that holds OTP values temporarily.
+- Shadow values are lost on power cycle unless explicitly committed.
+- On some SoCs, shadow memory can be used for testing. The system can
+  reboot (without power cycling) and use shadow values temporarily before
+  committing them.
+
+Writing to OTP with and without Shadow Memory
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+Example 1: Immediate Permanent Write (Bypassing Shadow Memory)
+::
+
+    # Enable direct OTP write mode (all writes will be permanent)
+    bsec0.permanent_write_enable=1
+
+    # Write directly to an OTP register (bypasses shadow)
+    mw -l -d /dev/stm32-bsec 0x00000170+4 0x12345678
+
+    # Disable OTP write mode (future writes go to shadow, if available)
+    bsec0.permanent_write_enable=0
+
+Example 2: Using Shadow Memory Without Committing
+::
+
+    # Ensure shadow writes are enabled
+    bsec0.permanent_write_enable=0
+
+    # Write to shadow memory (not permanent yet)
+    mw -l -d /dev/imx-ocotp 0x20+4 0xAABBCCDD
+
+    # On power cycle, this data will be lost
+    # After reboot, OTP value remains unchanged
+
+Example 3: Using Shadow Memory for Testing Before Committing
+::
+
+    # Ensure shadow writes are enabled
+    ocotp0.permanent_write_enable=0
+
+    # Write to the shadow memory (not yet permanent)
+    mw -l -d /dev/imx-ocotp 0x20+4 0xAABBCCDD
+
+    # Perform a warm reboot (shadow memory is still active)
+    reset -w
+
+    # If configuration works as expected, commit shadow to OTP
+    ocotp0.permanent_write_enable=1
+    mw -l -d /dev/imx-ocotp 0x20+4 0xAABBCCDD
+    ocotp0.permanent_write_enable=0
+
+    # Now the value is permanently written to OTP fuses
+
+**Caution**
+^^^^^^^^^^^
+
+- Setting `permanent_write_enable=1` makes all writes permanent
+  immediately.
+- Setting `permanent_write_enable=0` does not commit shadow memory
+  automatically.
+- Shadow memory is lost on power cycle unless explicitly committed.
+
+writelock
+---------
+
+Permanently locks an OTP word after it is written.
+
+- writelock=1 -> Any OTP word written while this is enabled will be
+  permanently locked after writing.
+- writelock=0 -> Writes remain modifiable unless explicitly locked later.
+- Only the OTP words written while `writelock=1` is active will be locked.
+- Not all hardware or drivers support this functionality, or they may
+  implement locking differently.
+
+How OTP Word Locking Works
+^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+- Some OTP technologies allow bitwise OR-ing (changing `0` bits to `1` but
+  not back to `0`).
+- Without `writelock=1`, an attacker could modify certain bits after
+  provisioning (e.g., enabling additional security features but keeping a
+  backdoor open).
+- Setting `writelock=1` ensures that only the OTP words written while it is
+  active are locked, preventing further modification.
+
+Usage Example: Permanently Locking an OTP Word
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+::
+
+    # Enable OTP write mode (writes will be permanent)
+    bsec0.permanent_write_enable=1
+    bsec0.writelock=1
+
+    # Write data to OTP (this specific word will be permanently locked)
+    mw -l -d /dev/stm32-bsec 0x00000170+4 0x12345678
+
+    # Disable write mode and writelock (future writes will not be locked)
+    bsec0.permanent_write_enable=0
+    bsec0.writelock=0
+
+**Caution**
+^^^^^^^^^^^
+
+- Only the OTP words written while `writelock=1` is active will be locked.
+- Other OTP words remain modifiable unless explicitly written and locked.
+- Not all hardware or drivers support this functionality, or they may
+  implement locking differently.
+- If shadow memory is used (`permanent_write_enable=0`), writelock does not
+  apply.
+- Ensure all OTP values are correct before enabling `writelock=1`.
+
+sense_enable
+------------
+
+Controls whether OTP values are read from shadow memory or directly from the
+fuses.
+
+- sense_enable=1 -> Reads are performed directly from the OTP fuses.
+- sense_enable=0 -> Reads are performed from shadow memory (if supported).
+- If shadow memory is supported, `sense_enable=0` may return outdated values
+  if the shadow memory has not been updated.
+- If shadow memory is not supported, reads always come from OTP fuses, making
+  `sense_enable` ineffective.
+
+Use Cases
+^^^^^^^^^
+
+- Ensuring accuracy: Reading directly from the OTP fuses (`sense_enable=1`)
+  guarantees that the retrieved value reflects the actual state of the OTP
+  memory.
+- Avoiding outdated values: If `sense_enable=0` is used and the shadow
+  memory has not been refreshed, the read value may differ from the true OTP
+  fuse state.
+- Debugging & Validation: Direct OTP fuse reads can be used to confirm
+  whether a value has been successfully programmed.
+
+Usage Example
+^^^^^^^^^^^^^
+
+::
+
+    # Read OTP directly from fuses (ensures accuracy)
+    ocotp0.sense_enable=1
+    md -l /dev/nvmem/imx-ocotp
+
+    # Read OTP from shadow memory (may return outdated values if not refreshed)
+    ocotp0.sense_enable=0
+    md -l /dev/nvmem/imx-ocotp
+
+**Caution**
+^^^^^^^^^^^
+
+- If `sense_enable=0`, values may not reflect the actual OTP state until the
+  shadow memory is refreshed.
+- If `sense_enable=1`, the read is guaranteed to return the true OTP fuse
+  value.
+- Not all hardware supports shadow memory, making `sense_enable` ineffective
+  on some devices.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 565e6c11f82f..9f53f3aa449b 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -34,6 +34,7 @@ Contents:
    state
    random
    optee
+   otp
    debugging
    watchdog
    reboot-mode
-- 
2.39.5



