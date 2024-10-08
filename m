Delivery-date: Tue, 08 Oct 2024 13:43:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sy8cZ-001o0k-36
	for lore@lore.pengutronix.de;
	Tue, 08 Oct 2024 13:43:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sy8cY-0002Xd-W7
	for lore@pengutronix.de; Tue, 08 Oct 2024 13:43:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xxho4MMJWig942Jnt/dV6GhRMLsTVNm7Cr70jY5oIyc=; b=ed+3WhZ5rai5M09E4uh+3U0J3n
	mJJ1UJ2jtMxeE8yfMDmeAoT/vYV8ceVbHRNkc8H81JFSETL5fc5qfgdP2VTYQ97HH2XK9aW+N6J1N
	JsZWcy5OFyPLU5ZPk8OaM8v1hHVs+5x7gF4resUh2U512ei5Onq+YU4PsIcDqFueetKJeG4mXd54D
	LqIlfdfKgZt2hqrY655yKQQlYvnNGWcuHZLemCKXmuamyc9tuU0tKV/0ZBUsK/RAh/vsY2dyiesX9
	2dtIf9/TRd8gFf9+x5FjZ91h8sOXy/KlvaZFd7EYUr72Gnhzot55GkbdIKP9JRyqewy6wEOAiKFpz
	6FBCexjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8bm-00000005ffr-2Ms0;
	Tue, 08 Oct 2024 11:42:30 +0000
Received: from 4.mo575.mail-out.ovh.net ([46.105.59.63])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8I8-00000005apd-1SiY
	for barebox@lists.infradead.org;
	Tue, 08 Oct 2024 11:22:15 +0000
Received: from director9.ghost.mail-out.ovh.net (unknown [10.108.9.41])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 4XNDBG5BGFz1p3N
	for <barebox@lists.infradead.org>; Tue,  8 Oct 2024 11:21:58 +0000 (UTC)
Received: from ghost-submission-55b549bf7b-52rpf (unknown [10.110.113.210])
	by director9.ghost.mail-out.ovh.net (Postfix) with ESMTPS id F37641FEA4;
	Tue,  8 Oct 2024 11:21:57 +0000 (UTC)
Received: from schlaraffenlan.de ([37.59.142.109])
	by ghost-submission-55b549bf7b-52rpf with ESMTPSA
	id 1qhsJtUVBWfloAAAWtqZjQ
	(envelope-from <mail@schlaraffenlan.de>); Tue, 08 Oct 2024 11:21:57 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-109S0037e9ee110-b995-4a26-9cc6-19cf153c1086,
                    2954323A5FC2B2A94D2ACD6B05EE79B8FF97767A) smtp.auth=mail@schlaraffenlan.de
X-OVh-ClientIp: 95.90.103.56
From: Jonas Rebmann <mail@schlaraffenlan.de>
Date: Tue, 08 Oct 2024 13:21:47 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-test_tftp-v2-1-509b8e861702@schlaraffenlan.de>
X-B4-Tracking: v=1; b=H4sIAMoVBWcC/23MQQrDIBCF4auEWdeiQ9S2q9yjhGLj2AjBBBVpC
 d69Nusu/8fj2yFR9JTg1u0Qqfjk19ACTx1MswkvYt62BuTYc8Uly5TyI7u8sSsJxAvaXhkO7b9
 Fcv59WPex9exTXuPnoIv4rf+UIphgUksko7R+cjWkaV5MNM5RWEw4W4Kx1voF8mHNF6oAAAA=
