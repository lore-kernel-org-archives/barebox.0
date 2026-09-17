Delivery-date: Thu, 17 Sep 2026 09:43:36 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x76mO-00369x-1a
	for lore@lore.pengutronix.de;
	Thu, 17 Sep 2026 09:43:36 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ZUEK5rEg;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=YpJRt49A;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F021C2020F4
	for <lore@pengutronix.de>; Thu, 17 Sep 2026 09:43:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4r38OHjVkeUkYiCzMxvXRwpy+Li23sP7e7RVSr40W3E=; b=ZUEK5rEgBLRZFFKwpTZwYoIxnQ
	Ybm+exPPtyLO2hQQ1uOlqQsOwgjsflVTIbrWipzVAHTz4DDQqXikAwhCuWORwPCx8ckZ4JcRIFlo7
	Z2MrRxmNS3AyM7ySeS01efXJuPNWdeuSlM9TNS8zbS2B/N/44r3IKfgkQ5QJV61UE0ddKdoFLVCm4
	eQ0jeynRpFeiKOnSd6Oat4H+9rl7tcl/cvtriZR29lDC7M1hKvTN2QCeJ8bnyXPewTZo3zK0MxUaQ
	eU1rHEvYjEe4orG4Z2AOBWvUE7loYcX8ord4ely+un01FEHVz96GP+/R7SuKYKQ6Izi4Jb8ujJzJS
	zTV2gypA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l8-0000000AnG3-36fR;
	Thu, 17 Sep 2026 07:42:18 +0000
