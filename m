Delivery-date: Wed, 05 Jun 2024 15:14:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEqTX-001WTu-0R
	for lore@lore.pengutronix.de;
	Wed, 05 Jun 2024 15:14:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sEqTW-0004vO-DO
	for lore@pengutronix.de; Wed, 05 Jun 2024 15:14:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aAcrCwQ3m1/rtjjl9CYACRny0EhnIv98tkD4kjhr/Mg=; b=HNmhHxUhGqKYV1Qbak3Afc8GU+
	cYL4pQdzVvcj3m/053dEbobOAe4qpkOhhICpZD/RhOFRYO9V5vKNS02sC0ALpc461079QYpSO0ICM
	JVQJlJWhz7AVOR1VEdofV7fO4eltPgWvLLjRIiRUbnmzCNr4C0Q6RjuvijAvrM3qW0T5oAmLnBVbP
	uRZAnwZVQUySIYfi1uBV575UTe4pUv+whqsn054B595CB/4YHgTwtD8pZo+yPb4Pg1OD6GDYBtvN9
	XblLIrzMgyioY/VnoprbXMjKVUgmBv53nOEahGpdiBwVTCzZjvrs1RPmpF6yDYHarSYKXllFo24hr
	aPBoExKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEqSo-00000006Bbb-1qXK;
	Wed, 05 Jun 2024 13:14:02 +0000
Received: from 13.mo583.mail-out.ovh.net ([87.98.182.191])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEqSk-00000006BYN-2YGk
	for barebox@lists.infradead.org;
	Wed, 05 Jun 2024 13:14:00 +0000
Received: from director9.ghost.mail-out.ovh.net (unknown [10.109.148.7])
	by mo583.mail-out.ovh.net (Postfix) with ESMTP id 4VvSZw4gc6z1R6c
	for <barebox@lists.infradead.org>; Wed,  5 Jun 2024 13:13:44 +0000 (UTC)
Received: from ghost-submission-6684bf9d7b-vbh44 (unknown [10.110.96.131])
	by director9.ghost.mail-out.ovh.net (Postfix) with ESMTPS id B05E11FEAF;
	Wed,  5 Jun 2024 13:13:43 +0000 (UTC)
Received: from schlaraffenlan.de ([37.59.142.106])
	by ghost-submission-6684bf9d7b-vbh44 with ESMTPSA
	id sL6wJYdkYGaYVgAAoLgKtw
	(envelope-from <mail@schlaraffenlan.de>); Wed, 05 Jun 2024 13:13:43 +0000
Authentication-Results: garm.ovh; auth=pass (GARM-106R006a35b9433-38c4-4e4e-ac42-0b23294b9240,
                    93EF46EAE3D8452F1CAE73C1AE6730C23720AB02) smtp.auth=mail@schlaraffenlan.de
X-OVh-ClientIp: 91.191.178.71
From: Jonas Rebmann <mail@schlaraffenlan.de>
Date: Wed, 05 Jun 2024 15:13:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-test_tftp-v1-1-5752ea677b06@schlaraffenlan.de>
X-B4-Tracking: v=1; b=H4sIAHJkYGYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDMwNT3ZLU4pL4krSSAl3LVEMjIwujFBOzRAMloPqCotS0zAqwWdGxtbU
 AZH/RdVsAAAA=
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <mail@schlaraffenlan.de>
X-Mailer: b4 0.13.0
X-Ovh-Tracer-Id: 7244040004057335040
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvledrvdeliedgiedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephfffufggtgfgkffvvefosehtjeertdertdejnecuhfhrohhmpeflohhnrghsucftvggsmhgrnhhnuceomhgrihhlsehstghhlhgrrhgrfhhfvghnlhgrnhdruggvqeenucggtffrrghtthgvrhhnpefggfejuefhteffhfegudeliedtieegueegieetieevkeeludfhleejheetheevjeenucfkphepuddvjedrtddrtddruddpledurdduledurddujeekrdejuddpfeejrdehledrudegvddruddtieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpeduvdejrddtrddtrddupdhmrghilhhfrhhomhepmhgrihhlsehstghhlhgrrhgrfhhfvghnlhgrnhdruggvpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsggrrhgvsghogieslhhishhtshdrihhnfhhrrgguvggrugdrohhrghdpoffvtefjohhsthepmhhoheekfedpmhhouggvpehsmhhtphhouhht
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_061358_964322_B85A33DA 
X-CRM114-Status: GOOD (  13.29  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] test: pytest: introduce pytest for network, test tftp
 notfound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox already has a few pytest integration tests but none of them are
