Delivery-date: Fri, 25 Sep 2026 12:56:49 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA3bk-0068h5-2J
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 12:56:49 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 36648202057
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 12:56:48 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PQj5aabw;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=dMNHhURA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790333808;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=19/0UkWQ9JxxT8vEHrE17FptABxuW+Y7GZNEdkwGCJE=;
	b=JZeKCSEO+Nd12B86Kh0wVAZQKvf4TvqPLjHAoJa/5JmVvXOEbb7K1LRY5wuKtmxeLK89DZ
	NYqL0Pkdv7X+5BbRRjkk65PSWkXRkoukFuDqON76t/ALUW2rv6q32XawdX+IhYNDGFJvAx
	iRgnP5aJEUNMfvPMx5qMyF6/dQT6l+HO0AbstfXmgu/KbTGYs9wzQ91fMClh/8/oT6cS87
	9VfQDCPLyJuo49AnZXxmvF11uvYclszjCmPpO4L7sxy5XqtPGMczhYu2h1LhXZdy5AdeQp
	O1XXLW0a3dynWWFdAdR4OvqNRe6nC59zNGBWl+pQGMFCX7UdTmGbg+kSgZjEKQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790333808; a=rsa-sha256;
	cv=none;
	b=R8khUSAMkiAti3wt0Xvmhd0u38OWbjb+55o2Qetl5Sqr4ojZfpWfS8kLiRoSiyA7oAdgbB
	kemKn3IW3/0vYfl6k3+PgM7etJPyybfteHwRkutE5EktqgEWBVojywbJ8to+dliQ5ZG8U1
	pyZp4fpICkUKgzSwmZN2rH/Apa382Ucn6zIHhnkUdiVCrzTB4OW9pehTogm/b0yCGc2Fj6
	8xeNt8O09qPi8W9+JkSUvjhXbMsQBwMRHnEXH2ZnFEAotTWLksyNSOyLWaKXg9c1yviK9K
	iAQX/owfCL2rdB+OjA4ES0vxocaDwXJgZDgTEHQO/fvbcOq2oGw5JehVrjWkhg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=PQj5aabw;
	dkim=pass header.d=waldekranz-com.20251104.gappssmtp.com header.s=20251104 header.b=dMNHhURA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=19/0UkWQ9JxxT8vEHrE17FptABxuW+Y7GZNEdkwGCJE=; b=PQj5aabwBpMGtUc0uW3KkpKbD2
	FqqEdVYYdAm+yFOVwLcR6b/OkYVNErS5lWvSRpfRsrrV6vuMHkC4BjWIqUV+aDTQfJU1Q96etOlj4
	n1Ei7fyz30rSz+soWh1pFbIHPS+XmEeS+jbwZ7dSmlGOHS13lDk5EvYYbB0M9+3u3+d2n7xKOwbOb
	vUSEXKkUsGIxR3yfxob12Q1ucY/AQHcxwPcINFKDt0Vn+AaXi//kRsWooUzy1Cz6aZMXRbkBXwtTT
	RKANWAhg/O+IF1JR4GVWYkKQ/GtKQn7/0Sj6e10puIdmHPi0h5RrVS9q3mGm5GQuxBW6f+tgKm3pL
	ODUnZbVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aS-0000000D8c6-3D1c;
	Fri, 25 Sep 2026 10:55:28 +0000