Received: from mail-ed2-x10.google.com ([2a00:1450:4864:33::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x76l4-0000000AnDS-2JOO
	for barebox@lists.infradead.org;
	Thu, 17 Sep 2026 07:42:17 +0000
Received: by mail-ed2-x10.google.com with SMTP id 4fb4d7f45d1cf-6a98505364aso885357a12.3
        for <barebox@lists.infradead.org>; Thu, 17 Sep 2026 00:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1789630933; x=1790235733; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=4r38OHjVkeUkYiCzMxvXRwpy+Li23sP7e7RVSr40W3E=;
        b=YpJRt49A3M/AU0k76hbMiR4womqlrZ2juFtWTNbzrKhYrvsT6HF5np3h8jVNvGXV9y
         3klZRTRevo8bB7iAyzq/L2oxrVeNdFloWYQf3N/76eJ1FXBfDwhcWy17RscldSBY0RVE
         1aOgS8PvR5SceyMOTteaHn0ZVxTemkI0O8jJBKVy/QQ8/yGQbpQ2bzP7eRzAemow76xt
         Ijr2EWeFua/IUBoYraoPmG1YM2VCMJW5ipUs6FWMyHS00XvNGyXX+Ok7upbjvBhbO1v0
         7PU+imY9N6y0pWXRh15578S0dplmnIuu9K3VMPw+Xo7KCoWypK8w5SGFIP4oBH6j/H0z
         hQBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789630933; x=1790235733;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4r38OHjVkeUkYiCzMxvXRwpy+Li23sP7e7RVSr40W3E=;
        b=cgs1BzcAv+xTuaCRiccjaaNxGcpIW6FIcDe/I0eeXqDwDS/J1PR/LtVXRyLYDUtCUp
         LOThwVevGQ7gDQ+fXnJmxTTfQVtetCK+ybR2SyCXdSpEQOUapENb0TmZ0F40rDe+QzaN
         Hki3CwXir6MZbdtPZHUxE2f49yCN87oGL0/gvM3u8Y/xI9xe+LhafjnQrSpQrTNF7ugQ
         5m5bAZs/l9aj+Zk+cs2vX8pS3WitaEBqpZrkAU8OBHxNK7kA8OViftVoBHtwUuJspwfb
         6sPIPPl8O4qQ0tUIigah4wttiuQyevjWGf/B5Yk2TLd3VZlnJAhF7LOAaAm6ucLq0Xfw
         pRLw==
X-Gm-Message-State: AFuF++mCnIlYSqe8XDWOFU4/eD6SrbwYVhJL5J2ENiy47SUKMqgxpz7/
	iW+hGqKSwhRKpfYDYc7x3Pz13j/MIZvj+3+VzIWl4avW+NSpAnWgsnWX/suwjvxHKB64GQKqGAI
	tJcHo
X-Gm-Gg: AYBFou00oclO+EO4jr4bZPrRRnqSJfVVdnx2VbMOVs+edmEC2VMvdSDksH8a1k9wOes
	IrXNFTfWEyHKte+Hrks/Cp2lrGie3UQ1Re9uyZlQ1a5dI0SwuiizTWJJS7+BSXtLQEU0D36fO0i
	GA57trg5iZW9b4KnJAeseiP9WH8cC4oF0kTlXV5OopAIHTEO251frsV9ej9fjPl+KKSVZpBlSoX
	e84k2EY33NXcEY0N9oQ9ck7iZn4syfqX47UM2CyGteurmofu5LsNeBF883HGHDC+mpUwdQQeQoc
	xzxJuJGSedFRz7HQ1s1SdWB/815FBmiHNaDTz75w65CJxqMAmwGVKAiSnJQm56xakN0Uav2BBh7
	9Eb9td0HVvsd+Yl+peY8M3VNC8pDXgjcy0wfIkTpoFf06D8FVECzj+45NK4o4EtJA6KjuC7wWw4
	7jWzJu5Amw8gvTVNqB1u86Z7PDOncGEkNcm+71b3EGUktH4KWEoDnwzHyR6ZTyN9rlJHUR+3egR
	Jud26c/ONNPTh3fJmsNcMEn2hSPVlF4TZrdCgHKN6tGUbXY/ahuOX0Jyd4pqA2/5xx+PF2pJZdg
	NSLTfu0UCMvxwvjJ0L22f0ofkgYw3xp9Ag==
X-Received: by 2002:a17:907:a089:b0:c29:4cdf:dd70 with SMTP id a640c23a62f3a-c29e530e7e6mr385931866b.44.1789630932789;
        Thu, 17 Sep 2026 00:42:12 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c29de5e4ca9sm238865966b.42.2026.09.17.00.42.12
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2026 00:42:12 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH remotes/origin/next 5/5] test: py: lvm: Add basic LV activation test
Date: Thu, 17 Sep 2026 07:40:41 +0000
Message-ID: <20260917074202.3851071-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260917074202.3851071-1-tobias@waldekranz.com>
References: <20260917074202.3851071-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_004214_633185_A9D4E104 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Verify that Barebox can parse the metadata of a PV and activate
    an LV discontinuously spread over two PVs. Official LVM tooling only works
    on block devices, so guestfish(1) is leveraged to create the test image.
   Since it is a bit finicky to run on some platforms (e.g., Ubuntu installs
   kernels as 0600, whic [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:33:0:0:0:10 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Stat-Signature: 9n6w7ujexpwiz3zecjrmha7jikyw371k
X-Rspamd-Queue-Id: F021C2020F4
X-Spamd-Result: default: False [-5.91 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,waldekranz-com.20251104.gappssmtp.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[waldekranz.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	HAS_ORG_HEADER(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:33::10:received];
	MIME_TRACE(0.00)[0:+];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tobias@waldekranz.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,waldekranz-com.20251104.gappssmtp.com:+]
X-Rspamd-Action: no action

Verify that Barebox can parse the metadata of a PV and activate an LV
discontinuously spread over two PVs.

Official LVM tooling only works on block devices, so guestfish(1) is
leveraged to create the test image. Since it is a bit finicky to run
on some platforms (e.g., Ubuntu installs kernels as 0600, which means
users can't run guestfish by default), we opt for checking in a
compressed version along with the script used to generate it.

Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
---
 .../boards/configs/enable_dm_testing.config   |   2 +
 scripts/lvm-pvs.guestfish                     |  53 ++++++++++++
 test/py/test_lvm.py                           |  76 ++++++++++++++++++
 test/testdata/lvm-pvs.disk.xz                 | Bin 0 -> 2956 bytes
 4 files changed, 131 insertions(+)
 create mode 100755 scripts/lvm-pvs.guestfish
 create mode 100644 test/py/test_lvm.py
 create mode 100644 test/testdata/lvm-pvs.disk.xz

diff --git a/common/boards/configs/enable_dm_testing.config b/common/boards/configs/enable_dm_testing.config
index 16c3f702c1..eda2fc41a3 100644
--- a/common/boards/configs/enable_dm_testing.config
+++ b/common/boards/configs/enable_dm_testing.config
@@ -3,7 +3,9 @@ CONFIG_DISK=y
 CONFIG_DM_BLK=y
 CONFIG_DM_BLK_LINEAR=y
 CONFIG_DM_BLK_VERITY=y
+CONFIG_DM_LVM=y
 CONFIG_CMD_DMSETUP=y
 CONFIG_CMD_VERITYSETUP=y
+CONFIG_CMD_LVM=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_READF=y
diff --git a/scripts/lvm-pvs.guestfish b/scripts/lvm-pvs.guestfish
new file mode 100755
index 0000000000..c8d31385f3
--- /dev/null
+++ b/scripts/lvm-pvs.guestfish
@@ -0,0 +1,53 @@
+#!/usr/bin/guestfish -f
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Create a single disk image that holds two LVM PVs. This is used by
+# the LVM labgrid tests.
+
+alloc lvm-pvs.disk 8M
+launch
+
+part-init /dev/sda gpt
+part-add /dev/sda p 34 8191
+part-add /dev/sda p 8192 -34
+
+# Keep sizes reasonably small
+debug sh "lvm pvcreate --metadatasize 4k /dev/sda1"
+debug sh "lvm pvcreate --metadatasize 4k --pvmetadatacopies 2 /dev/sda2"
+debug sh "lvm vgcreate -s 4k testvg /dev/sda1 /dev/sda2"
+
+# Create an LV with three segments that span both PVs
+debug sh "lvm lvcreate -y -n testlv -l 8 testvg /dev/sda1:8-15"
+debug sh "lvm lvextend -l +8 testvg/testlv /dev/sda2:0-7"
+debug sh "lvm lvextend -l +8 testvg/testlv /dev/sda1:0-7"
+
+debug sh "lvm lvs -o lv_name,seg_le_ranges --segments testvg"
+
+mkfs vfat /dev/testvg/testlv
+mount /dev/testvg/testlv /
+
+# Generate a test file that:
+# 1. Is big enough to be spread over all three segments
+# 2. Contains data that is sensitvie to reordering
+# 3. Compresses well, since we're checking it in
+debug sh "printf \'0%*s0\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'1%*s1\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'2%*s2\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'3%*s3\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'4%*s4\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'5%*s5\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'6%*s6\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'7%*s7\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'8%*s8\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'9%*s9\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'a%*sa\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'b%*sb\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'c%*sc\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'d%*sd\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'e%*se\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'f%*sf\' 4094 >>/sysroot/bigfile"
+debug sh "printf \'g%*sg\' 4094 >>/sysroot/bigfile"
+debug sh "md5sum </sysroot/bigfile >/sysroot/bigfile.md5sum"
+
+umount /
+
diff --git a/test/py/test_lvm.py b/test/py/test_lvm.py
new file mode 100644
index 0000000000..c148571780
--- /dev/null
+++ b/test/py/test_lvm.py
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+import hashlib
+import lzma
+import os
+import pytest
+import shutil
+
+from .helper import skip_disabled
+
+
+@pytest.fixture(scope="module")
+def lvm_testdata(testfs):
+    """Extract checked in disk image containing two LVM PVs
+
+    The disk image was created using the standard LVM tooling, see
+    test/testdata/lvm-pvs.guestfish.
+    """
+    path = os.path.join(testfs, "lvm")
+    os.makedirs(path, exist_ok=True)
+
+    diskxz = os.path.join(os.path.dirname(__file__), os.pardir, "testdata",
+                          "lvm-pvs.disk.xz")
+    disk = os.path.join(path, "lvm-pvs.disk")
+    dmtable = os.path.join(path, "lvm-pvs.disk.dm")
+
+    diskblks = 0
+    with lzma.open(diskxz) as src:
+        with open(disk, "wb") as dst:
+            dst.write(src.read())
+            diskblks = dst.tell() // 512
+
+    with open(dmtable, "w") as f:
+        f.write(f"0 {diskblks} linear lvm-pvs.disk 0\n")
+
+    yield {
+        "disk": disk,
+        "dmtable": dmtable,
+    }
+
+    shutil.rmtree(path)
+
+
+@pytest.fixture(autouse=True)
+def cleanup(barebox, barebox_config):
+    skip_disabled(barebox_config,
+                  "CONFIG_CMD_LVM",
+                  "CONFIG_CMD_DMSETUP")
+    yield
+    barebox.run("umount /mnt/testvg-testlv")
+    barebox.run("dmsetup remove testvg-testlv")
+    barebox.run("dmsetup remove pvs")
+    barebox.run("cd")
+
+
+def test_lvm(barebox, barebox_config, lvm_testdata):
+    barebox.run_check("cd /mnt/9p/testfs/lvm")
+
+    # LVM only operates on block devices. Create a linear mapping over
+    # the full disk image to accomplish the equivalent of `losetup`.
+    barebox.run_check("dmsetup create pvs lvm-pvs.disk.dm")
+
+    out = "\n".join(barebox.run_check("lvm info"))
+    for line in ("VG \"testvg\"",
+                 "#PV:     2",
+                 "#LV:     1",
+                 "LV \"testlv\"",
+                 "Type:  linear"):
+        assert line in out, f"Expected \"{line}\" in output of 'lvm info'"
+
+    barebox.run_check("lvm activate testvg testlv")
+    barebox.run_check("mount testvg-testlv")
+
+    bigsum = barebox.run_check("md5sum /mnt/testvg-testlv/bigfile")[0].split()[0]
+    bigexp = barebox.run_check("cat /mnt/testvg-testlv/bigfile.md5sum")[0].split()[0]
+    assert bigsum == bigexp, "Expected md5sum of bigfile to match bigfile.md5sum"
diff --git a/test/testdata/lvm-pvs.disk.xz b/test/testdata/lvm-pvs.disk.xz
new file mode 100644
index 0000000000000000000000000000000000000000..589747a41ce43850e4bcf110a6e0aad95b31a3aa
GIT binary patch
literal 2956
zcmd5;S5y;-7EA(!4xxie6OblNkzznZFd!l=NC{nvgx&&(#1NYF4hEzsU8IN#7<!2!
zEf^^-U677KfJG7!vVOkv&iiuroPFQ-<Ic>TnRAcTBWw@=0R8IZYZwS14&(;_03k{%
zWi;9%qp$-2;D7uxg;|^-hNnw3)B)_aM4^iLF~n|VoYHz5ioN~{vozac*gdU4!dKr_
z43*E6xn!_gdN3#K#{;JJBl1p3F<pgk^Wp0x+gDqwgnGh|F^HSijm3}B$;brP@{DY+
z6Epvnj=611Jjb96A6pP&3d7prQDjc%ZuTV9z@eRG*CC~v;(g#RZJQMx;Pp8V5?eQj
zmK>%P#G7gha;E!Tu(R?2J|$DI59A&Nim4AjY7)I9V>j@DEPxUoQuZ&XFk@#FZ3>Hy
z+FTB*Ff8lYkTH4a3_;@)inq{r!ce!g?*u6dpi+0HByZsbuU;u#%jOOXRv~HLkGkj!
z`2+`gSI<`2(Kt0(W5-=jCownZ)QM}7O?#(*^we0HKwp6D0d}8MYqW^prh^+2btCCP
zdRfzS_2JP(#VvgFUH|XfwXoN3MzI{sDt0HL3*0*<{aQ+g^8q1dDL*9IN;7*|jc29=
z26MJza_~<3f4(t}IVdr_9y010VxQy@r`d&?z0JMn$sni7d^Dz9W|i>1(b{&bMVkde
zmSvr9tRknRc%@Y3L9yxckSTQwb|WIsL^Uzf(7|!UI4w1-_daC&o}V4TN_z4TFTB-i
ztm0$2?0g}xoV`V^+E0jUX5@!z$h}d67^#!lr6_HeN!>)R`SoX$Cf0Rov@WAb)qn>8
zuGTR2_z+pYwWf`-E>J8f{O(+(V;~Q58{SRo7D+GFOF8$mwzep{XF*SjRnlte2|RL3
zj7xfKh`+h)>!>J7PIH?eNr~o8Mv4|CWW8~WrGJWUeLc4a-Revd0g|Wlj-hm=J?tn7
z)m}k-vpS_{F!QH~!Uwg1cv*qb>av}64JCf0PLD*<cv}w7F1<S81j|Be-NT1=MF<=;
zCQ+7CLiEvs=f1$0D7dKz2CzYQg?}M+KT5;IK4g}OcS!0bboY-dWlK=v#o9z^k!46B
zu`fK+%AYwy2$e`MB=91J>qM9)Pka<zA|g8nWZoirBFNrrp<#2a*cF{Oo)hJ35$E+;
zVn?L&i@(me|CH}oa&ytXL_NPqSd_%z7}P={Jw9Lw8to1fnmk!T&HHP&$0aq;0L(ba
z=q%-Ma`+HvzVJs(Ve|3y0yo(mn8`RR&+H7H`>u!8NN?dVYF*Dkbh;jSw|FS8f69hA
zD|?+ajMV-9F{3@no+*$puaPFba|7CAPD~Nw*V0YcrBs_a5Rsh?uz?@uVF9j|6$#ic
zwmF~2diVSRPG715Tw+0%p=Td&KaBr0QO`AZ!nZ=WCWaT~vs}#ppI0R&1<)p{u6u-g
zn^r!*pn&B*^Bi*hm34FS?SXF0i?(-1sznB*#|8m{$&(pMl8L*7j6JQn!ppL$vk<v6
z=v5ZvP;ji5hx1j)lS&;ue(?IGJ4rloGaAwE#)(~R<(AW6JL`T}NG2WsoBL_GA2CI%
zZBo%98+T7RE24^&f5>fT<?~}T1^9Km*#fB~G^aTb<~c(bj3^}gQqJ5LRUGszRT>{d
zPwOie;IPwmKaVWrLq<gG#I8~2;Mx>fH)d$mkets#6O>HoP;{!{ymHgyS_TgX4U$a>
z47a7Qj?i*tV4Tl>M$R7<C@WfZr^oHbV7uK3QgF&arkV;v#fxqKo`72hY@|%CnmT9U
zR$`;HpuKJUhKGes=SFC)?edBp0~57>x^B|#&sJTFg!Wb!i`JW1bJ$BY%txcaTFaVA
zc&vIxbA|0|9(G+CYf#$CrZ6MVvc<ZO!pdpW8G=w}mE}_lVjnY>t8NLmw)?IWdB!BK
zp7WI|2#T}DgikoO`E4%jxa~dOJ3}cA0e|aJMs%b4V3rx+R3{L1O~ODj%CRXp{yRkJ
z7pZiXe$Wd(s<#;$6#evber==@7Rmq3FF)62(a+}X9!0fyP;1Q4seMKOXmcE7UaEgi
zHQBF4&CS$ANFg%0xAq%P5b^r6_eu|v13UVcG_gxAXFJUekQb#A@-K(Iw7=|32UlUX
zEjF}EGlDVN-+-eUGzj|d!$<l|{TaR*VR08;3zhV-*ckR;b5UeL;ssX3&ZCoy_p*l3
z%<C<r)j~S_!;xLY=ZEVpGtlO;Hns;FOjGq9;1wiJyEJL%ox;0YQ=ZEB(B>RI@Qi%M
zf`q<gP#F%)R`f#H#Md_hcR2+C-{1C8ziojF*qmM5nD`(mqWWR6<46j|SDcUWM5gAM
zQZXm@<>IQ0*(U0p<0BMuY=Q^Y5eXn?MlHsXBH26rK=f=;HyC#dcl<}gL<Z+?ocgz1
zroYCbQ9^?N<pE!V;Z?_-^^q#4N?KA?`~r%rB%Hp=48@UhaY+y4GWVoWheH1Xz<(wN
zzopIpTy4&&^Rk3S2TTRHRd#=rmuCnNZsFj6_%WqmbAvjfLBeuSq?)Wfr=1s6D)-io
zBYRzav!Crb-pCP?ZtWd81f`E}xy0XdR|$-mWBF&J{`WYZIyBo5Em*A$Eq-E_P{>5X
z$eojZMz#RO6Qwp8gP8JexO_3;^|5&6x;T8i#3@~BPk0oG!)I2cZ&k8lhVJRrc%X=l
zYv&}YDd6O(1I#4*X&rRf^B7)nKhi|R{uN&Mo&T(*zlZg|8u7A`rFO~5KJeQAqlbt0
z!cdrju~F?@)@Ha()u+0+hVO1o^5RxmM;3vwKqd*GFORjVsYuDc7QGU@d)CTf9dLPL
zn28!i#|t<OP%k%&=hc<5RR~OT400>^=KVfg;9}H}BI?!BufJNP51EI(v{ViNuJT7k
WMbRgAdCfKw?jC`D%>eYah`#`qRJ~LH

literal 0
HcmV?d00001

-- 
2.43.0