X-Change-ID: 20240605-test_tftp-9e12282d46a0
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <mail@schlaraffenlan.de>
X-Mailer: b4 0.14.2
X-Ovh-Tracer-Id: 1573445120108037426
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeeftddrvdefuddgfeelucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephfffufggtgfgkffvvefosehtjeertdertdejnecuhfhrohhmpeflohhnrghsucftvggsmhgrnhhnuceomhgrihhlsehstghhlhgrrhgrfhhfvghnlhgrnhdruggvqeenucggtffrrghtthgvrhhnpeeihedtfeffgfehfeefueeuteffjeejueeuudegueejudefjeeiueelfeeiudfgkeenucffohhmrghinhepsggrrhgvsghogidrohhrghenucfkphepuddvjedrtddrtddruddpleehrdeltddruddtfedrheeipdefjedrheelrddugedvrddutdelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepuddvjedrtddrtddruddpmhgrihhlfhhrohhmpehmrghilhesshgthhhlrghrrghffhgvnhhlrghnrdguvgdpnhgspghrtghpthhtohepuddprhgtphhtthhopegsrghrvggsohigsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdfovfetjfhoshhtpehmohehjeehpdhmohguvgepshhmthhpohhuth
DKIM-Signature: a=rsa-sha256; bh=xxho4MMJWig942Jnt/dV6GhRMLsTVNm7Cr70jY5oIyc=;
 c=relaxed/relaxed; d=schlaraffenlan.de; h=From; s=ovhmo4392459-selector1;
 t=1728386518; v=1;
 b=FJ/HECq5FafGyHc569Tc9DUaoaHG0NHKdGPsF5ydu6O66o8D3VQ4UfBu1SbNZn3KUXegj773
 4PokjTR503g7rEGni+1qz4c660OXIkR5E8f98EZsjRzaV5a+3esPSLYfsufoXKKpXZ/ETXAFMlu
 i2h/hmIqjmrItlOEMbJplXDgTUM3owwPaa/9EwP1HABK2UhVAOGxkzS0sQC0dFCmV83FFcQzn68
 1zdWxhmMNuZgnhWL53UkT5Yguabm35ujXBEDUjnn/qm4g2bl8hTkH+/lz1jWIRx1k8oxVhxGqoc
 zy8v0x0bFvQXpOrG/nX0Ve+vghscFJssbWCVGdFPQRAXg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_042213_562124_CADAA2B0 
X-CRM114-Status: GOOD (  16.78  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] test: pytest: introduce pytest for network, test tftp
 notfound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox already has a few pytest integration tests but none of them are
networking related.

This patch introduces a test that asserts on bringing up at least one
DHCP interface and, on any of these interfaces, a successful ICMP-ping
from the DUT to the test pytest-host as well as a basic "File not Found"
conversation between the DUT and the test pytest-host.

As the test requires a network connection to the barebox device, without
the "network" feature the test is marked xfail. For the case of a qemu
device we also assume DHCP to set serverip correctly. In any other case,
it is set via console to that IP of the pytest-host that has the route
to the barebox devices IP.

Signed-off-by: Jonas Rebmann <mail@schlaraffenlan.de>
---
Changes in v2:
- use random ephermal instead of hardcoded port for tftp test
- test any interface doing DHCP, expect one to test without issues
- fail on any tftp error code
- cleanup
- update commit message
- Link to v1: https://lore.barebox.org/barebox/20240605-test_tftp-v1-1-5752ea677b06@schlaraffenlan.de
---
 test/arm/virt@multi_v8_defconfig.yaml |   1 +
 test/openrisc/generic_defconfig.yaml  |   2 +
 test/py/test_network.py               | 106 ++++++++++++++++++++++++++++++++++
 3 files changed, 109 insertions(+)

diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index d8f8ab5cbff35b5f9c414b0c7a66974a9a723794..42ce10328d7cc903010199364f5464d5146239e0 100644
--- a/test/arm/virt@multi_v8_defconfig.yaml
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -14,6 +14,7 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
+      - network
     runner:
       tuxmake_arch: arm64
 images:
diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
index 93ba9586c439d597c1a5e8deca44d1b99c902bed..56b70b8242f0e7f50f7ac732525a4857d8541744 100644
--- a/test/openrisc/generic_defconfig.yaml
+++ b/test/openrisc/generic_defconfig.yaml
@@ -12,6 +12,8 @@ targets:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
       BareboxTestStrategy: {}
+    features:
+      - network
 images:
   barebox: !template "$LG_BUILDDIR/barebox"
 imports:
diff --git a/test/py/test_network.py b/test/py/test_network.py
new file mode 100644
index 0000000000000000000000000000000000000000..afaa259e2496740fabe61129e8e7d4190c5d4c50
--- /dev/null
+++ b/test/py/test_network.py
@@ -0,0 +1,106 @@
+import pytest
+
+from labgrid import driver,Environment
+import socket
+import threading
+import re
+import warnings
+
+# Setting the port to zero causes bind to choose a random ephermal port
+TFTP_TEST_PORT = 0
+
+def get_source_addr(destination_ip, destination_port):
+    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
+    udp_socket.connect((destination_ip, destination_port))
+    source_ip, _ = udp_socket.getsockname()
+    return source_ip
+
+def tftp_setup_socket(listen_addr, listen_port=0):
+    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
+    udp_socket.bind((listen_addr, listen_port))
+    udp_socket.settimeout(3)
+    return udp_socket
+
+
+def tftp_expect_notfound(filename, udp_socket):
+    uname = filename.encode("ascii")
+    messages = [
+        b"\000\001" + uname + b"\000octet\000timeout\0005\000blksize\000512\000tsize\0000\000",
+        b"\000\005\000\001File not found\000",
+    ]
+    data, addr = udp_socket.recvfrom(1024)
+    udp_socket.sendto(messages[1], addr)
+    udp_socket.close()
+    assert data == messages[0]
+
+def tftp_conversation(barebox, barebox_interface, guestaddr):
+
+    listen_addr = "127.0.0.1"
+    if not isinstance(barebox.console, driver.QEMUDriver):
+        # sending an arbitrary udp package to determine the IP towards DUT
+        listen_addr = get_source_addr(guestaddr, TFTP_TEST_PORT)
+        barebox.run_check(f"eth0.serverip={listen_addr}")
+
+    barebox.run_check("ping $eth0.serverip", timeout=2)
+
+    tftp_socket=tftp_setup_socket(listen_addr, TFTP_TEST_PORT)
+    tftp_port_used=tftp_socket.getsockname()[1]
+
+    tftp_thread = threading.Thread(
+        target=tftp_expect_notfound,
+        name="tftp_expect_notfound",
+        args=("a", tftp_socket),
+    )
+    tftp_thread.daemon = True
+    tftp_thread.start()
+
+    try:
+        stdout, _, returncode = barebox.run(f"tftp -P {tftp_port_used} a", timeout=3)
+        assert returncode != 0
+    finally:
+        # terminate a timed-out tftp
+        barebox.console.sendcontrol("c")
+        tftp_thread.join()
+        barebox.run_check("ifdown eth0")
+
+
+def test_barebox_network(barebox, env):
+    # on DUTs without network feature, this is expected to fail
+    # set xfail_strict=True to enforce specifying the network feature if available
+    if not 'network' in env.get_target_features():
+        pytest.xfail("network feature not specified")
+
+    stdout = barebox.run_check("ifup -a")
+
+    interfaces = []
+
+    for line in stdout:
+        # eth0: DHCP client bound to address 10.0.2.15
+        m = re.search('(eth[0-9]+): DHCP client bound to address (.*)', line)
+        if m is None:
+            continue
+        else:
+            interfaces.append((m.group(1), m.group(2)))
+
+    assert interfaces, "Network testing is only possible with at least one DHCP interface"
+
+    for iface in interfaces:
+        ifname = iface[0]
+        ifaddr = iface[1]
+
+        assert ifaddr != "0.0.0.0"
+        assert ifaddr == barebox.run_check(f"echo ${ifname}.ipaddr")[0]
+
+        # Attempt a conversation with the DUT, which needs to succeed only on one interface
+        success = False
+
+        try:
+            tftp_conversation(barebox, ifname, ifaddr)
+            success = True
+            break
+        except Exception as e:
+            warnings.warn(f"Could not connect to DUT on {ifname} ({ifaddr}): {e}")
+
+        if not success:
+            pytest.fail("Could not converse with DUT on any of the found DHCP interfaces!")
+

---
base-commit: 5a2866973d386ffe9b9f5c429a0cbcd58bcef69c
change-id: 20240605-test_tftp-9e12282d46a0

Best regards,
-- 
Jonas Rebmann <mail@schlaraffenlan.de>



