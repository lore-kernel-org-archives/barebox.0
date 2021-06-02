Delivery-date: Wed, 02 Jun 2021 14:03:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPb2-00026Q-JF
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 14:03:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPax-00036m-LN
	for lore@pengutronix.de; Wed, 02 Jun 2021 14:03:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HTTGKDohnO5Q15n8ghxvsLik0i1VCnWe50pV48/EbUw=; b=NgbDNt1rRbRess8w3USn9tvMDx
	073oUzYs1ulIgNvF7gm9sivZ152yshvW+9YrtbKB4GV9XZlmyLWSu8dHlkdwQGUK7F7E20F7dJn8l
	qe0Je+IAM3WWfNg5jkHE53Ditka9xVgvzHjJsZIuyLLgxoP3SPXCdwQd2LJ0MWdFFqYvl6HUSvJ0K
	XfWsy8X5cDprpzL2051EGC1p0tNgFFxV7i39KFoP2u6GKL6nbjr/1ymOWPQl38wpf3sjwoVG75B5a
	RGooBvILSlIxntrmW8+QNTLqekGHzPD4gQu5O0zonhj/jiwv5BHtAATtI6EyZHlDbgmvw45aplbtY
	F0ImKJhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loPZB-003sLQ-Iq; Wed, 02 Jun 2021 12:01:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loP8Z-003llE-IG
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 11:34:20 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1loP8Y-0007l7-Aw; Wed, 02 Jun 2021 13:34:14 +0200
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>,
 barebox@lists.infradead.org
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
 <20210531065520.12385-10-a.fatoum@pengutronix.de>
 <112a757cb42502e98b32afdcef02a08f6bad0613.camel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <3dbed042-67db-b299-f204-32303e29fdf4@pengutronix.de>
Date: Wed, 2 Jun 2021 13:34:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <112a757cb42502e98b32afdcef02a08f6bad0613.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_043416_010462_54422ECD 
X-CRM114-Status: GOOD (  18.93  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 09/13] test: add labgrid configs for some emulated
 targets
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 02.06.21 13:27, Rouven Czerwinski wrote:
> On Mon, 2021-05-31 at 08:55 +0200, Ahmad Fatoum wrote:
>> There are various ways barebox can run under emulation, some of them are
>> described in the documentation and some more in the git history.
>>
>> Make running the emulators more convenient to use by collecting some
>> known-good emulator invocations in a machine readable format.
>>
>> These YAML files can be parsed by labgrid for running tests or executed
>> by a new test/emulate.pl runner script that will be added in a follow-up
>> commit.
>>
>> Using labgrid for this will allow using the same test suite for physical
>> targets as well in future.
>>

> All of these targets use a Shelldriver, but it is used only to satisfy
> the BareboxStrategy. Scrap the ShellDriver and write a short strategy
> or scrap the strategy as well or wholesale remove strategy usage
> alltogether. Since all thats done is activating the BareboxDriver, this
> should be doable without a strategy.

1) I get by with copy-pasting. Can you point me to an example of how that
   strategy or lack thereof should look like?

2) I want to actually test boots later on, mainly barebox image booting
   another, but I coud imagine loading a FIT and booting that as well.
   In that case I would need the ShellDriver, so why do extra work to
   remove it and add it again later?

Cheers,
Ahmad