networking related. This type of test requires a network connection to
the barebox device, without the "network" feature the test is marked
xfail. DHCP is assumed. For the case of qemu device we also assume DHCP
to set serverip correctly. In any other case, it is set via console to
that IP of the pytest-host that has the route to the barebox devices IP.
The test asserts on a successful ICMP ping from the test device to the
pytest-host as well as on a "No such file or directory" conversation
from the barebox device to the pytest-host

Signed-off-by: Jonas Rebmann <mail@schlaraffenlan.de>
---
 test/arm/virt@multi_v8_defconfig.yaml |  1 +
 test/openrisc/generic_defconfig.yaml  |  2 +
 test/py/test_network.py               | 69 +++++++++++++++++++++++++++++++++++
 3 files changed, 72 insertions(+)

diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
index d8f8ab5cbf..42ce10328d 100644
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
index 93ba9586c4..56b70b8242 100644
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
index 0000000000..00bcea3606
--- /dev/null
+++ b/test/py/test_network.py
@@ -0,0 +1,69 @@
+import pytest
+
+from labgrid import driver,Environment
+import socket
+import threading
+
+TFTP_TEST_PORT = 6968
+
+def get_source_addr(destination_ip, destination_port):
+    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
+    udp_socket.connect((destination_ip, destination_port))
+    source_ip, _ = udp_socket.getsockname()
+    return source_ip
+
+def expect_tftp_notfound(filename, listen_port, listen_addr):
+    uname = filename.encode("ascii")
+    messages = [
+        b"\000\001" + uname + b"\000octet\000timeout\0005\000blksize\000512\000tsize\0000\000",
+        b"\000\005\000\001File not found\000",
+    ]
+    udp_socket = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
+    udp_socket.bind((listen_addr, listen_port))
+    udp_socket.settimeout(3)
+    data, addr = udp_socket.recvfrom(1024)
+    udp_socket.sendto(messages[1], addr)
+    udp_socket.close()
+    assert data == messages[0]
+
+def test_skip():
+    pytest.mark.skip("no network adapter available")
+
+def test_barebox_tftp_not_found(barebox, barebox_config, env):
+    # on duts without network feature, this is expected to fail
+    # set xfail_strict=True to enforce specifying the network feature if available
+    if not 'network' in env.get_target_features():
+        pytest.xfail("network feature not specified")
+
+    barebox.run_check("ifup eth0")
+    guestaddr = barebox.run_check("echo $eth0.ipaddr")[0]
+    assert guestaddr != "0.0.0.0"
+
+    listen_addr = "127.0.0.1"
+    if not isinstance(barebox.console, driver.QEMUDriver):
+        # sending an arbitrary udp package to determine the IP towards dut
+        listen_addr = get_source_addr(guestaddr, TFTP_TEST_PORT)
+        barebox.run_check(f"eth0.serverip={listen_addr}")
+
+    barebox.run_check("ping $eth0.serverip", timeout=2)
+
+    tftp_thread = threading.Thread(
+        target=expect_tftp_notfound,
+        name="expect_tftp_notfound",
+        args=("a", TFTP_TEST_PORT, listen_addr),
+    )
+    tftp_thread.daemon = True
+    tftp_thread.start()
+    
+    try:
+        stdout, _, returncode = barebox.run(f"tftp -P {TFTP_TEST_PORT} a", timeout=3)
+        assert returncode == 127
+    except:
+        raise
+    finally:
+        # terminate a timed-out ftpf
+        barebox.console.sendcontrol("c")
+
+    tftp_thread.join()
+    barebox.run_check("ifdown eth0")
+

---
base-commit: 55cf43c442c260846b393c2099d4a72d0ebdbdd9
change-id: 20240605-test_tftp-9e12282d46a0

Best regards,
-- 
Jonas Rebmann <mail@schlaraffenlan.de>



