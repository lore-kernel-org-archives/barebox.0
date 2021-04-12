Delivery-date: Mon, 12 Apr 2021 09:18:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqO-0003fO-Lq
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:18:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqqM-0004oS-Gn
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:18:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NLaGq8ONpY6tjXav0yVrW1mMjy+rt/Di3R7saR4HIVc=; b=jRYwbM2c18Gv4KNS5gKsx8H+0
	rrq6+HcRhZJvY8+9ECnKHjvmGeMpFSV86CQvdOlNE0ePy7y/0RKVOoxpVUejeDMipoi0U+cRA827+
	nugppT8Bf25QW71DGQKaywQ9Jy/3NyaBKpsKYd+7Qr7UhlUgauMbX1wL66gQMOcrO1/8PqPf3hhou
	PoODu4NgrWcIIuzVPyaRntzVe++71UMTl3Ij8GRrZ8WRzPDwla8ZTLabGJS3eLpRMP/QMgNBuNg2y
	MB0Di+xh81LmOXONFVWeZzlCCkKHpqXu/GmQUMnhAarzKVEsmFhC5wsGIi0W39wIKzCDsf5oEF9/4
	7o2Fwwj9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpF-005w3E-D0; Mon, 12 Apr 2021 07:17:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoh-005vuL-TV
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=9w6pMGVBdzi2c1OKYBqAxnRGrneTX751N1KDBojIaCY=; b=x0IaKpUbd7aTbZqDeEL400URoh
 SjYgFeO/evTwx3F80uJd4Doy/HYoYYG5ROsc9yHu1NYMTq99i/td0CeN4e/1ZHLK7hFqg4YpMzmTL
 skzvZWQqTcnFLQi/eIrdnCvQ2xRc1tuqsmP3+r2+mtX0a+9p/tqSjJwlfR01YDy+Tm0E2Dbo0yqB1
 OJ0TTrcwWt4fs8RuJt6G0Dxi6yZtvYf/pe75TzKEny0lVeZEQ7QfzExarLthHoMf96M8dbF4bPmrI
 LVVEddYJdwGmBIjbVwHWI7u4MjIowy6PmCXvoi80wx+z1+f3tqMwsKkjEuwlPmOIbR4KQsJ7jY/av
 9fU1uKKQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqod-005vEn-Rz
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HT-G3; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002g8-Ea; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:51 +0200
Message-Id: <20210412071651.8769-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001659_971859_EBE15F8F 
X-CRM114-Status: GOOD (  14.08  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 17/17] [RFC] test: run ./test/emulate.pl in Github action
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

See https://github.com/a3f/barebox/actions for an example how this could
look like.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .github/workflows/build-configs.yaml | 41 ++++++++++++++++
 .github/workflows/vm-tests.yaml      | 71 ++++++++++++++++++++++++++++
 .gitignore                           |  2 +
 test/kconfig/no-deps.cfg             |  3 ++
 4 files changed, 117 insertions(+)
 create mode 100644 .github/workflows/build-configs.yaml
 create mode 100644 .github/workflows/vm-tests.yaml
 create mode 100644 test/kconfig/no-deps.cfg