Received: from mail-ej2-x0f.google.com ([2a00:1450:4864:34::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA3aN-0000000D8ZO-32qV
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 10:55:26 +0000
Received: by mail-ej2-x0f.google.com with SMTP id a640c23a62f3a-c2af9270c53so8710266b.1
        for <barebox@lists.infradead.org>; Fri, 25 Sep 2026 03:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20251104.gappssmtp.com; s=20251104; t=1790333722; x=1790938522; darn=lists.infradead.org;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=19/0UkWQ9JxxT8vEHrE17FptABxuW+Y7GZNEdkwGCJE=;
        b=dMNHhURAmHSmUXaAMwN7iJ8PkvboyuGp6FHhR3HzdH5uSytXyvLyqFFNbtNsCU6jrO
         4wJLFtbuVJ2mqsG9NecjB8CRxxC1TR9bX14XxWvk1AYHYYAwyxKCpRsF9q5O1/fumNzX
         GCy/+ZlkceaHtpuK0DPduOrQac7/KIQb8NMI92+KoS7/YbtGIj7UzuP1Ug8c+t6YiDRg
         T1N8JXciVFixVK94U1N3wWQzDZ5M00jb7dHsyIhBfVJyXjrPOV/OAOYVV3Q8k14jnr7O
         7Gc26wBi/ChScb9S6jm7TEcck3k3oBw+6axH7varZoGpJzK2v+sPL/W03zY01fUCS83r
         kyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790333722; x=1790938522;
        h=content-transfer-encoding:organization:mime-version:references
         :in-reply-to:message-id:date:subject:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=19/0UkWQ9JxxT8vEHrE17FptABxuW+Y7GZNEdkwGCJE=;
        b=Z2JYQG6lcIBl3pWWrORoreEwx9xk46RbRnDWw4wWVSvtdhoIsDrdp2jNSI8xtNMgCk
         LvQig37suAxWI72GLDxgaRN1CsdJRCJPY8IaZZyCeAJ+F7AXTCD1gj2JHTt2ZolVsa1t
         /1hf+2vmGiXHJGvWH4rICx0g8KOZWHwWVX0F0z5NtgUqMdpZ+o6bAXayg8wqAsIQMjCQ
         QuYsLiuMcStzVASkH7F0rw6M/Tp5X81vn3dyM95zPlv+6LexBmg69exB8/5LeIrPtbBm
         ayeqEj6Y3idCaT4nvDcItwAD62RbExd/CUrJMuQNmrx/uyUJeHC/zGgk7QQhEUwOlwDy
         DZhQ==
X-Gm-Message-State: AFuF++nrpegaEgEV3TFK6rJKkiODjcX+UoIb5XM/eVVBWx5LCB36eEj7
	NxLg7gnqIuCRtPIRkVE6HeKs2bhgf1kmDDiaFom8Ry8mO+sHKLY2t7oBERqlHd9v+hxUisWlhxU
	vOF4C
X-Gm-Gg: AYBFou1q9PXDV615cYphxR05lgfuXI1piYZiz6zDwVFX0KRG1FcgndcP675k+01EBjH
	6qxb0zwEB2UNoNqHKTxYdo0Vsb8FWZe28VhU8gBe0S3ox6gsJoZZrIu+ydhmY41fiQnDgxHVHLk
	uX4kLbq2z3esj0Nd+g+1DBb7INGhun1ECZZqyLDN84CJmdGvVGezpN8XlHNUr6cKc37ffk6v3L5
	zG2Xg/QEhtH07ftLlVMf6auPg2PThZ5yJTM6GQR2gHsHdSqCDCU1ICwWRHfjrLtiSWys8wvAJ87
	thzw5Ybcs9wFRDYn4MlshLVQD5kPMavkZsEJMQors1IFCORhLaIurYu70WioQwyMf+iqHDVpSFC
	KZNSNIgDJ2QP/vr54/L9VoSfviWC3F+CAVuewP/sIVsUlZXZOq+NXFviuxKeRcIEyvWCXROnk1h
	KD7TJbVJ0XUEwodptPnbaktYHHihIDAcKo/8eNmNHnYxblLaYlebAyJSyBYzMn1ehOVC5Ld9B48
	HDOK3Y82IT1aeFdMpmKhOjMP8M7YR/5WCQhS6D7HZtPj5+YqRilY8+rWjNzNAKXlsFCPibqtLep
	FvEtyG3LJceriIvKCO3z
X-Received: by 2002:a17:907:d715:b0:c29:555e:bf2 with SMTP id a640c23a62f3a-c2ac53f98cemr423580066b.41.1790333721446;
        Fri, 25 Sep 2026 03:55:21 -0700 (PDT)
Received: from spa.addiva.ad (h-79-136-22-50.NA.cust.bahnhof.se. [79.136.22.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2ae757ac8dsm98416066b.25.2026.09.25.03.55.20
        for <barebox@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Sep 2026 03:55:21 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: barebox@lists.infradead.org
Subject: [PATCH v2 next 5/5] test: py: lvm: Add basic LV activation test
Date: Fri, 25 Sep 2026 10:54:27 +0000
Message-ID: <20260925105510.1431927-6-tobias@waldekranz.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260925105510.1431927-1-tobias@waldekranz.com>
References: <20260925105510.1431927-1-tobias@waldekranz.com>
MIME-Version: 1.0
Organization: Wires
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_035523_855714_B5595606 
X-CRM114-Status: GOOD (  18.97  )
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
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 36648202057
X-Stat-Signature: k4xxwge3ieckmb1nogn7wt3arb68pber

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
 scripts/lvm-pvs.guestfish                     |  55 +++++++++++++
 test/py/test_lvm.py                           |  75 ++++++++++++++++++
 test/testdata/lvm-pvs.disk.xz                 | Bin 0 -> 2968 bytes
 4 files changed, 132 insertions(+)
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
index 0000000000..2e9c368317
--- /dev/null
+++ b/scripts/lvm-pvs.guestfish
@@ -0,0 +1,55 @@
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
+part-set-name /dev/sda 1 pv1
+part-set-name /dev/sda 2 pv2
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
+# 2. Contains data that is sensitive to reordering
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
index 0000000000..096540e1fd
--- /dev/null
+++ b/test/py/test_lvm.py
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
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
index 0000000000000000000000000000000000000000..844b33e066d06b39b97a925bf35adbf8033b7083
GIT binary patch
literal 2968
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

literal 0
HcmV?d00001

-- 
2.43.0