> 
>> +      BareboxStrategy: {}
>> +images:
>> +  barebox-vexpress-ca15.img: $LG_BUILDDIR/images/barebox-vexpress-ca15.img
>> +tools:
>> +  qemu: /usr/bin/qemu-system-arm
>> diff --git a/test/arm/a9@vexpress_defconfig.yaml b/test/arm/a9@vexpress_defconfig.yaml
>> new file mode 100644
>> index 000000000000..88e09ca052e6
>> --- /dev/null
>> +++ b/test/arm/a9@vexpress_defconfig.yaml
>> @@ -0,0 +1,23 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: vexpress-a9
>> +        cpu: cortex-a9
>> +        memory: 1024M
>> +        bios: barebox-vexpress-ca9.img
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +images:
>> +  barebox-vexpress-ca9.img: $LG_BUILDDIR/images/barebox-vexpress-ca9.img
>> +tools:
>> +  qemu: /usr/bin/qemu-system-arm
>> diff --git a/test/arm/qemu_virt64_defconfig.yaml b/test/arm/qemu_virt64_defconfig.yaml
>> new file mode 100644
>> index 000000000000..2dfaaedef61a
>> --- /dev/null
>> +++ b/test/arm/qemu_virt64_defconfig.yaml
>> @@ -0,0 +1,27 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: virt
>> +        cpu: cortex-a57
>> +        memory: 1024M
>> +        kernel: barebox-dt-2nd.img
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +    runner:
>> +      tuxmake_arch: arm64
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +tools:
>> +  qemu: /usr/bin/qemu-system-aarch64
>> diff --git a/test/arm/vexpress_defconfig.yaml b/test/arm/vexpress_defconfig.yaml
>> new file mode 120000
>> index 000000000000..732f51b19dc9
>> --- /dev/null
>> +++ b/test/arm/vexpress_defconfig.yaml
>> @@ -0,0 +1 @@
>> +a9@vexpress_defconfig.yaml
>> \ No newline at end of file
>> diff --git a/test/arm/virt@vexpress_defconfig.yaml b/test/arm/virt@vexpress_defconfig.yaml
>> new file mode 100644
>> index 000000000000..9c2e727c9cb5
>> --- /dev/null
>> +++ b/test/arm/virt@vexpress_defconfig.yaml
>> @@ -0,0 +1,25 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: virt
>> +        cpu: cortex-a7
>> +        memory: 1024M
>> +        kernel: barebox-dt-2nd.img
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +tools:
>> +  qemu: /usr/bin/qemu-system-arm
>> diff --git a/test/kconfig/virtio-pci.cfg b/test/kconfig/virtio-pci.cfg
>> new file mode 100644
>> index 000000000000..78237b8fca26
>> --- /dev/null
>> +++ b/test/kconfig/virtio-pci.cfg
>> @@ -0,0 +1,6 @@
>> +CONFIG_VIRTIO_MENU=y
>> +CONFIG_VIRTIO_PCI=y
>> +CONFIG_VIRTIO_CONSOLE=y
>> +CONFIG_VIRTIO_BLK=y
>> +CONFIG_HWRNG=y
>> +CONFIG_HW_RANDOM_VIRTIO=y
>> diff --git a/test/mips/be@qemu-malta_defconfig.yaml b/test/mips/be@qemu-malta_defconfig.yaml
>> new file mode 100644
>> index 000000000000..5217a6ec2a13
>> --- /dev/null
>> +++ b/test/mips/be@qemu-malta_defconfig.yaml
>> @@ -0,0 +1,25 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: malta
>> +        cpu: M14Kc
>> +        memory: 256M
>> +        bios: barebox-qemu-malta.img
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-pci
>> +images:
>> +  barebox-qemu-malta.img: $LG_BUILDDIR/images/barebox-qemu-malta.img
>> +tools:
>> +  qemu: /usr/bin/qemu-system-mips
>> diff --git a/test/mips/le@qemu-malta_defconfig.yaml b/test/mips/le@qemu-malta_defconfig.yaml
>> new file mode 100644
>> index 000000000000..3b0f557dde5b
>> --- /dev/null
>> +++ b/test/mips/le@qemu-malta_defconfig.yaml
>> @@ -0,0 +1,28 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: malta
>> +        cpu: M14Kc
>> +        memory: 256M
>> +        bios: barebox-qemu-malta.img.swapped
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-pci
>> +    runner:
>> +      kconfig_add:
>> +        - CONFIG_CPU_LITTLE_ENDIAN=y
>> +images:
>> +  barebox-qemu-malta.img.swapped: $LG_BUILDDIR/images/barebox-qemu-malta.img.swapped
>> +tools:
>> +  qemu: /usr/bin/qemu-system-mipsel
>> diff --git a/test/mips/qemu-malta_defconfig.yaml b/test/mips/qemu-malta_defconfig.yaml
>> new file mode 120000
>> index 000000000000..481b6e547782
>> --- /dev/null
>> +++ b/test/mips/qemu-malta_defconfig.yaml
>> @@ -0,0 +1 @@
>> +be@qemu-malta_defconfig.yaml
>> \ No newline at end of file
>> diff --git a/test/openrisc/generic_defconfig.yaml b/test/openrisc/generic_defconfig.yaml
>> new file mode 100644
>> index 000000000000..ece54da1c191
>> --- /dev/null
>> +++ b/test/openrisc/generic_defconfig.yaml
>> @@ -0,0 +1,23 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: or1k-sim
>> +        cpu: or1200
>> +        memory: 256M
>> +        kernel: barebox
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +images:
>> +  barebox: $LG_BUILDDIR/barebox
>> +tools:
>> +  qemu: /usr/bin/qemu-system-or1k
>> diff --git a/test/riscv/qemu@virt32_defconfig.yaml b/test/riscv/qemu@virt32_defconfig.yaml
>> new file mode 100644
>> index 000000000000..d879ac6880a7
>> --- /dev/null
>> +++ b/test/riscv/qemu@virt32_defconfig.yaml
>> @@ -0,0 +1,30 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: virt
>> +        cpu: rv32
>> +        memory: 256M
>> +        kernel: barebox-dt-2nd.img
>> +        bios: opensbi-riscv32-generic-fw_dynamic.bin
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +    runner:
>> +      download:
>> +        opensbi-riscv32-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv32-generic-fw_dynamic.bin?raw=true
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +  opensbi-riscv32-generic-fw_dynamic.bin: $LG_BUILDDIR/opensbi-riscv32-generic-fw_dynamic.bin
>> +tools:
>> +  qemu: /usr/bin/qemu-system-riscv32
>> diff --git a/test/riscv/qemu@virt64_defconfig.yaml b/test/riscv/qemu@virt64_defconfig.yaml
>> new file mode 100644
>> index 000000000000..5102f9067e1b
>> --- /dev/null
>> +++ b/test/riscv/qemu@virt64_defconfig.yaml
>> @@ -0,0 +1,30 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: virt
>> +        cpu: rv64
>> +        memory: 256M
>> +        kernel: barebox-dt-2nd.img
>> +        bios: opensbi-riscv64-generic-fw_dynamic.bin
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +    runner:
>> +      download:
>> +        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +  opensbi-riscv64-generic-fw_dynamic.bin: $LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin
>> +tools:
>> +  qemu: /usr/bin/qemu-system-riscv64
>> diff --git a/test/riscv/sifive_defconfig.yaml b/test/riscv/sifive_defconfig.yaml
>> new file mode 100644
>> index 000000000000..534d7b8b044a
>> --- /dev/null
>> +++ b/test/riscv/sifive_defconfig.yaml
>> @@ -0,0 +1,28 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: sifive_u
>> +        cpu: sifive-u54
>> +        memory: 256M
>> +        kernel: barebox-hifive-unleashed.img
>> +        bios: opensbi-riscv64-generic-fw_dynamic.bin
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    runner:
>> +      download:
>> +        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
>> +images:
>> +  barebox-hifive-unleashed.img: $LG_BUILDDIR/images/barebox-hifive-unleashed.img
>> +  opensbi-riscv64-generic-fw_dynamic.bin: $LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin
>> +tools:
>> +  qemu: /usr/bin/qemu-system-riscv64
>> diff --git a/test/riscv/tinyemu@virt32_defconfig.yaml b/test/riscv/tinyemu@virt32_defconfig.yaml
>> new file mode 100644
>> index 000000000000..807a8ce47145
>> --- /dev/null
>> +++ b/test/riscv/tinyemu@virt32_defconfig.yaml
>> @@ -0,0 +1,25 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      TinyEMUDriver:
>> +        temu_bin: temu
>> +        config: ./Documentation/boards/riscv/barebox-virt32.cfg
>> +        image: barebox-dt-2nd.img
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +    runner:
>> +      download:
>> +        bbl32.bin: https://barebox.org/jsbarebox/bbl32.bin
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +tools:
>> +  temu: /usr/local/bin/temu
>> diff --git a/test/riscv/tinyemu@virt64_defconfig.yaml b/test/riscv/tinyemu@virt64_defconfig.yaml
>> new file mode 100644
>> index 000000000000..58277d1ce0dc
>> --- /dev/null
>> +++ b/test/riscv/tinyemu@virt64_defconfig.yaml
>> @@ -0,0 +1,25 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      TinyEMUDriver:
>> +        temu_bin: temu
>> +        config: ./Documentation/boards/riscv/barebox-virt64.cfg
>> +        image: barebox-dt-2nd.img
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-mmio
>> +    runner:
>> +      download:
>> +        bbl64.bin: https://barebox.org/jsbarebox/bbl64.bin
>> +images:
>> +  barebox-dt-2nd.img: $LG_BUILDDIR/images/barebox-dt-2nd.img
>> +tools:
>> +  temu: /usr/local/bin/temu
>> diff --git a/test/riscv/virt32_defconfig.yaml b/test/riscv/virt32_defconfig.yaml
>> new file mode 120000
>> index 000000000000..e9d7237f5339
>> --- /dev/null
>> +++ b/test/riscv/virt32_defconfig.yaml
>> @@ -0,0 +1 @@
>> +qemu@virt32_defconfig.yaml
>> \ No newline at end of file
>> diff --git a/test/riscv/virt64_defconfig.yaml b/test/riscv/virt64_defconfig.yaml
>> new file mode 120000
>> index 000000000000..ab419d5e7fb4
>> --- /dev/null
>> +++ b/test/riscv/virt64_defconfig.yaml
>> @@ -0,0 +1 @@
>> +qemu@virt64_defconfig.yaml
>> \ No newline at end of file
>> diff --git a/test/sandbox/sandbox_defconfig.yaml b/test/sandbox/sandbox_defconfig.yaml
>> new file mode 100644
>> index 000000000000..68826e8b5830
>> --- /dev/null
>> +++ b/test/sandbox/sandbox_defconfig.yaml
>> @@ -0,0 +1,12 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      NativeExecutableDriver:
>> +        command: ./barebox
>> +        image: barebox
>> +    runner:
>> +      tuxmake_arch: um
>> +images:
>> +  barebox: $LG_BUILDDIR/barebox
>> +tools:
>> +  qemu: /usr/local/bin/temu
>> diff --git a/test/x86/efi_defconfig.yaml b/test/x86/efi_defconfig.yaml
>> new file mode 120000
>> index 000000000000..942dc259d56b
>> --- /dev/null
>> +++ b/test/x86/efi_defconfig.yaml
>> @@ -0,0 +1 @@
>> +pc@efi_defconfig.yaml
>> \ No newline at end of file
>> diff --git a/test/x86/pc@efi_defconfig.yaml b/test/x86/pc@efi_defconfig.yaml
>> new file mode 100644
>> index 000000000000..923b0680fff2
>> --- /dev/null
>> +++ b/test/x86/pc@efi_defconfig.yaml
>> @@ -0,0 +1,34 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: pc
>> +        cpu: Nehalem
>> +        memory: 1024M
>> +        kernel: barebox.efi
>> +        bios: OVMF.fd
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - pci
>> +    runner:
>> +      tuxmake_arch: x86_64
>> +      kconfig_add:
>> +        - CONFIG_DRIVER_SERIAL_NS16550=y
>> +        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
>> +      download:
>> +        OVMF.fd: /usr/share/qemu/OVMF.fd
>> +images:
>> +  barebox.efi: $LG_BUILDDIR/barebox.efi
>> +  OVMF.fd: $LG_BUILDDIR/OVMF.fd
>> +tools:
>> +  qemu: /usr/bin/qemu-system-x86_64
>> diff --git a/test/x86/q35@efi_defconfig.yaml b/test/x86/q35@efi_defconfig.yaml
>> new file mode 100644
>> index 000000000000..1cfbd9fd88e3
>> --- /dev/null
>> +++ b/test/x86/q35@efi_defconfig.yaml
>> @@ -0,0 +1,34 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: q35
>> +        cpu: Nehalem
>> +        memory: 1024M
>> +        kernel: barebox.efi
>> +        bios: OVMF.fd
>> +        extra_args: -global ICH9-LPC.noreboot=false
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - pci
>> +    runner:
>> +        tuxmake_arch: x86_64
>> +        kconfig_add:
>> +            - CONFIG_DRIVER_SERIAL_NS16550=y
>> +            - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
>> +        download:
>> +            OVMF.fd: /usr/share/qemu/OVMF.fd
>> +images:
>> +  barebox.efi: $LG_BUILDDIR/barebox.efi
>> +  OVMF.fd: $LG_BUILDDIR/OVMF.fd
>> +tools:
>> +  qemu: /usr/bin/qemu-system-x86_64
>> diff --git a/test/x86/virtio@efi_defconfig.yaml b/test/x86/virtio@efi_defconfig.yaml
>> new file mode 100644
>> index 000000000000..3c9a9ae51e23
>> --- /dev/null
>> +++ b/test/x86/virtio@efi_defconfig.yaml
>> @@ -0,0 +1,35 @@
>> +targets:
>> +  main:
>> +    drivers:
>> +      QEMUDriver:
>> +        qemu_bin: qemu
>> +        machine: pc
>> +        cpu: Nehalem
>> +        memory: 1024M
>> +        kernel: barebox.efi
>> +        bios: OVMF.fd
>> +        extra_args: ''
>> +      BareboxDriver:
>> +        prompt: 'barebox@[^:]+:[^ ]+ '
>> +        bootstring: 'commandline:'
>> +      ShellDriver:
>> +        prompt: 'root@\w+:[^ ]+ '
>> +        login_prompt: ' login: '
>> +        login_timeout: 90
>> +        username: 'root'
>> +      BareboxStrategy: {}
>> +    features:
>> +      - virtio-pci
>> +    runner:
>> +      tuxmake_arch: x86_64
>> +      kconfig_add:
>> +        - test/kconfig/virtio-pci.cfg
>> +        - CONFIG_DRIVER_SERIAL_NS16550=y
>> +        - CONFIG_CONSOLE_ACTIVATE_FIRST=y # avoid duplicate output
>> +      download:
>> +        OVMF.fd: /usr/share/qemu/OVMF.fd
>> +images:
>> +  barebox.efi: $LG_BUILDDIR/barebox.efi
>> +  OVMF.fd: $LG_BUILDDIR/OVMF.fd
>> +tools:
>> +  qemu: /usr/bin/qemu-system-x86_64
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