diff --git a/.github/workflows/build-configs.yaml b/.github/workflows/build-configs.yaml
new file mode 100644
index 000000000000..5025c2e04017
--- /dev/null
+++ b/.github/workflows/build-configs.yaml
@@ -0,0 +1,41 @@
+name: Build Configs
+on:
+  push:
+
+jobs:
+  build:
+    runs-on: ${{ matrix.os }}
+    strategy:
+      fail-fast: false
+      matrix:
+        os: ['ubuntu-latest' ]
+        ARCH: [ 'arm', 'mips', 'riscv' ]
+    name: ARCH=${{ matrix.ARCH }} Build
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v2
+
+    - name: Setup Environment
+      run: |
+        sudo apt-get update -qq
+        sudo apt-get install -y --no-install-recommends libyaml-tiny-perl \
+            lzop libusb-1.0-0-dev
+        pip3 install tuxmake
+
+    - name: Build Configs
+      run: |
+        for cfg in arch/${{ matrix.ARCH }}/configs/*_defconfig; do
+            cfg=$(basename $cfg)
+            DESTDIR="./artifacts/${{ matrix.ARCH }}-$cfg"
+            mkdir -p $DESTDIR
+            tuxmake -a "${{ matrix.ARCH }}" -k $cfg --runtime=podman -o $DESTDIR default \
+                    --kconfig-add test/kconfig/no-deps.cfg
+        done
+
+    - name: Publish Build Artifacts
+      uses: actions/upload-artifact@v2
+      if: always()
+      with:
+        name: Build Logs
+        path: artifacts/
+        if-no-files-found: error
diff --git a/.github/workflows/vm-tests.yaml b/.github/workflows/vm-tests.yaml
new file mode 100644
index 000000000000..ac74dec5789b
--- /dev/null
+++ b/.github/workflows/vm-tests.yaml
@@ -0,0 +1,71 @@
+name: VM Tests
+on:
+  push:
+
+jobs:
+  build:
+    runs-on: ${{ matrix.os }}
+    strategy:
+      fail-fast: false
+      matrix:
+        os: ['ubuntu-latest' ]
+        ARCH: [ 'arm', 'mips', 'x86', 'riscv', 'openrisc' ]
+    name: ARCH=${{ matrix.ARCH }} Test
+    steps:
+    - name: Checkout code
+      uses: actions/checkout@v2
+
+    - name: Setup Environment
+      run: |
+        sudo apt-get update -qq
+        sudo apt-get install -y --no-install-recommends libyaml-tiny-perl \
+            qemu-system-arm qemu-system-mips qemu-system-x86 qemu-system-common qemu-system-misc
+        curl --remote-name --location \
+            http://ftp.us.debian.org/debian/pool/main/e/edk2/ovmf_2020.11-4_all.deb
+        sudo dpkg -i ovmf_2020.11-4_all.deb
+        pushd /tmp
+        git clone --depth 1 https://github.com/labgrid-project/labgrid
+        pushd labgrid
+        pip3 install -r requirements.txt
+        sudo python3 setup.py install
+        sudo ln -s $(which pytest) /usr/local/bin/labgrid-pytest
+        #pip3 install tuxmake
+        popd
+        git clone --depth 1 https://gitlab.com/a3f/tuxmake
+        cd tuxmake
+        python3 -m pip install flit
+        flit install
+        popd
+        sudo apt install lzop
+        if [ "${{ matrix.ARCH }}" = "openrisc" ]; then
+            curl --remote-name --location \
+                https://github.com/stffrdhrn/gcc/releases/download/or1k-10.0.0-20190723/or1k-linux-10.0.0-20190723.tar.xz
+            pushd /usr/local
+            sudo tar -xf $OLDPWD/or1k-linux-10.0.0-20190723.tar.xz --strip 1
+            popd
+            sudo ln -s /usr/lib/x86_64-linux-gnu/libmpfr.so.6 /usr/lib/x86_64-linux-gnu/libmpfr.so.4
+        fi
+
+    - name: Build and Run Tests
+      run: |
+        NAME=${{ matrix.ARCH }}-{config}
+        OPTS="--kconfig-full --test -- --junitxml=$PWD/$NAME.tests.xml --lg-log=$PWD/log/$NAME"
+        if [ "${{ matrix.ARCH }}" != "openrisc" ]; then
+            OPTS="--runtime=podman $OPTS"
+        fi
+
+        ARCH=${{ matrix.ARCH }} ./test/emulate.pl $OPTS
+
+    - name: Publish Test Results
+      uses: EnricoMi/publish-unit-test-result-action@v1.11
+      if: always()
+      with:
+        files: ./*.tests.xml
+
+    - name: Publish Labgrid Log Results
+      uses: actions/upload-artifact@v2
+      if: always()
+      with:
+        name: Console Logs
+        path: log/
+        if-no-files-found: error
diff --git a/.gitignore b/.gitignore
index d7a37b3c9b39..ee67c725ba34 100644
--- a/.gitignore
+++ b/.gitignore
@@ -88,3 +88,5 @@ GTAGS
 /allrandom.config
 /allyes.config
 /compile_commands.json
+
+!.github/
diff --git a/test/kconfig/no-deps.cfg b/test/kconfig/no-deps.cfg
new file mode 100644
index 000000000000..98ffd398decc
--- /dev/null
+++ b/test/kconfig/no-deps.cfg
@@ -0,0 +1,3 @@
+# CONFIG_ARCH_IMX_USBLOADER is not set
+# CONFIG_OMAP3_USB_LOADER is not set
+# CONFIG_OMAP4_HOSTTOOL_USBBOOT is not set
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

